.class public Lcom/android/server/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StatusBarManagerService$NotificationCallbacks;,
        Lcom/android/server/StatusBarManagerService$DisableRecord;
    }
.end annotation


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final ANDROID_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final BRIDGE:Ljava/lang/String; = "com.sec.knox.bridge"

.field static final CHATON:Ljava/lang/String; = "com.sec.chaton"

.field static final EMAIL:Ljava/lang/String; = "com.android.email"

.field private static final ENABLE_DENIAL_LOG:Ljava/lang/String; = "com.sec.esdk.elm"

.field static final FACEBOOK:Ljava/lang/String; = "com.facebook.katana"

.field static final GET_ALL_NOTIFICATIONS_INTENT:Ljava/lang/String; = "com.system.action.GET_ALL_NOTIFICATIONS"

.field static final GMAIL:Ljava/lang/String; = "com.google.android.gm"

.field static final GOOGLEPLUS:Ljava/lang/String; = "com.google.android.apps.plus"

.field static final GOOGLETALK:Ljava/lang/String; = "com.google.android.gsf"

.field static final KAKAOTALK:Ljava/lang/String; = "com.kakao.talk"

.field private static final KEYGUARD:Ljava/lang/String; = "com.android.keyguard"

.field public static final NOTIFICATION_CONTENT_INTENT_PRESENT:Ljava/lang/String; = "notification_content_intent_present"

.field public static final NOTIFICATION_DELETE_INTENT_PRESENT:Ljava/lang/String; = "notification_delete_intent_present"

.field static final NOTIFICATION_FIELD_DISABLE_STATUS_BAR_OPEN:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Disable"

.field static final NOTIFICATION_FIELD_KEY:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Key"

.field static final NOTIFICATION_FIELD_NOTIFICATION:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Notification"

.field static final NOTIFICATION_FIELD_TYPE:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Type"

.field public static final NOTIFICATION_ID_KEY:Ljava/lang/String; = "notification_id"

.field static final NOTIFICATION_INTENT:Ljava/lang/String; = "com.system.action.NOTIFICATION"

.field public static final NOTIFICATION_KEY:Ljava/lang/String; = "notification"

.field public static final NOTIFICATION_PACKAGE_KEY:Ljava/lang/String; = "notification_package"

.field public static final NOTIFICATION_PID_KEY:Ljava/lang/String; = "notification_pid"

.field static final NOTIFICATION_READ_PERMISSIONS:Ljava/lang/String; = "com.system.permission.READ_NOTIFICATIONS"

.field public static final NOTIFICATION_SCORE_KEY:Ljava/lang/String; = "notification_score"

.field public static final NOTIFICATION_TAG_KEY:Ljava/lang/String; = "notification_tag"

.field static final NOTIFICATION_TYPE_ADD:I = 0x1

.field static final NOTIFICATION_TYPE_REFRESH:I = 0x4

.field static final NOTIFICATION_TYPE_REMOVE:I = 0x3

.field static final NOTIFICATION_TYPE_UPDATE:I = 0x2

.field public static final NOTIFICATION_UID_KEY:Ljava/lang/String; = "notification_uid"

.field static final PACKAGE_FILTER:[Ljava/lang/String;

.field static final PACKAGE_FILTER2:[Ljava/lang/String;

.field private static final SD_CARD:Ljava/lang/String; = "com.android.systemui"

.field static final SMS:Ljava/lang/String; = "com.android.mms"

.field static final SPEW:Z = false

.field private static final S_PEN:Ljava/lang/String; = "com.sec.android.pagebuddynotisvc"

.field static final TAG:Ljava/lang/String; = "StatusBarManagerService"

.field static final TWITTER:Ljava/lang/String; = "com.twitter.android"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-StatusBarManagerService"

.field public static final VERSION_KEY:Ljava/lang/String; = "version"


# instance fields
.field volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field mDisableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field mDisabled:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mHandler:Landroid/os/Handler;

.field mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

.field mImeBackDisposition:I

.field mImeToken:Landroid/os/IBinder;

.field mImeWindowVis:I

.field mLock:Ljava/lang/Object;

.field mMenuVisible:Z

.field mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelExpandState:Z

.field private mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

.field mSysUiVisToken:Landroid/os/IBinder;

.field mSystemUiVisibility:I

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1036
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.twitter.android"

    aput-object v1, v0, v3

    const-string v1, "com.sec.chaton"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.apps.plus"

    aput-object v1, v0, v5

    const-string v1, "com.android.mms"

    aput-object v1, v0, v6

    const-string v1, "com.google.android.gm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.kakao.talk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.facebook.katana"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.google.android.gsf"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/StatusBarManagerService;->PACKAGE_FILTER:[Ljava/lang/String;

    .line 1081
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.pagebuddynotisvc"

    aput-object v1, v0, v4

    const-string v1, "com.android.systemui"

    aput-object v1, v0, v5

    const-string v1, "com.sec.esdk.elm"

    aput-object v1, v0, v6

    const-string v1, "com.android.settings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.sec.knox.bridge"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.keyguard"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/StatusBarManagerService;->PACKAGE_FILTER2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 148
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 87
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v2}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    .line 94
    iput-object v4, p0, Lcom/android/server/StatusBarManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 108
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 109
    iput v3, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    .line 111
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 113
    iput v3, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    .line 114
    iput-boolean v3, p0, Lcom/android/server/StatusBarManagerService;->mMenuVisible:Z

    .line 115
    iput v3, p0, Lcom/android/server/StatusBarManagerService;->mImeWindowVis:I

    .line 117
    iput-object v4, p0, Lcom/android/server/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 120
    iput-boolean v3, p0, Lcom/android/server/StatusBarManagerService;->mPanelExpandState:Z

    .line 862
    new-instance v2, Lcom/android/server/StatusBarManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/StatusBarManagerService$7;-><init>(Lcom/android/server/StatusBarManagerService;)V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 894
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    .line 895
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 149
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 151
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    const v3, 0x107000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->defineSlots([Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.system.action.GET_ALL_NOTIFICATIONS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.system.permission.READ_NOTIFICATIONS"

    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/StatusBarManagerService;IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/StatusBarManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/IBinder;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/StatusBarManagerService;->disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/StatusBarManagerService;ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/StatusBarManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method private disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 224
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 226
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private disableLocked(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 237
    iget v1, p0, Lcom/android/server/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/StatusBarManagerService;->gatherDisableActionsLocked(I)I

    move-result v0

    .line 238
    .local v0, "net":I
    iget v1, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    if-eq v0, v1, :cond_22

    .line 239
    iput v0, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    .line 240
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/StatusBarManagerService$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/StatusBarManagerService$1;-><init>(Lcom/android/server/StatusBarManagerService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_22

    .line 247
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->disable(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23

    .line 252
    :cond_22
    :goto_22
    return-void

    .line 248
    :catch_23
    move-exception v1

    goto :goto_22
.end method

.method private enforceExpandStatusBar()V
    .registers 4

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method private enforceStatusBar()V
    .registers 4

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method private enforceStatusBarService()V
    .registers 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method private getService()Landroid/app/enterprise/IRestrictionPolicy;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v0, :cond_10

    .line 99
    const-string v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    .line 102
    :cond_10
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    return-object v0
.end method

.method private notificationMatches(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "nt"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 993
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    if-ne v0, p4, :cond_20

    if-eqz p2, :cond_20

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p3, :cond_20

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .registers 12
    .param p1, "notificationType"    # I
    .param p2, "key"    # Landroid/os/IBinder;
    .param p3, "nt"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 938
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 940
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 942
    const-string v3, "notification_id"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 943
    const-string v3, "notification_package"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v3, "notification_tag"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v3, "notification_uid"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 946
    const-string v3, "notification_pid"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 947
    const-string v3, "notification_score"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 948
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_7d

    .line 949
    const-string v6, "notification_delete_intent_present"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_10f

    move v3, v4

    :goto_54
    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 951
    const-string v6, "notification_content_intent_present"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_112

    move v3, v4

    :goto_62
    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 953
    const-string v3, "notification"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 954
    const-string v3, "android.largeIcon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 955
    const-string v3, "android.largeIcon.big"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 956
    const-string v3, "android.picture"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 959
    :cond_7d
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.system.action.NOTIFICATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.system.notification.DashNotificationManagerService.Type"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    const-string v3, "com.system.notification.DashNotificationManagerService.Notification"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 963
    const-string v3, "com.system.notification.DashNotificationManagerService.Disable"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->isDisabledStatusBarOpenOnFullScreen()Z

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 965
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v6, "com.system.permission.READ_NOTIFICATIONS"

    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 967
    const-string v3, "STATUSBAR-StatusBarManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendNotification("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 972
    .local v0, "flagdbg":Ljava/lang/StringBuilder;
    if-ne p1, v4, :cond_115

    .line 973
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : ADD("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    :cond_ff
    :goto_ff
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_186

    .line 983
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_ff

    .end local v0    # "flagdbg":Ljava/lang/StringBuilder;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_10f
    move v3, v5

    .line 949
    goto/16 :goto_54

    :cond_112
    move v3, v5

    .line 951
    goto/16 :goto_62

    .line 975
    .restart local v0    # "flagdbg":Ljava/lang/StringBuilder;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_115
    const/4 v3, 0x2

    if-ne p1, v3, :cond_14d

    .line 976
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : UPDATE("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ff

    .line 978
    :cond_14d
    const/4 v3, 0x3

    if-ne p1, v3, :cond_ff

    .line 979
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : REMOVE("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ff

    .line 990
    :cond_186
    return-void
.end method

.method private updateUiVisibilityLocked(II)V
    .registers 5
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 406
    iget v0, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    if-eq v0, p1, :cond_10

    .line 407
    iput p1, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    .line 408
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/StatusBarManagerService$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/StatusBarManagerService$4;-><init>(Lcom/android/server/StatusBarManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    :cond_10
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;)Landroid/os/IBinder;
    .registers 5
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    .line 644
    :try_start_3
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 645
    .local v0, "key":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1c

    if-eqz v1, :cond_16

    .line 648
    :try_start_11
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_1f
    .catchall {:try_start_11 .. :try_end_16} :catchall_1c

    .line 654
    :cond_16
    :goto_16
    const/4 v1, 0x1

    :try_start_17
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/StatusBarManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    .line 656
    monitor-exit v2

    return-object v0

    .line 657
    .end local v0    # "key":Landroid/os/IBinder;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw v1

    .line 649
    .restart local v0    # "key":Landroid/os/IBinder;
    :catch_1f
    move-exception v1

    goto :goto_16
.end method

.method public applyEDMPolicy()V
    .registers 2

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 396
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 398
    :try_start_7
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->applyEDMPolicy()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 402
    :cond_c
    :goto_c
    return-void

    .line 399
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public blockRecentWindow(Z)V
    .registers 5
    .param p1, "block"    # Z

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 1153
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_24

    .line 1155
    :try_start_7
    const-string v0, "StatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockRecentWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->blockRecentWindow(Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_24} :catch_25

    .line 1160
    :cond_24
    :goto_24
    return-void

    .line 1157
    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method public cancelPreloadRecentApps()V
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 465
    :try_start_4
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 468
    :cond_9
    :goto_9
    return-void

    .line 466
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public collapsePanels()V
    .registers 2

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 188
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 190
    :try_start_7
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 194
    :cond_c
    :goto_c
    return-void

    .line 191
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 218
    iget v0, p0, Lcom/android/server/StatusBarManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public disableAsUser(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/StatusBarManagerService;->disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 802
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_33

    .line 804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    :goto_32
    return-void

    .line 810
    :cond_33
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v6

    .line 811
    :try_start_36
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v5, p2}, Lcom/android/internal/statusbar/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    .line 812
    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_7a

    .line 814
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v6

    .line 815
    const/4 v2, 0x0

    .line 816
    .local v2, "i":I
    :try_start_40
    const-string v5, "Notification list:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 818
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    const-string v7, "  %2d: %s\n"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_77
    .catchall {:try_start_40 .. :try_end_77} :catchall_111

    .line 819
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 812
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_7a
    move-exception v5

    :try_start_7b
    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v5

    .line 821
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_7d
    :try_start_7d
    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_111

    .line 823
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 824
    :try_start_81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisabled=0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 826
    .local v0, "N":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisableRecords.size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    const/4 v2, 0x0

    :goto_ba
    if-ge v2, v0, :cond_114

    .line 828
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .line 829
    .local v4, "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] userId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->userId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " what=0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " token="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_81 .. :try_end_10e} :catchall_162

    .line 827
    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    .line 821
    .end local v0    # "N":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :catchall_111
    move-exception v5

    :try_start_112
    monitor-exit v6
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw v5

    .line 834
    .restart local v0    # "N":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_114
    :try_start_114
    monitor-exit v6
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_162

    .line 840
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 841
    :try_start_118
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 842
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisableList.size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    const/4 v2, 0x0

    :goto_135
    if-ge v2, v0, :cond_165

    .line 844
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 845
    .local v4, "tok":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15f
    .catchall {:try_start_118 .. :try_end_15f} :catchall_1b3

    .line 843
    add-int/lit8 v2, v2, 0x1

    goto :goto_135

    .line 834
    .end local v0    # "N":I
    .end local v4    # "tok":Ljava/lang/String;
    :catchall_162
    move-exception v5

    :try_start_163
    monitor-exit v6
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_162

    throw v5

    .line 847
    .restart local v0    # "N":I
    :cond_165
    :try_start_165
    monitor-exit v6
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_1b3

    .line 848
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 849
    :try_start_169
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mNotificationList.size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    const/4 v2, 0x0

    :goto_186
    if-ge v2, v0, :cond_1b6

    .line 852
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 853
    .restart local v4    # "tok":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b0
    .catchall {:try_start_169 .. :try_end_1b0} :catchall_1b9

    .line 851
    add-int/lit8 v2, v2, 0x1

    goto :goto_186

    .line 847
    .end local v4    # "tok":Ljava/lang/String;
    :catchall_1b3
    move-exception v5

    :try_start_1b4
    monitor-exit v6
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b3

    throw v5

    .line 855
    :cond_1b6
    :try_start_1b6
    monitor-exit v6

    goto/16 :goto_32

    :catchall_1b9
    move-exception v5

    monitor-exit v6
    :try_end_1bb
    .catchall {:try_start_1b6 .. :try_end_1bb} :catchall_1b9

    throw v5
.end method

.method public expandNotificationsPanel()V
    .registers 2

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 173
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_15

    .line 175
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_10

    .line 176
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    .line 179
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    .line 183
    :cond_15
    :goto_15
    return-void

    .line 180
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public expandSettingsPanel()V
    .registers 2

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 199
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_15

    .line 201
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_10

    .line 202
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    .line 205
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    .line 209
    :cond_15
    :goto_15
    return-void

    .line 206
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method gatherDisableActionsLocked(I)I
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 773
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 775
    .local v0, "N":I
    const/4 v4, 0x0

    .line 776
    .local v4, "net":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v0, :cond_1c

    .line 777
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .line 778
    .local v5, "rec":Lcom/android/server/StatusBarManagerService$DisableRecord;
    iget v6, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v6, p1, :cond_19

    .line 779
    iget v6, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    or-int/2addr v4, v6

    .line 776
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 783
    .end local v5    # "rec":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_1c
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 786
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :try_start_26
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->getService()Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v6

    if-eqz v6, :cond_35

    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v7, 0x1

    invoke-interface {v6, v7, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v6

    if-eqz v6, :cond_41

    :cond_35
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_3e} :catch_45

    move-result v6

    if-eqz v6, :cond_44

    .line 788
    :cond_41
    const/high16 v6, 0x10000

    or-int/2addr v4, v6

    .line 794
    :cond_44
    :goto_44
    return v4

    .line 790
    :catch_45
    move-exception v1

    .line 791
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "StatusBarManagerService"

    const-string v7, "Failed talking with restriction policy"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method

.method public getAllNotifications()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1059
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.system.permission.READ_NOTIFICATIONS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 1060
    iget-object v4, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v4

    .line 1061
    :try_start_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v2, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 1064
    .local v1, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/StatusBarManagerService;->isNotificationAllowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1065
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1069
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "notification":Landroid/service/notification/StatusBarNotification;
    .end local v2    # "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :catchall_33
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v3

    .line 1068
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :cond_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    return-object v2
.end method

.method public getAllNotificationsForBridge(Z)Ljava/util/List;
    .registers 13
    .param p1, "includeCallingUserNotifs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1096
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 1098
    .local v6, "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_118

    .line 1099
    invoke-static {}, Lcom/android/server/StatusBarManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1100
    .local v0, "callingUser":Landroid/os/UserHandle;
    const-string v8, "StatusBarManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllNotifications() get all of the notifications "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_be

    const-string v7, ""

    :goto_2d
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v8, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v8

    .line 1105
    :try_start_3b
    iget-object v7, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_45
    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1107
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    .line 1108
    .local v5, "n":Landroid/service/notification/StatusBarNotification;
    const-string v7, "StatusBarManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UserHandle for notif = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/android/server/StatusBarManagerService;->PACKAGE_FILTER2:[Ljava/lang/String;

    invoke-virtual {p0, v7, v9}, Lcom/android/server/StatusBarManagerService;->isNotificationAllowed(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 1117
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    const/4 v9, 0x0

    iput-object v9, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1118
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v2, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1119
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_9d

    .line 1120
    const-string v7, "android.largeIcon"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1121
    const-string v7, "android.largeIcon.big"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1122
    const-string v7, "android.picture"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1125
    :cond_9d
    if-eqz p1, :cond_d4

    .line 1126
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    const-string v7, "StatusBarManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "added notif = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 1136
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "n":Landroid/service/notification/StatusBarNotification;
    :catchall_bb
    move-exception v7

    monitor-exit v8
    :try_end_bd
    .catchall {:try_start_3b .. :try_end_bd} :catchall_bb

    throw v7

    .line 1100
    :cond_be
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "that do NOT pertain to userHandle = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2d

    .line 1131
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "n":Landroid/service/notification/StatusBarNotification;
    :cond_d4
    :try_start_d4
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 1132
    const-string v7, "StatusBarManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "added notif = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_45

    .line 1136
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v5    # "n":Landroid/service/notification/StatusBarNotification;
    :cond_fb
    monitor-exit v8
    :try_end_fc
    .catchall {:try_start_d4 .. :try_end_fc} :catchall_bb

    .line 1137
    const-string v7, "StatusBarManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllNotifications() size of list to return == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    .end local v0    # "callingUser":Landroid/os/UserHandle;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_118
    return-object v4
.end method

.method public getPanelExpandState()Z
    .registers 2

    .prologue
    .line 1148
    iget-boolean v0, p0, Lcom/android/server/StatusBarManagerService;->mPanelExpandState:Z

    return v0
.end method

.method public hideCallView()V
    .registers 2

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 545
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 547
    :try_start_7
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->hideCallOnGoingView()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 551
    :cond_c
    :goto_c
    return-void

    .line 548
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method isNotificationAllowed(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1049
    sget-object v0, Lcom/android/server/StatusBarManagerService;->PACKAGE_FILTER:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 1050
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1051
    const/4 v4, 0x1

    .line 1054
    .end local v3    # "pkg":Ljava/lang/String;
    :goto_f
    return v4

    .line 1049
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1054
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method isNotificationAllowed(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "PKG_FILTER"    # [Ljava/lang/String;

    .prologue
    .line 1086
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 1087
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1088
    const/4 v4, 0x0

    .line 1091
    .end local v3    # "pkg":Ljava/lang/String;
    :goto_e
    return v4

    .line 1086
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1091
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x1

    goto :goto_e
.end method

.method public isScreenCaptureEnabled()Z
    .registers 2

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 560
    const/4 v0, 0x1

    return v0
.end method

.method public isStatusBarExpandEnabled()Z
    .registers 3

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 568
    const/high16 v0, 0x10000

    iget v1, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    and-int/2addr v0, v1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 707
    const-string v6, "STATUSBAR-StatusBarManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "manageDisableList what=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .local v2, "flagdbg":Ljava/lang/StringBuilder;
    const/high16 v6, 0x10000

    and-int/2addr v6, p2

    if-eqz v6, :cond_c7

    const-string v6, "EXPAND "

    :goto_33
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const/high16 v6, 0x20000

    and-int/2addr v6, p2

    if-eqz v6, :cond_cb

    const-string v6, "ICONS "

    :goto_3d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const/high16 v6, 0x40000

    and-int/2addr v6, p2

    if-eqz v6, :cond_cf

    const-string v6, "ALERTS "

    :goto_47
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const/high16 v6, 0x80000

    and-int/2addr v6, p2

    if-eqz v6, :cond_d3

    const-string v6, "TICKER "

    :goto_51
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const/high16 v6, 0x100000

    and-int/2addr v6, p2

    if-eqz v6, :cond_d7

    const-string v6, "SYSTEM_INFO "

    :goto_5b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const/high16 v6, 0x400000

    and-int/2addr v6, p2

    if-eqz v6, :cond_da

    const-string v6, "BACK "

    :goto_65
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const/high16 v6, 0x200000

    and-int/2addr v6, p2

    if-eqz v6, :cond_dd

    const-string v6, "HOME "

    :goto_6f
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    const/high16 v6, 0x1000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_e0

    const-string v6, "RECENT "

    :goto_79
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const/high16 v6, 0x800000

    and-int/2addr v6, p2

    if-eqz v6, :cond_e3

    const-string v6, "CLOCK "

    :goto_83
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const/high16 v6, 0x2000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_e6

    const-string v6, "SEARCH "

    :goto_8d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    if-nez p2, :cond_97

    .line 726
    const-string v6, "CLEAR"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :cond_97
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    :goto_b7
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_e9

    .line 730
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b7

    .line 715
    :cond_c7
    const-string v6, ""

    goto/16 :goto_33

    .line 716
    :cond_cb
    const-string v6, ""

    goto/16 :goto_3d

    .line 717
    :cond_cf
    const-string v6, ""

    goto/16 :goto_47

    .line 718
    :cond_d3
    const-string v6, ""

    goto/16 :goto_51

    .line 719
    :cond_d7
    const-string v6, ""

    goto :goto_5b

    .line 720
    :cond_da
    const-string v6, ""

    goto :goto_65

    .line 721
    :cond_dd
    const-string v6, ""

    goto :goto_6f

    .line 722
    :cond_e0
    const-string v6, ""

    goto :goto_79

    .line 723
    :cond_e3
    const-string v6, ""

    goto :goto_83

    .line 724
    :cond_e6
    const-string v6, ""

    goto :goto_8d

    .line 738
    :cond_e9
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 739
    .local v0, "N":I
    const/4 v5, 0x0

    .line 741
    .local v5, "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f1
    if-ge v3, v0, :cond_104

    .line 742
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .line 743
    .local v4, "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    iget-object v6, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v6, p3, :cond_119

    iget v6, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v6, p1, :cond_119

    .line 744
    move-object v5, v4

    .line 748
    .end local v4    # "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_104
    if-eqz p2, :cond_10c

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_11c

    .line 749
    :cond_10c
    if-eqz v5, :cond_118

    .line 750
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 751
    iget-object v6, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v6, v5, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 769
    :cond_118
    :goto_118
    return-void

    .line 741
    .restart local v4    # "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_119
    add-int/lit8 v3, v3, 0x1

    goto :goto_f1

    .line 754
    .end local v4    # "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_11c
    if-nez v5, :cond_12f

    .line 755
    new-instance v5, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .end local v5    # "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V

    .line 756
    .restart local v5    # "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    iput p1, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->userId:I

    .line 758
    const/4 v6, 0x0

    :try_start_127
    invoke-interface {p3, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12a
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_12a} :catch_136

    .line 763
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_12f
    iput p2, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    .line 766
    iput-object p3, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 767
    iput-object p4, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_118

    .line 760
    :catch_136
    move-exception v1

    .line 761
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_118
.end method

.method public onClearAllNotifications()V
    .registers 2

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 636
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onClearAll()V

    .line 637
    return-void
.end method

.method public onHardKeyboardStatusChange(ZZ)V
    .registers 5
    .param p1, "available"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/StatusBarManagerService$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/StatusBarManagerService$6;-><init>(Lcom/android/server/StatusBarManagerService;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    return-void
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 630
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V

    .line 631
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 616
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 617
    return-void
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 624
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 625
    return-void
.end method

.method public onPanelRevealed()V
    .registers 2

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 610
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onPanelRevealed()V

    .line 611
    return-void
.end method

.method public preloadRecentApps()V
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 456
    :try_start_4
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 459
    :cond_9
    :goto_9
    return-void

    .line 457
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    .registers 14
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p5, "switches"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "notificationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .local p4, "notifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .local p6, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 577
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 579
    const-string v2, "StatusBarManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerStatusBar bar="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 581
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v5

    .line 582
    :try_start_22
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {p2, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V

    .line 583
    monitor-exit v5
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_53

    .line 584
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v5

    .line 585
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 586
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 589
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_50
    move-exception v2

    monitor-exit v5
    :try_end_52
    .catchall {:try_start_2b .. :try_end_52} :catchall_50

    throw v2

    .line 583
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v5
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2

    .line 589
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_56
    :try_start_56
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_50

    .line 590
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 591
    const/4 v2, 0x0

    :try_start_5b
    iget v6, p0, Lcom/android/server/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v6}, Lcom/android/server/StatusBarManagerService;->gatherDisableActionsLocked(I)I

    move-result v6

    aput v6, p5, v2

    .line 592
    const/4 v2, 0x1

    iget v6, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    aput v6, p5, v2

    .line 593
    const/4 v6, 0x2

    iget-boolean v2, p0, Lcom/android/server/StatusBarManagerService;->mMenuVisible:Z

    if-eqz v2, :cond_98

    move v2, v3

    :goto_6e
    aput v2, p5, v6

    .line 594
    const/4 v2, 0x3

    iget v6, p0, Lcom/android/server/StatusBarManagerService;->mImeWindowVis:I

    aput v6, p5, v2

    .line 595
    const/4 v2, 0x4

    iget v6, p0, Lcom/android/server/StatusBarManagerService;->mImeBackDisposition:I

    aput v6, p5, v2

    .line 596
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    monitor-exit v5
    :try_end_80
    .catchall {:try_start_5b .. :try_end_80} :catchall_9a

    .line 598
    const/4 v5, 0x5

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardAvailable()Z

    move-result v2

    if-eqz v2, :cond_9d

    move v2, v3

    :goto_8a
    aput v2, p5, v5

    .line 599
    const/4 v2, 0x6

    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardEnabled()Z

    move-result v5

    if-eqz v5, :cond_9f

    :goto_95
    aput v3, p5, v2

    .line 600
    return-void

    :cond_98
    move v2, v4

    .line 593
    goto :goto_6e

    .line 597
    :catchall_9a
    move-exception v2

    :try_start_9b
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v2

    :cond_9d
    move v2, v4

    .line 598
    goto :goto_8a

    :cond_9f
    move v3, v4

    .line 599
    goto :goto_95
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 7
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 309
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 310
    :try_start_6
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, "index":I
    if-gez v0, :cond_2a

    .line 312
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid status bar icon slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    .end local v0    # "index":I
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v1

    .line 315
    .restart local v0    # "index":I
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    .line 317
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    if-eqz v1, :cond_38

    .line 319
    :try_start_33
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_3a
    .catchall {:try_start_33 .. :try_end_38} :catchall_27

    .line 323
    :cond_38
    :goto_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_27

    .line 324
    return-void

    .line 320
    :catch_3a
    move-exception v1

    goto :goto_38
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 679
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    .line 680
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 681
    .local v0, "n":Landroid/service/notification/StatusBarNotification;
    if-nez v0, :cond_27

    .line 682
    const-string v1, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNotification key not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    monitor-exit v2

    .line 695
    :goto_26
    return-void

    .line 685
    :cond_27
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_36

    if-eqz v1, :cond_34

    .line 687
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeNotification(Landroid/os/IBinder;)V

    .line 690
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/StatusBarManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_39
    .catchall {:try_start_2b .. :try_end_34} :catchall_36

    .line 694
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v2

    goto :goto_26

    .end local v0    # "n":Landroid/service/notification/StatusBarNotification;
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw v1

    .line 691
    .restart local v0    # "n":Landroid/service/notification/StatusBarNotification;
    :catch_39
    move-exception v1

    goto :goto_34
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .prologue
    .line 473
    iput p1, p0, Lcom/android/server/StatusBarManagerService;->mCurrentUserId:I

    .line 474
    return-void
.end method

.method public setHardKeyboardEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/StatusBarManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StatusBarManagerService$5;-><init>(Lcom/android/server/StatusBarManagerService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 15
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 258
    iget-object v8, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v8

    .line 259
    :try_start_6
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v7

    .line 260
    .local v7, "index":I
    if-gez v7, :cond_2a

    .line 261
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid status bar icon slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    .end local v7    # "index":I
    :catchall_27
    move-exception v1

    monitor-exit v8
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v1

    .line 264
    .restart local v7    # "index":I
    :cond_2a
    :try_start_2a
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 268
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v7, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 270
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_27

    if-eqz v1, :cond_44

    .line 272
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v7, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_44} :catch_46
    .catchall {:try_start_3f .. :try_end_44} :catchall_27

    .line 276
    :cond_44
    :goto_44
    :try_start_44
    monitor-exit v8
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_27

    .line 277
    return-void

    .line 273
    :catch_46
    move-exception v1

    goto :goto_44
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 282
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v3

    .line 283
    :try_start_6
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 284
    .local v1, "index":I
    if-gez v1, :cond_2a

    .line 285
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid status bar icon slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    .end local v1    # "index":I
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v2

    .line 288
    .restart local v1    # "index":I
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 289
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v0, :cond_34

    .line 290
    monitor-exit v3

    .line 304
    :goto_33
    return-void

    .line 293
    :cond_34
    iget-boolean v2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_43

    .line 294
    iput-boolean p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 296
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_27

    if-eqz v2, :cond_43

    .line 298
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_43} :catch_45
    .catchall {:try_start_3e .. :try_end_43} :catchall_27

    .line 303
    :cond_43
    :goto_43
    :try_start_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_27

    goto :goto_33

    .line 299
    :catch_45
    move-exception v2

    goto :goto_43
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 357
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_6
    iput p2, p0, Lcom/android/server/StatusBarManagerService;->mImeWindowVis:I

    .line 362
    iput p3, p0, Lcom/android/server/StatusBarManagerService;->mImeBackDisposition:I

    .line 363
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 364
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/StatusBarManagerService$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$3;-><init>(Lcom/android/server/StatusBarManagerService;Landroid/os/IBinder;II)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    monitor-exit v1

    .line 375
    return-void

    .line 374
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setMaxBrightness(I)V
    .registers 4
    .param p1, "maxLevel"    # I

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 519
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_6
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_11

    if-eqz v0, :cond_f

    .line 522
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setMaxBrightness(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_14
    .catchall {:try_start_a .. :try_end_f} :catchall_11

    .line 526
    :cond_f
    :goto_f
    :try_start_f
    monitor-exit v1

    .line 527
    return-void

    .line 526
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_11

    throw v0

    .line 523
    :catch_14
    move-exception v0

    goto :goto_f
.end method

.method public setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .line 165
    return-void
.end method

.method public setPanelExpandState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    .line 1144
    iput-boolean p1, p0, Lcom/android/server/StatusBarManagerService;->mPanelExpandState:Z

    .line 1145
    return-void
.end method

.method public setSystemUiVisibility(II)V
    .registers 8
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 383
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/StatusBarManagerService;->updateUiVisibilityLocked(II)V

    .line 385
    iget v0, p0, Lcom/android/server/StatusBarManagerService;->mCurrentUserId:I

    const/high16 v2, 0x3ff0000

    and-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const-string v4, "WindowManager.LayoutParams"

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 390
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public setWindowState(II)V
    .registers 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 495
    :try_start_4
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 498
    :cond_9
    :goto_9
    return-void

    .line 496
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public showCallView()V
    .registers 2

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 534
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 536
    :try_start_7
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showCallOnGoingView()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 540
    :cond_c
    :goto_c
    return-void

    .line 537
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public toggleNotificationPanel()V
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_12

    .line 481
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_d

    .line 482
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    .line 485
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleNotificationPanel()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 488
    :cond_12
    :goto_12
    return-void

    .line 486
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method public toggleRecentApps()V
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 447
    :try_start_4
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 450
    :cond_9
    :goto_9
    return-void

    .line 448
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public topAppWindowChanged(Z)V
    .registers 5
    .param p1, "menuVisible"    # Z

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 335
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/StatusBarManagerService;->mMenuVisible:Z

    .line 337
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/StatusBarManagerService$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StatusBarManagerService$2;-><init>(Lcom/android/server/StatusBarManagerService;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    monitor-exit v1

    .line 348
    return-void

    .line 347
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public triggerNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 1000
    iget-object v4, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1001
    .local v1, "noti":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/service/notification/StatusBarNotification;>;"
    if-eqz v1, :cond_33

    .line 1002
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 1003
    .local v2, "nt":Landroid/service/notification/StatusBarNotification;
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->notificationMatches(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1007
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 1008
    .local v3, "wrappedNotification":Landroid/app/Notification;
    if-eqz v3, :cond_f

    iget-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_f

    .line 1014
    :try_start_2b
    iget-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_30
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2b .. :try_end_30} :catch_31

    goto :goto_f

    .line 1015
    :catch_31
    move-exception v4

    goto :goto_f

    .line 1020
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "nt":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "wrappedNotification":Landroid/app/Notification;
    :cond_33
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1021
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .registers 7
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v1

    .line 662
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotification key not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0

    .line 665
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    if-eqz v0, :cond_36

    .line 668
    :try_start_31
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_3c
    .catchall {:try_start_31 .. :try_end_36} :catchall_25

    .line 674
    :cond_36
    :goto_36
    const/4 v0, 0x2

    :try_start_37
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/StatusBarManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    .line 675
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_25

    .line 676
    return-void

    .line 669
    :catch_3c
    move-exception v0

    goto :goto_36
.end method
