.class public final Lcom/android/server/am/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_APP:Z = false

.field static final DEBUG_IDLE:Z = false

.field static final DEBUG_MULTIWINDOW:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_STATES:Z = false

.field public static final FLOATING_APP_STACK_TYPE:I = 0x3

.field public static final HIDDEN_APP_STACK_TYPE:I = 0x4

.field public static final HIDDEN_STACK_ID:I = 0x0

.field public static final HOME_STACK_ID:I = 0x1

.field public static final HOME_STACK_TYPE:I = 0x1

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field public static final KNOX_PACKAGE_PREFIX:Ljava/lang/String; = "sec_container_1"

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field public static final NORMAL_APP_STACK_TYPE:I = 0x2

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field private static final STACK_STATE_HOME_IN_BACK:I = 0x2

.field private static final STACK_STATE_HOME_IN_FRONT:I = 0x0

.field private static final STACK_STATE_HOME_TO_BACK:I = 0x1

.field private static final STACK_STATE_HOME_TO_FRONT:I = 0x3

.field static final VALIDATE_WAKE_LOCK_CALLER:Z


# instance fields
.field final mCancelledThumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mCurTaskId:I

.field private mCurrentUser:I

.field mDismissKeyguardOnNextActivity:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedStack:Lcom/android/server/am/ActivityStack;

.field final mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHasMultiWindowStack:Z

.field private mHasRunningCascadeApp:Z

.field private mHiddenStack:Lcom/android/server/am/ActivityStack;

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field mIsMultiWindowEnabled:Z

.field private mLastStackId:I

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field private mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

.field mPendingResumeTopActivity:Ljava/lang/Runnable;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field private mStackState:I

.field private mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserStartedState;",
            ">;"
        }
    .end annotation
.end field

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 9
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    .line 210
    iput v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 214
    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    .line 238
    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 272
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 275
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 293
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 296
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    .line 3460
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$3;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivity:Ljava/lang/Runnable;

    .line 4132
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasMultiWindowStack:Z

    .line 4133
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    .line 302
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 303
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    .line 304
    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 305
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 306
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 307
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 311
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 313
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 314
    return-void
.end method

.method private checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .registers 16
    .param p1, "sr"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4404
    const-string v7, ""

    .line 4405
    .local v7, "simNum":Ljava/lang/String;
    const-string v4, ""

    .line 4406
    .local v4, "imsi":Ljava/lang/String;
    const-string v2, ""

    .line 4407
    .local v2, "datapref":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4410
    .local v8, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v9

    if-eqz v9, :cond_26

    .line 4411
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    const-string v11, "persist.sys.dataprefer.simid"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 4413
    .restart local v8    # "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v8, :cond_34

    .line 4414
    const/4 v0, 0x0

    .line 4499
    :cond_25
    :goto_25
    return v0

    .line 4443
    :cond_26
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 4445
    .restart local v8    # "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v8, :cond_34

    .line 4446
    const/4 v0, 0x0

    goto :goto_25

    .line 4450
    :cond_34
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 4452
    if-eqz v4, :cond_47

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_47

    .line 4453
    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 4456
    :cond_47
    const/4 v0, 0x0

    .line 4458
    .local v0, "checkFlag":Z
    const/4 v6, 0x0

    .line 4459
    .local v6, "packages":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 4460
    .local v1, "classes":[Ljava/lang/String;
    const-string v9, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14b

    const-string v9, "46001"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14b

    const-string v9, "45407"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14b

    .line 4462
    const/16 v9, 0x8

    new-array v6, v9, [Ljava/lang/String;

    .end local v6    # "packages":[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "com.neusoft.td.android.wo116114"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "com.android.wo3g"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "com.infinit.wostore.ui"

    aput-object v10, v6, v9

    const/4 v9, 0x3

    const-string v10, "com.sinovatech.unicom.ui"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    const-string v10, "com.neusoft.td.android.wo116114"

    aput-object v10, v6, v9

    const/4 v9, 0x5

    const-string v10, "com.asiainfo.android"

    aput-object v10, v6, v9

    const/4 v9, 0x6

    const-string v10, "com.samsung.wo3g"

    aput-object v10, v6, v9

    const/4 v9, 0x7

    const-string v10, "com.samsung.mobilebusinesshall"

    aput-object v10, v6, v9

    .line 4463
    .restart local v6    # "packages":[Ljava/lang/String;
    const/16 v9, 0x8

    new-array v1, v9, [Ljava/lang/String;

    .end local v1    # "classes":[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "com.neusoft.td.android.wo116114.ui.main.MainActivity"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "com.android.wo3g.wo3g"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "com.infinit.wostore.ui.ZBeginActivity"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "com.sinovatech.unicom.ui.WelcomeClient"

    aput-object v10, v1, v9

    const/4 v9, 0x4

    const-string v10, "com.neusoft.td.android.wo116114.activity.WelcomeActivity"

    aput-object v10, v1, v9

    const/4 v9, 0x5

    const-string v10, "com.asiainfo.android.MainActivity"

    aput-object v10, v1, v9

    const/4 v9, 0x6

    const-string v10, "com.samsung.wo3g.wo3g"

    aput-object v10, v1, v9

    const/4 v9, 0x7

    const-string v10, "com.samsung.mobilebusinesshall.MobileBusinessHall"

    aput-object v10, v1, v9

    .line 4471
    .restart local v1    # "classes":[Ljava/lang/String;
    :cond_c4
    :goto_c4
    if-eqz v6, :cond_25

    .line 4472
    const-string v9, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ad

    .line 4473
    if-eqz p1, :cond_25

    .line 4475
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4476
    .local v5, "in":Landroid/content/Intent;
    if-eqz v5, :cond_10a

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_10a

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10a

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_10a

    .line 4477
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 4480
    :cond_10a
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_25

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_25

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_25

    .line 4481
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_125
    array-length v9, v1

    if-ge v3, v9, :cond_25

    .line 4482
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a9

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v1, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a9

    .line 4483
    const/4 v0, 0x1

    .line 4484
    goto/16 :goto_25

    .line 4465
    .end local v3    # "i":I
    .end local v5    # "in":Landroid/content/Intent;
    :cond_14b
    const-string v9, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c4

    const-string v9, "46000"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c4

    const-string v9, "46002"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c4

    const-string v9, "46007"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c4

    .line 4467
    const/16 v9, 0x9

    new-array v6, v9, [Ljava/lang/String;

    .end local v6    # "packages":[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "com.aspire.mm"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "com.autonavi.cmccmap"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "com.cmcc.mobilevideo"

    aput-object v10, v6, v9

    const/4 v9, 0x3

    const-string v10, "cmccwm.mobilemusic"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    const-string v10, "com.chinamobile.cmccwifi"

    aput-object v10, v6, v9

    const/4 v9, 0x5

    const-string v10, "cn.emagsoftware.gamehall"

    aput-object v10, v6, v9

    const/4 v9, 0x6

    const-string v10, "com.hisunflytone.android"

    aput-object v10, v6, v9

    const/4 v9, 0x7

    const-string v10, "com.huawei.pisa.activity"

    aput-object v10, v6, v9

    const/16 v9, 0x8

    const-string v10, "com.sec.android.app.customerservice"

    aput-object v10, v6, v9

    .restart local v6    # "packages":[Ljava/lang/String;
    goto/16 :goto_c4

    .line 4481
    .restart local v3    # "i":I
    .restart local v5    # "in":Landroid/content/Intent;
    :cond_1a9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_125

    .line 4488
    .end local v3    # "i":I
    .end local v5    # "in":Landroid/content/Intent;
    :cond_1ad
    const-string v9, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 4489
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_25

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_25

    .line 4490
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1d0
    array-length v9, v6

    if-ge v3, v9, :cond_25

    .line 4491
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e6

    .line 4492
    const/4 v0, 0x1

    .line 4493
    goto/16 :goto_25

    .line 4490
    :cond_1e6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d0
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .registers 25
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header1"    # Ljava/lang/String;
    .param p11, "header2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3881
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v6, 0x0

    .line 3882
    .local v6, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v5, 0x0

    .line 3883
    .local v5, "innerPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3884
    .local v1, "args":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 3885
    .local v7, "printed":Z
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    :goto_a
    if-ltz v4, :cond_15f

    .line 3886
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 3887
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p8, :cond_21

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    .line 3885
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 3890
    :cond_21
    if-nez v5, :cond_3b

    .line 3891
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3892
    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/String;

    .line 3894
    :cond_3b
    const/4 v7, 0x1

    .line 3895
    if-nez p6, :cond_e8

    if-nez p5, :cond_46

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v10

    if-nez v10, :cond_e8

    :cond_46
    const/4 v3, 0x1

    .line 3896
    .local v3, "full":Z
    :goto_47
    if-eqz p9, :cond_50

    .line 3897
    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3898
    const/16 p9, 0x0

    .line 3900
    :cond_50
    if-eqz p10, :cond_59

    .line 3901
    move-object/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3902
    const/16 p10, 0x0

    .line 3904
    :cond_59
    if-eqz p11, :cond_62

    .line 3905
    move-object/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3906
    const/16 p11, 0x0

    .line 3908
    :cond_62
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v6, v10, :cond_91

    .line 3909
    iget-object v6, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3910
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3911
    if-eqz v3, :cond_eb

    const-string v10, "* "

    :goto_71
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3912
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3913
    if-eqz v3, :cond_ee

    .line 3914
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p1, v10}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3923
    :cond_91
    :goto_91
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_108

    const-string v10, "  * "

    :goto_9a
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3924
    const-string v10, " #"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ": "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3925
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3926
    if-eqz v3, :cond_10b

    .line 3927
    invoke-virtual {v8, p1, v5}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3935
    :cond_b7
    :goto_b7
    if-eqz p7, :cond_1e

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_1e

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_1e

    .line 3938
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 3940
    :try_start_c6
    new-instance v9, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v9}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_cb} :catch_12b
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_cb} :catch_147

    .line 3942
    .local v9, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_cb
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v9}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v10, v11, v12, v5, v1}, Landroid/app/IApplicationThread;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3946
    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, p0, v10, v11}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_e1
    .catchall {:try_start_cb .. :try_end_e1} :catchall_126

    .line 3948
    :try_start_e1
    invoke-virtual {v9}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_12b
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_e4} :catch_147

    .line 3955
    .end local v9    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_e4
    const/16 p9, 0x1

    goto/16 :goto_1e

    .line 3895
    .end local v3    # "full":Z
    :cond_e8
    const/4 v3, 0x0

    goto/16 :goto_47

    .line 3911
    .restart local v3    # "full":Z
    :cond_eb
    const-string v10, "  "

    goto :goto_71

    .line 3915
    :cond_ee
    if-eqz p5, :cond_91

    .line 3917
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_91

    .line 3918
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "  "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3919
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_91

    .line 3923
    :cond_108
    const-string v10, "    "

    goto :goto_9a

    .line 3928
    :cond_10b
    if-eqz p5, :cond_b7

    .line 3930
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3931
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_b7

    .line 3932
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_b7

    .line 3948
    .restart local v9    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_126
    move-exception v10

    :try_start_127
    invoke-virtual {v9}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v10
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12b} :catch_12b
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_12b} :catch_147

    .line 3950
    .end local v9    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_12b
    move-exception v2

    .line 3951
    .local v2, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Failure while dumping the activity: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e4

    .line 3952
    .end local v2    # "e":Ljava/io/IOException;
    :catch_147
    move-exception v2

    .line 3953
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Got a RemoteException while dumping the activity"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e4

    .line 3958
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "full":Z
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_15f
    return v7
.end method

.method private needsCascadeForceHidden()Z
    .registers 2

    .prologue
    .line 4332
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4333
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4334
    const/4 v0, 0x1

    .line 4337
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 3782
    if-eqz p1, :cond_19

    .line 3783
    if-eqz p2, :cond_c

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3784
    :cond_c
    if-eqz p3, :cond_11

    .line 3785
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3787
    :cond_11
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3788
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3789
    const/4 v0, 0x1

    .line 3792
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static stackStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "stackState"    # I

    .prologue
    .line 3754
    packed-switch p0, :pswitch_data_24

    .line 3759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown stackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 3755
    :pswitch_17
    const-string v0, "STACK_STATE_HOME_IN_FRONT"

    goto :goto_16

    .line 3756
    :pswitch_1a
    const-string v0, "STACK_STATE_HOME_TO_BACK"

    goto :goto_16

    .line 3757
    :pswitch_1d
    const-string v0, "STACK_STATE_HOME_IN_BACK"

    goto :goto_16

    .line 3758
    :pswitch_20
    const-string v0, "STACK_STATE_HOME_TO_FRONT"

    goto :goto_16

    .line 3754
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method private updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4098
    if-eqz p1, :cond_2e

    .line 4099
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4114
    :goto_8
    return-void

    .line 4103
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4104
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 4109
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, p1, :cond_2b

    .line 4110
    const v1, 0x12c4b5

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_31

    const/4 v0, -0x1

    :goto_1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4113
    :cond_2b
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_8

    .line 4107
    :cond_2e
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_11

    .line 4110
    :cond_31
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_1f
.end method


# virtual methods
.method acquireLaunchWakelock()V
    .registers 5

    .prologue
    const/16 v3, 0x68

    .line 2867
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2868
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2870
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2872
    :cond_16
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .registers 28
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2879
    const/16 v21, 0x0

    .line 2880
    .local v21, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v16, 0x0

    .line 2881
    .local v16, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v20, 0x0

    .line 2882
    .local v20, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    const/4 v12, 0x0

    .line 2883
    .local v12, "NS":I
    const/4 v11, 0x0

    .line 2884
    .local v11, "NF":I
    const/16 v18, 0x0

    .line 2885
    .local v18, "sendThumbnail":Landroid/app/IApplicationThread;
    const/4 v14, 0x0

    .line 2886
    .local v14, "booting":Z
    const/4 v15, 0x0

    .line 2887
    .local v15, "enableScreen":Z
    const/4 v13, 0x0

    .line 2889
    .local v13, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 2890
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_68

    .line 2893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2894
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 2895
    if-eqz p2, :cond_2c

    .line 2896
    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 2904
    :cond_2c
    if-eqz p3, :cond_32

    .line 2905
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 2910
    :cond_32
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 2912
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v2, :cond_4c

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4c

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_4c

    .line 2913
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    .line 2914
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 2918
    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_68

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 2919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 2920
    const/4 v15, 0x1

    .line 2924
    :cond_68
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 2925
    if-eqz v4, :cond_77

    .line 2926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 2929
    :cond_77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 2930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2937
    :cond_91
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2941
    :cond_98
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v21

    .line 2942
    if-eqz v21, :cond_146

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 2943
    :goto_a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_c1

    .line 2944
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2945
    .restart local v16    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2949
    :cond_c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2950
    .local v9, "NT":I
    if-lez v9, :cond_149

    .line 2951
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2952
    .local v10, "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2957
    :goto_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 2958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v14, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2962
    :cond_f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_110

    .line 2963
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2964
    .restart local v20    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2968
    :cond_110
    move-object/from16 v7, v18

    .line 2969
    .local v7, "thumbnailThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    new-instance v5, Lcom/android/server/am/ActivityStackSupervisor$1;

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor$1;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/IApplicationThread;Landroid/os/IBinder;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->post(Ljava/lang/Runnable;)Z

    .line 2991
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_124
    move/from16 v0, v17

    if-ge v0, v12, :cond_151

    .line 2992
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2993
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v19, v0

    .line 2994
    .local v19, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_14b

    .line 2995
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 2991
    :goto_143
    add-int/lit8 v17, v17, 0x1

    goto :goto_124

    .line 2942
    .end local v7    # "thumbnailThread":Landroid/app/IApplicationThread;
    .end local v9    # "NT":I
    .end local v10    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v17    # "i":I
    .end local v19    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_146
    const/4 v12, 0x0

    goto/16 :goto_a5

    .line 2954
    .restart local v9    # "NT":I
    :cond_149
    const/4 v10, 0x0

    .restart local v10    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto :goto_db

    .line 2997
    .restart local v7    # "thumbnailThread":Landroid/app/IApplicationThread;
    .restart local v17    # "i":I
    .restart local v19    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_14b
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_143

    .line 3003
    .end local v19    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_151
    const/16 v17, 0x0

    :goto_153
    move/from16 v0, v17

    if-ge v0, v11, :cond_16d

    .line 3004
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3005
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v6, "finish-idle"

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v2

    or-int/2addr v13, v2

    .line 3003
    add-int/lit8 v17, v17, 0x1

    goto :goto_153

    .line 3008
    :cond_16d
    if-eqz v14, :cond_1c9

    .line 3010
    const-wide/16 v22, 0x3e8

    .line 3011
    .local v22, "timeoutms":J
    const-string v2, "ro.product.name"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "jflte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_183

    .line 3012
    const-wide/16 v22, 0xbb8

    .line 3014
    :cond_183
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@call fb1: post finishBooting() with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "msec delay"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    new-instance v3, Lcom/android/server/am/ActivityStackSupervisor$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor$2;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    move-wide/from16 v0, v22

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3027
    .end local v22    # "timeoutms":J
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 3031
    if-eqz v15, :cond_1c3

    .line 3032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    .line 3035
    :cond_1c3
    if-eqz v13, :cond_1c8

    .line 3036
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3039
    :cond_1c8
    return-object v4

    .line 3021
    :cond_1c9
    if-eqz v20, :cond_1b3

    .line 3022
    const/16 v17, 0x0

    :goto_1cd
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1b3

    .line 3023
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserStartedState;)V

    .line 3022
    add-int/lit8 v17, v17, 0x1

    goto :goto_1cd
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3492
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3493
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 3494
    return-void
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1902
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1908
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .registers 39
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "isMoveTaskTop"    # Z

    .prologue
    .line 1912
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v22, v0

    .line 1913
    .local v22, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v30

    if-nez v30, :cond_14

    if-eqz v22, :cond_718

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v30

    if-eqz v30, :cond_718

    .line 1914
    :cond_14
    if-eqz v22, :cond_23e

    .line 1916
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v30

    if-nez v30, :cond_23e

    .line 1917
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    .line 1918
    .local v19, "stackTopActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v19, :cond_96

    .line 1922
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v30

    if-nez v30, :cond_54

    .line 1923
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    const-string v31, "minimized-only"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 1924
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    .line 2181
    .end local v19    # "stackTopActivity":Lcom/android/server/am/ActivityRecord;
    :goto_53
    return-object v30

    .line 1926
    .restart local v19    # "stackTopActivity":Lcom/android/server/am/ActivityRecord;
    :cond_54
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    .line 1927
    if-eqz v19, :cond_7e

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v30

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_23e

    .line 1929
    :cond_7e
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    const-string v31, "keep-current"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 1930
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto :goto_53

    .line 1934
    :cond_96
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    const/16 v31, 0x1000

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_bc

    .line 1935
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    const-string v31, "isolated-split"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 1936
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto :goto_53

    .line 1938
    :cond_bc
    const/4 v4, 0x0

    .line 1939
    .local v4, "bApplyMultiWindowPolicy":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_118

    .line 1940
    const/4 v4, 0x1

    .line 1956
    :cond_d0
    :goto_d0
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v30

    if-eqz v30, :cond_eb

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v30

    if-nez v30, :cond_eb

    .line 1958
    const/4 v4, 0x0

    .line 1961
    :cond_eb
    if-nez v4, :cond_1a9

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_110

    .line 1965
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    const-string v31, "keep-current"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 1970
    :cond_110
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto/16 :goto_53

    .line 1941
    :cond_118
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v30

    if-nez v30, :cond_136

    const/16 v30, 0x1

    :goto_126
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v31

    xor-int v30, v30, v31

    if-nez v30, :cond_139

    .line 1942
    const/4 v4, 0x1

    goto :goto_d0

    .line 1941
    :cond_136
    const/16 v30, 0x0

    goto :goto_126

    .line 1943
    :cond_139
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v30

    if-nez v30, :cond_14d

    .line 1944
    const/4 v4, 0x1

    goto :goto_d0

    .line 1945
    :cond_14d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isSplit()Z

    move-result v30

    if-eqz v30, :cond_170

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v30

    if-nez v30, :cond_170

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_170

    .line 1948
    const/4 v4, 0x1

    goto/16 :goto_d0

    .line 1949
    :cond_170
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v30

    if-nez v30, :cond_d0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v30

    if-nez v30, :cond_d0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v30

    if-nez v30, :cond_d0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_d0

    .line 1953
    const/4 v4, 0x1

    goto/16 :goto_d0

    .line 1972
    :cond_1a9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v30

    if-nez v30, :cond_23e

    .line 1975
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v30

    if-nez v30, :cond_269

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v30

    if-eqz v30, :cond_269

    .line 1977
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    .line 1978
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 1985
    :cond_1f0
    :goto_1f0
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v26

    .line 1986
    .local v26, "wasInFloatingStack":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2a6

    const/16 v29, 0x1

    .line 1987
    .local v29, "willBeInFloatingStack":Z
    :goto_20e
    xor-int v8, v26, v29

    .line 1988
    .local v8, "needForceRelaunch":Z
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1989
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 1999
    .end local v4    # "bApplyMultiWindowPolicy":Z
    .end local v8    # "needForceRelaunch":Z
    .end local v19    # "stackTopActivity":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "wasInFloatingStack":Z
    .end local v29    # "willBeInFloatingStack":Z
    :cond_23e
    const/16 v17, 0x1

    .line 2000
    .local v17, "stackId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v30

    packed-switch v30, :pswitch_data_720

    .line 2155
    :cond_24d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v30

    if-nez v30, :cond_6ab

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto/16 :goto_53

    .line 1979
    .end local v17    # "stackId":I
    .restart local v4    # "bApplyMultiWindowPolicy":Z
    .restart local v19    # "stackTopActivity":Lcom/android/server/am/ActivityRecord;
    :cond_269
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1f0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v30

    if-eqz v30, :cond_1f0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v30

    if-nez v30, :cond_1f0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1f0

    .line 1983
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    goto/16 :goto_1f0

    .line 1986
    .restart local v26    # "wasInFloatingStack":Z
    :cond_2a6
    const/16 v29, 0x0

    goto/16 :goto_20e

    .line 2002
    .end local v4    # "bApplyMultiWindowPolicy":Z
    .end local v19    # "stackTopActivity":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "wasInFloatingStack":Z
    .restart local v17    # "stackId":I
    :pswitch_2aa
    const/16 v20, 0x0

    .line 2003
    .local v20, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    const/16 v31, 0x2000

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_348

    .line 2004
    if-eqz p2, :cond_32c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v30, v0

    if-eqz v30, :cond_32c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v30

    if-eqz v30, :cond_32c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v30

    if-eqz v30, :cond_32c

    .line 2008
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v20, v0

    .line 2009
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2010
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2012
    :cond_32c
    if-nez v20, :cond_348

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    if-eqz v30, :cond_348

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v30

    if-eqz v30, :cond_348

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v20, v0

    .line 2017
    :cond_348
    if-nez v20, :cond_372

    .line 2018
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2019
    .local v6, "bounds":Landroid/graphics/Rect;
    if-nez v6, :cond_35e

    .line 2020
    new-instance v30, Ljava/lang/IllegalArgumentException;

    const-string v31, "bounds is null"

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 2022
    :cond_35e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->createFloatingStack(Landroid/graphics/Rect;)I

    move-result v17

    .line 2023
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v20

    .line 2025
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :cond_372
    const-string v30, "create-cascade"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto/16 :goto_53

    .line 2029
    .end local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    :pswitch_385
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v14

    .line 2031
    .local v14, "requestZone":I
    if-eqz v22, :cond_3cf

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v30

    if-eqz v30, :cond_3cf

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v30

    if-nez v30, :cond_3cf

    if-eqz p3, :cond_3cf

    .line 2035
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    const-string/jumbo v31, "split keep-current"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto/16 :goto_53

    .line 2039
    :cond_3cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    add-int/lit8 v18, v30, -0x1

    .local v18, "stackNdx":I
    :goto_3db
    if-lez v18, :cond_456

    .line 2040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ActivityStack;

    .line 2042
    .local v16, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/wm/WindowManagerService;->isFrontStack(I)Z

    move-result v30

    if-nez v30, :cond_400

    .line 2039
    :cond_3fd
    add-int/lit8 v18, v18, -0x1

    goto :goto_3db

    .line 2046
    :cond_400
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    .line 2047
    .local v24, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v24, :cond_3fd

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3fd

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v30

    if-eqz v30, :cond_3fd

    .line 2048
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v30

    and-int v30, v30, v14

    if-eqz v30, :cond_3fd

    .line 2049
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v30

    move/from16 v0, v30

    if-gt v0, v14, :cond_3fd

    .line 2050
    const-string/jumbo v30, "split-current"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto/16 :goto_53

    .line 2057
    .end local v16    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v31, v0

    if-eqz v22, :cond_4c3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    :goto_46a
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v14}, Lcom/android/server/am/MultiWindowPolicy;->getRelativeStackId(Lcom/android/server/am/ActivityStack;I)I

    move-result v13

    .line 2058
    .local v13, "relativeStackId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Lcom/android/server/am/MultiWindowPolicy;->getAvailableSplitStack(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/android/server/am/ActivityStack;

    move-result-object v15

    .line 2060
    .local v15, "splitStack":Lcom/android/server/am/ActivityStack;
    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v13, v0, :cond_5c0

    .line 2061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v31

    const/16 v32, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;IZ)V

    .line 2062
    if-eqz v15, :cond_4c6

    .line 2063
    const-string/jumbo v30, "split-current"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto/16 :goto_53

    .line 2057
    .end local v13    # "relativeStackId":I
    .end local v15    # "splitStack":Lcom/android/server/am/ActivityStack;
    :cond_4c3
    const/16 v30, 0x0

    goto :goto_46a

    .line 2066
    .restart local v13    # "relativeStackId":I
    .restart local v15    # "splitStack":Lcom/android/server/am/ActivityStack;
    :cond_4c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowManagerService;->getStackBoxId(I)I

    move-result v12

    .line 2067
    .local v12, "relativeStackBoxId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->getStackBoxPosition(Lcom/android/server/am/ActivityRecord;)I

    move-result v9

    .line 2068
    .local v9, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v9, v1}, Lcom/android/server/am/MultiWindowPolicy;->getStackBoxWeight(II)F

    move-result v27

    .line 2070
    .local v27, "weight":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 2071
    .local v11, "relativeStack":Lcom/android/server/am/ActivityStack;
    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 2072
    .local v25, "topRelativeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v25, :cond_58e

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    const/16 v31, 0x1000

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_58e

    .line 2074
    new-instance v7, Landroid/graphics/Point;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getIsolatedCenterPoint()Landroid/graphics/Point;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 2075
    .local v7, "isolatedCenterPoint":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_563

    .line 2076
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    .line 2077
    .local v23, "tmp":I
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move/from16 v0, v30

    iput v0, v7, Landroid/graphics/Point;->x:I

    .line 2078
    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/Point;->y:I

    .line 2080
    .end local v23    # "tmp":I
    :cond_563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->convertPointToWeight(Landroid/graphics/Point;)Ljava/util/ArrayList;

    move-result-object v28

    .line 2081
    .local v28, "weightList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Float;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 2083
    .local v21, "targetWeight":F
    packed-switch v9, :pswitch_data_72a

    .line 2089
    :pswitch_58c
    move/from16 v27, v21

    .line 2094
    .end local v7    # "isolatedCenterPoint":Landroid/graphics/Point;
    .end local v21    # "targetWeight":F
    .end local v28    # "weightList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_58e
    :goto_58e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v27

    invoke-virtual {v0, v1, v12, v9, v2}, Lcom/android/server/am/ActivityManagerService;->createStack(IIIF)I

    move-result v17

    .line 2106
    .end local v9    # "position":I
    .end local v11    # "relativeStack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "relativeStackBoxId":I
    .end local v25    # "topRelativeActivity":Lcom/android/server/am/ActivityRecord;
    .end local v27    # "weight":F
    :goto_5a0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v30

    const-string v31, "create-split"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto/16 :goto_53

    .line 2086
    .restart local v7    # "isolatedCenterPoint":Landroid/graphics/Point;
    .restart local v9    # "position":I
    .restart local v11    # "relativeStack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "relativeStackBoxId":I
    .restart local v21    # "targetWeight":F
    .restart local v25    # "topRelativeActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v27    # "weight":F
    .restart local v28    # "weightList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :pswitch_5bb
    const/high16 v30, 0x3f800000

    sub-float v27, v30, v21

    .line 2087
    goto :goto_58e

    .line 2100
    .end local v7    # "isolatedCenterPoint":Landroid/graphics/Point;
    .end local v9    # "position":I
    .end local v11    # "relativeStack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "relativeStackBoxId":I
    .end local v21    # "targetWeight":F
    .end local v25    # "topRelativeActivity":Lcom/android/server/am/ActivityRecord;
    .end local v27    # "weight":F
    .end local v28    # "weightList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_5c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    const/16 v32, 0x1

    const/16 v33, 0x6

    const/high16 v34, 0x3f800000

    invoke-virtual/range {v30 .. v34}, Lcom/android/server/am/ActivityManagerService;->createStack(IIIF)I

    move-result v17

    goto :goto_5a0

    .line 2110
    .end local v13    # "relativeStackId":I
    .end local v14    # "requestZone":I
    .end local v15    # "splitStack":Lcom/android/server/am/ActivityStack;
    .end local v18    # "stackNdx":I
    :pswitch_5d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    if-eqz v30, :cond_24d

    .line 2111
    const-string v10, "normal"

    .line 2112
    .local v10, "reason":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2113
    .local v5, "bCreateStack":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    .line 2114
    .restart local v24    # "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v24, :cond_698

    .line 2115
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v30

    if-nez v30, :cond_62c

    .line 2116
    const/4 v5, 0x1

    .line 2142
    :cond_601
    :goto_601
    if-eqz v5, :cond_24d

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    const/16 v32, 0x1

    const/16 v33, 0x6

    const/high16 v34, 0x3f800000

    invoke-virtual/range {v30 .. v34}, Lcom/android/server/am/ActivityManagerService;->createStack(IIIF)I

    move-result v17

    .line 2147
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v10}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto/16 :goto_53

    .line 2117
    :cond_62c
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->isSplit()Z

    move-result v30

    if-eqz v30, :cond_636

    .line 2118
    const/4 v5, 0x1

    .line 2119
    const-string v10, "from-split"

    goto :goto_601

    .line 2120
    :cond_636
    if-eqz v22, :cond_648

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v30

    if-eqz v30, :cond_648

    .line 2121
    const/4 v5, 0x1

    .line 2122
    const-string v10, "from-floating"

    goto :goto_601

    .line 2123
    :cond_648
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v30

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v31

    xor-int v30, v30, v31

    if-eqz v30, :cond_668

    .line 2125
    const/4 v5, 0x1

    .line 2126
    const-string v10, "multiwindow-support-changed"

    goto :goto_601

    .line 2127
    :cond_668
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_685

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v30

    if-eqz v30, :cond_685

    .line 2129
    const/4 v5, 0x1

    .line 2130
    const-string v10, "multiwiindow from home"

    goto/16 :goto_601

    .line 2131
    :cond_685
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    const/16 v31, 0x1000

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_601

    .line 2132
    const/4 v5, 0x1

    .line 2133
    const-string v10, "isolated-split"

    goto/16 :goto_601

    .line 2136
    :cond_698
    if-eqz v22, :cond_601

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v30

    if-eqz v30, :cond_601

    .line 2137
    const/4 v5, 0x1

    .line 2138
    const-string v10, "from-floating"

    goto/16 :goto_601

    .line 2162
    .end local v5    # "bCreateStack":Z
    .end local v10    # "reason":Ljava/lang/String;
    .end local v24    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_6ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    add-int/lit8 v18, v30, -0x1

    .restart local v18    # "stackNdx":I
    :goto_6b7
    if-lez v18, :cond_6eb

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ActivityStack;

    .line 2164
    .restart local v16    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v30

    if-nez v30, :cond_6e8

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v30

    if-nez v30, :cond_6e8

    .line 2168
    const-string v30, "non-floating-stack"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto/16 :goto_53

    .line 2162
    :cond_6e8
    add-int/lit8 v18, v18, -0x1

    goto :goto_6b7

    .line 2174
    .end local v16    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    const/16 v32, 0x1

    const/16 v33, 0x6

    const/high16 v34, 0x3f800000

    invoke-virtual/range {v30 .. v34}, Lcom/android/server/am/ActivityManagerService;->createStack(IIIF)I

    move-result v17

    .line 2178
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v30

    const-string v31, "create-normal"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto/16 :goto_53

    .line 2181
    .end local v17    # "stackId":I
    .end local v18    # "stackNdx":I
    :cond_718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    goto/16 :goto_53

    .line 2000
    :pswitch_data_720
    .packed-switch 0x0
        :pswitch_5d3
        :pswitch_385
        :pswitch_2aa
    .end packed-switch

    .line 2083
    :pswitch_data_72a
    .packed-switch 0x3
        :pswitch_5bb
        :pswitch_58c
        :pswitch_5bb
    .end packed-switch
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "isMoveTaskTop"    # Z

    .prologue
    .line 1905
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method allPausedActivitiesComplete()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 725
    const/4 v1, 0x1

    .line 726
    .local v1, "pausing":Z
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "stackNdx":I
    :goto_a
    if-lez v5, :cond_2b

    .line 727
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 728
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 729
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2c

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_2c

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_2c

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_2c

    move v1, v6

    .line 756
    .end local v1    # "pausing":Z
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2b
    :goto_2b
    return v1

    .line 741
    .restart local v1    # "pausing":Z
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2c
    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 742
    .local v3, "record":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_32

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_32

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_32

    move v1, v6

    .line 749
    goto :goto_2b

    .line 726
    .end local v3    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_52
    add-int/lit8 v5, v5, -0x1

    goto :goto_a
.end method

.method allResumedActivitiesComplete()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 667
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_9
    if-ltz v2, :cond_27

    .line 668
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 669
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 670
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 671
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_24

    .line 691
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_23
    return v3

    .line 667
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 677
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_27
    iget v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    packed-switch v4, :pswitch_data_36

    .line 691
    :goto_2c
    :pswitch_2c
    const/4 v3, 0x1

    goto :goto_23

    .line 682
    :pswitch_2e
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_2c

    .line 688
    :pswitch_32
    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_2c

    .line 677
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2c
        :pswitch_32
    .end packed-switch
.end method

.method allResumedActivitiesIdle()Z
    .registers 5

    .prologue
    .line 653
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_8
    if-ltz v2, :cond_25

    .line 654
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 655
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 653
    :cond_18
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 658
    :cond_1b
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 659
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_23

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v3, :cond_18

    .line 660
    :cond_23
    const/4 v3, 0x0

    .line 663
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_24
    return v3

    :cond_25
    const/4 v3, 0x1

    goto :goto_24
.end method

.method allResumedActivitiesVisible()Z
    .registers 5

    .prologue
    .line 695
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_8
    if-ltz v2, :cond_23

    .line 696
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 697
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 698
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_20

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v3, :cond_20

    .line 699
    :cond_1e
    const/4 v3, 0x0

    .line 702
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1f
    return v3

    .line 695
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 702
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_23
    const/4 v3, 0x1

    goto :goto_1f
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 502
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_8
    if-ltz v1, :cond_1c

    .line 503
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 504
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 505
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_19

    .line 509
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :goto_18
    return-object v2

    .line 502
    .restart local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 509
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_18
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "headless"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "didSomething":Z
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 622
    .local v3, "processName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "stackNdx":I
    :goto_c
    if-ltz v5, :cond_84

    .line 623
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 624
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 622
    :cond_1c
    :goto_1c
    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    .line 627
    :cond_1f
    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 628
    .local v2, "hr":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1c

    .line 629
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v6, :cond_1c

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_1c

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 632
    if-eqz p2, :cond_7a

    .line 633
    :try_start_3d
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting activities not supported on headless device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_55} :catch_56

    goto :goto_1c

    .line 638
    :catch_56
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in new application when starting activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    throw v1

    .line 635
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7a
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_7c
    invoke-virtual {p0, v2, p1, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_56

    move-result v6

    if-eqz v6, :cond_1c

    .line 636
    const/4 v0, 0x1

    goto :goto_1c

    .line 646
    .end local v2    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_84
    if-nez v0, :cond_8a

    .line 647
    const/4 v6, 0x0

    invoke-virtual {p0, v9, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 649
    :cond_8a
    return v0
.end method

.method public changeTypeOfFocusedTaskToNormal()V
    .registers 11

    .prologue
    .line 4191
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 4192
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4193
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-nez v4, :cond_5e

    .line 4194
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4195
    .local v3, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_5e

    .line 4197
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->freezeSufaceUntilResizing()V

    .line 4199
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x6

    const/high16 v9, 0x3f800000

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->createStack(IIIF)I

    move-result v1

    .line 4200
    .local v1, "stackId":I
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4202
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const-string/jumbo v6, "type-change"

    invoke-direct {p0, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 4203
    if-eqz v2, :cond_3f

    .line 4204
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v6, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;IZ)V

    .line 4206
    :cond_3f
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v4, v6, :cond_5a

    .line 4207
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4208
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZ)V

    .line 4212
    :cond_5a
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(Z)Z

    .line 4215
    .end local v1    # "stackId":I
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_5e
    monitor-exit v5

    .line 4216
    return-void

    .line 4215
    .end local v0    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :catchall_60
    move-exception v4

    monitor-exit v5
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v4
.end method

.method checkReadyForSleepLocked()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 3497
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v8

    if-nez v8, :cond_a

    .line 3555
    :cond_9
    :goto_9
    return-void

    .line 3502
    :cond_a
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    if-nez v8, :cond_40

    .line 3503
    const/4 v1, 0x0

    .line 3504
    .local v1, "dontSleep":Z
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "stackNdx":I
    :goto_17
    if-ltz v6, :cond_29

    .line 3505
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v8

    or-int/2addr v1, v8

    .line 3504
    add-int/lit8 v6, v6, -0x1

    goto :goto_17

    .line 3508
    :cond_29
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_35

    .line 3512
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 3513
    const/4 v1, 0x1

    .line 3516
    :cond_35
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3e

    .line 3520
    const/4 v1, 0x1

    .line 3523
    :cond_3e
    if-nez v1, :cond_9

    .line 3529
    .end local v1    # "dontSleep":Z
    .end local v6    # "stackNdx":I
    :cond_40
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v8, :cond_71

    .line 3530
    const/4 v4, 0x0

    .line 3531
    .local v4, "showNextStack":Z
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStackOrder(Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 3532
    .local v7, "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 3533
    .local v3, "obscuredZone":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3534
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4f
    if-ge v2, v0, :cond_89

    .line 3535
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 3536
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    const/16 v8, 0xf

    if-eq v3, v8, :cond_6f

    move v4, v9

    .line 3537
    :goto_64
    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStack;->goToSleep(Z)V

    .line 3538
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getVisibleObscuredZone()I

    move-result v8

    or-int/2addr v3, v8

    .line 3534
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 3536
    :cond_6f
    const/4 v4, 0x0

    goto :goto_64

    .line 3542
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "obscuredZone":I
    .end local v4    # "showNextStack":Z
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_71
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .restart local v6    # "stackNdx":I
    :goto_79
    if-ltz v6, :cond_89

    .line 3543
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 3542
    add-int/lit8 v6, v6, -0x1

    goto :goto_79

    .line 3547
    .end local v6    # "stackNdx":I
    :cond_89
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3549
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_99

    .line 3550
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3552
    :cond_99
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v8, :cond_9

    .line 3553
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_9
.end method

.method checkResumeHomeStack()Z
    .registers 2

    .prologue
    .line 4074
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkResumeHomeStack(I)Z

    move-result v0

    return v0
.end method

.method checkResumeHomeStack(I)Z
    .registers 8
    .param p1, "stackId"    # I

    .prologue
    const/4 v3, 0x1

    .line 4079
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4080
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4094
    :cond_b
    :goto_b
    return v3

    .line 4083
    :cond_c
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_14
    if-lez v2, :cond_b

    .line 4084
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 4085
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-nez v4, :cond_2e

    iget v4, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne p1, v4, :cond_31

    .line 4083
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 4089
    :cond_31
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_2e

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_2e

    .line 4090
    const/4 v3, 0x0

    goto :goto_b
.end method

.method closeSystemDialogsLocked()V
    .registers 4

    .prologue
    .line 3054
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_8
    if-ltz v1, :cond_18

    .line 3055
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 3056
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 3054
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 3058
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_18
    return-void
.end method

.method comeOutOfSleepIfNeededLocked(Z)V
    .registers 8
    .param p1, "dismissKeyguardOnNextActivity"    # Z

    .prologue
    .line 3470
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3471
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3472
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3474
    :cond_10
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_18
    if-ltz v1, :cond_48

    .line 3475
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 3476
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 3477
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3479
    if-nez p1, :cond_33

    .line 3480
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3474
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 3482
    :cond_33
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivity:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3483
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivity:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30

    .line 3488
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_48
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3489
    return-void
.end method

.method createStack()I
    .registers 2

    .prologue
    .line 3222
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->createStack(I)I

    move-result v0

    return v0
.end method

.method createStack(I)I
    .registers 9
    .param p1, "stackType"    # I

    .prologue
    .line 3228
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    .line 3229
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 3231
    :cond_c
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3237
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    iget v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3240
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    return v0
.end method

.method dismissKeyguard()V
    .registers 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    if-eqz v0, :cond_c

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    .line 334
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 336
    :cond_c
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 3764
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguardOnNextActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3765
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3766
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFocusedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3767
    const-string v0, " mStackState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    invoke-static {v0}, Lcom/android/server/am/ActivityStackSupervisor;->stackStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3769
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNonFloatingFocusedStack="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3771
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3772
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3773
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .registers 37
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 3797
    const/16 v27, 0x0

    .line 3798
    .local v27, "printed":Z
    const/4 v9, 0x0

    .line 3799
    .local v9, "needSep":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 3800
    .local v25, "numStacks":I
    const/16 v30, 0x0

    .local v30, "stackNdx":I
    :goto_d
    move/from16 v0, v30

    move/from16 v1, v25

    if-ge v0, v1, :cond_154

    .line 3801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 3802
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v29, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3803
    .local v29, "stackHeader":Ljava/lang/StringBuilder;
    const-string v4, "  Stack #"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3806
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 3807
    const-string v4, " [Hidden]"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3815
    :cond_49
    :goto_49
    const-string v4, " id="

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3817
    const-string v4, ":"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3818
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    or-int v27, v27, v4

    .line 3820
    iget-object v12, v3, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v13, "    "

    const-string v14, "Run"

    const/4 v15, 0x0

    if-nez p3, :cond_118

    const/16 v16, 0x1

    :goto_7f
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "    Running activities (most recent first):"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v27, v27, v4

    .line 3823
    move/from16 v9, v27

    .line 3824
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mPausingActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v26

    .line 3826
    .local v26, "pr":Z
    if-eqz v26, :cond_a6

    .line 3827
    const/16 v27, 0x1

    .line 3828
    const/4 v9, 0x0

    .line 3832
    :cond_a6
    const/16 v22, 0x1

    .line 3833
    .local v22, "count":I
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_ae
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/ActivityRecord;

    .line 3834
    .local v28, "record":Lcom/android/server/am/ActivityRecord;
    move/from16 v9, v27

    .line 3835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mPausingActivities["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v23, v22, 0x1

    .end local v22    # "count":I
    .local v23, "count":I
    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2, v9, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v26

    .line 3837
    if-eqz v26, :cond_e8

    .line 3838
    const/16 v27, 0x1

    .line 3839
    const/4 v9, 0x0

    :cond_e8
    move/from16 v22, v23

    .end local v23    # "count":I
    .restart local v22    # "count":I
    goto :goto_ae

    .line 3808
    .end local v22    # "count":I
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v26    # "pr":Z
    .end local v28    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_eb
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_fa

    .line 3809
    const-string v4, " [Floating]"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49

    .line 3810
    :cond_fa
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_109

    .line 3811
    const-string v4, " [Home]"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49

    .line 3812
    :cond_109
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 3813
    const-string v4, " [Normal]"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49

    .line 3820
    :cond_118
    const/16 v16, 0x0

    goto/16 :goto_7f

    .line 3844
    .restart local v22    # "count":I
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v26    # "pr":Z
    :cond_11c
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mResumedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v26

    .line 3846
    if-eqz v26, :cond_12d

    .line 3847
    const/16 v27, 0x1

    .line 3848
    const/4 v9, 0x0

    .line 3850
    :cond_12d
    if-eqz p3, :cond_14e

    .line 3851
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mLastPausedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v26

    .line 3853
    if-eqz v26, :cond_140

    .line 3854
    const/16 v27, 0x1

    .line 3855
    const/4 v9, 0x1

    .line 3857
    :cond_140
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mLastNoHistoryActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    or-int v27, v27, v4

    .line 3860
    :cond_14e
    move/from16 v9, v27

    .line 3800
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_d

    .line 3863
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v22    # "count":I
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v26    # "pr":Z
    .end local v29    # "stackHeader":Ljava/lang/StringBuilder;
    :cond_154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Fin"

    const/4 v15, 0x0

    if-nez p3, :cond_1fa

    const/16 v16, 0x1

    :goto_161
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to finish:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v27, v27, v4

    .line 3865
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Stop"

    const/4 v15, 0x0

    if-nez p3, :cond_1fe

    const/16 v16, 0x1

    :goto_182
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to stop:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v27, v27, v4

    .line 3867
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Wait"

    const/4 v15, 0x0

    if-nez p3, :cond_201

    const/16 v16, 0x1

    :goto_1a3
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting for another to become visible:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v27, v27, v4

    .line 3870
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Sleep"

    const/4 v15, 0x0

    if-nez p3, :cond_204

    const/16 v16, 0x1

    :goto_1c4
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to sleep:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v27, v27, v4

    .line 3872
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Sleep"

    const/4 v15, 0x0

    if-nez p3, :cond_207

    const/16 v16, 0x1

    :goto_1e5
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to sleep:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v27, v27, v4

    .line 3875
    return v27

    .line 3863
    :cond_1fa
    const/16 v16, 0x0

    goto/16 :goto_161

    .line 3865
    :cond_1fe
    const/16 v16, 0x0

    goto :goto_182

    .line 3867
    :cond_201
    const/16 v16, 0x0

    goto :goto_1a3

    .line 3870
    :cond_204
    const/16 v16, 0x0

    goto :goto_1c4

    .line 3872
    :cond_207
    const/16 v16, 0x0

    goto :goto_1e5
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .registers 19
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 3580
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_88

    .line 3581
    const/4 v13, 0x0

    .line 3582
    .local v13, "showNextStack":Z
    const/4 v12, 0x0

    .line 3583
    .local v12, "showHomeBehindStack":Z
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStackOrder(Z)Ljava/util/ArrayList;

    move-result-object v15

    .line 3584
    .local v15, "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .line 3585
    .local v11, "obscuredZone":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 3586
    .local v9, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_15
    if-ge v10, v9, :cond_51

    .line 3587
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 3588
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_2c

    .line 3586
    :goto_29
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 3590
    :cond_2c
    const/16 v4, 0xf

    if-eq v11, v4, :cond_47

    const/4 v13, 0x1

    .line 3591
    :goto_31
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 3593
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v12

    .line 3598
    :goto_41
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getVisibleObscuredZone()I

    move-result v4

    or-int/2addr v11, v4

    goto :goto_29

    .line 3590
    :cond_47
    const/4 v13, 0x0

    goto :goto_31

    .line 3595
    :cond_49
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v12, v13}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)Z

    goto :goto_41

    .line 3601
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_51
    if-eqz p1, :cond_da

    .line 3602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    .local v14, "stackNdx":I
    :goto_5d
    if-ltz v14, :cond_da

    .line 3603
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3604
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3606
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_85

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v4, v5, :cond_85

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v4, :cond_85

    .line 3607
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZ)Z

    .line 3602
    :cond_85
    add-int/lit8 v14, v14, -0x1

    goto :goto_5d

    .line 3614
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "N":I
    .end local v10    # "i":I
    .end local v11    # "obscuredZone":I
    .end local v12    # "showHomeBehindStack":Z
    .end local v13    # "showNextStack":Z
    .end local v14    # "stackNdx":I
    .end local v15    # "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_88
    const/4 v12, 0x0

    .line 3615
    .restart local v12    # "showHomeBehindStack":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    .restart local v14    # "stackNdx":I
    :goto_93
    if-ltz v14, :cond_b2

    .line 3616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3617
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 3618
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v12

    .line 3615
    :cond_af
    add-int/lit8 v14, v14, -0x1

    goto :goto_93

    .line 3623
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_b2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    :goto_bc
    if-ltz v14, :cond_da

    .line 3624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3625
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-nez v4, :cond_d7

    .line 3626
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v12}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 3623
    :cond_d7
    add-int/lit8 v14, v14, -0x1

    goto :goto_bc

    .line 3630
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "stackNdx":I
    :cond_da
    return-void
.end method

.method exchangeTaskToStack(IIZ)V
    .registers 15
    .param p1, "task1Id"    # I
    .param p2, "task2Id"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 3297
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 3298
    .local v4, "task1":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 3299
    .local v5, "task2":Lcom/android/server/am/TaskRecord;
    if-eqz v4, :cond_c

    if-nez v5, :cond_d

    .line 3347
    :cond_c
    :goto_c
    return-void

    .line 3303
    :cond_d
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3304
    .local v0, "ar1":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3305
    .local v1, "ar2":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3306
    .local v2, "stack1":Lcom/android/server/am/ActivityStack;
    iget-object v3, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3307
    .local v3, "stack2":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    .line 3311
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    .line 3312
    .local v6, "zone1":I
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    .line 3315
    .local v7, "zone2":I
    const/4 v8, 0x3

    if-ne v6, v8, :cond_34

    const/16 v8, 0xc

    if-eq v7, v8, :cond_3b

    :cond_34
    const/16 v8, 0xc

    if-ne v6, v8, :cond_40

    const/4 v8, 0x3

    if-ne v7, v8, :cond_40

    .line 3317
    :cond_3b
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->freezeSufaceUntilResizing()V

    .line 3321
    :cond_40
    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/android/server/am/ActivityStackSupervisor;->removeTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 3322
    const/4 v8, 0x0

    invoke-virtual {p0, v4, v8}, Lcom/android/server/am/ActivityStackSupervisor;->removeTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 3325
    invoke-virtual {v3, v4, p3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 3326
    invoke-virtual {v2, v5, p3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 3328
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, p2, v9, p3, v10}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 3329
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, p1, v9, p3, v10}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 3332
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 3333
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 3334
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v4, v8}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3335
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3, v5, v8}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3336
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3337
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v3, v8, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3339
    if-eqz p3, :cond_b2

    .line 3340
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3341
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 3342
    iput-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3343
    iput-object v0, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_c

    .line 3345
    :cond_b2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto/16 :goto_c
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 3389
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_8
    if-ltz v1, :cond_1c

    .line 3390
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3391
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_19

    .line 3395
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :goto_18
    return-object v0

    .line 3389
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 3395
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3400
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_8
    if-ltz v1, :cond_1c

    .line 3401
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3402
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_19

    .line 3406
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :goto_18
    return-object v0

    .line 3400
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 3406
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 3353
    const/4 v1, 0x0

    .line 3355
    .local v1, "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_a
    if-ltz v3, :cond_4f

    .line 3356
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3357
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v5

    if-nez v5, :cond_23

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_23

    .line 3355
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 3362
    :cond_23
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3363
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_20

    .line 3365
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 3366
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x8000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_40

    .line 3367
    move-object v1, v0

    goto :goto_20

    .line 3368
    :cond_40
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v5

    if-nez v5, :cond_52

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-ne v0, v5, :cond_52

    .line 3369
    move-object v1, v0

    goto :goto_20

    .line 3380
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4f
    if-eqz v1, :cond_53

    move-object v0, v1

    .line 3385
    :cond_52
    :goto_52
    return-object v0

    :cond_53
    move-object v0, v4

    goto :goto_52
.end method

.method findTaskToMoveToFrontLocked(IILandroid/os/Bundle;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 3188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(IILandroid/os/Bundle;Z)V

    .line 3189
    return-void
.end method

.method findTaskToMoveToFrontLocked(IILandroid/os/Bundle;Z)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "isOnlyOneTask"    # Z

    .prologue
    .line 3193
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 3194
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->findTaskToMoveToFrontLocked(IILandroid/os/Bundle;Z)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3204
    :cond_18
    :goto_18
    return-void

    .line 3193
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3201
    :cond_1c
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_18

    .line 3202
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeActivity(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_18
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3179
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3180
    .local v0, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_7
    if-ge v2, v0, :cond_17

    .line 3181
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 3182
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3180
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3184
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_17
    return-void
.end method

.method forceStopPackageLocked(Ljava/lang/String;ZZI)Z
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "evenPersistent"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 3068
    const/4 v0, 0x0

    .line 3077
    .local v0, "didSomething":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_9
    if-ltz v2, :cond_1d

    .line 3078
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 3079
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->forceStopPackageLocked(Ljava/lang/String;ZZI)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 3080
    const/4 v0, 0x1

    .line 3077
    :cond_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 3083
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1d
    return v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3777
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_7

    .line 340
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 354
    :goto_6
    return-object v0

    .line 343
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 344
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_6

    .line 347
    :cond_12
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    packed-switch v0, :pswitch_data_1e

    .line 354
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_6

    .line 350
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_6

    .line 347
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 361
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 371
    :goto_e
    return-object v0

    .line 364
    :cond_f
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    packed-switch v0, :pswitch_data_1a

    .line 371
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_e

    .line 367
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_e

    .line 364
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method getNextTaskId()I
    .registers 2

    .prologue
    .line 524
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 525
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    if-gtz v0, :cond_d

    .line 526
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 528
    :cond_d
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 529
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    return v0
.end method

.method getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 4117
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_7

    .line 4118
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 4128
    :goto_6
    return-object v0

    .line 4121
    :cond_7
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    packed-switch v0, :pswitch_data_12

    .line 4128
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_6

    .line 4124
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_6

    .line 4121
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .registers 5
    .param p1, "stackId"    # I

    .prologue
    .line 3207
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_8
    if-ltz v1, :cond_1c

    .line 3208
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 3209
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 3213
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_18
    return-object v0

    .line 3207
    .restart local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 3213
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getStackCount(I)I
    .registers 5
    .param p1, "stackType"    # I

    .prologue
    .line 4392
    const/4 v0, 0x0

    .line 4393
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_9
    if-ltz v1, :cond_1c

    .line 4394
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackType:I

    if-ne v2, p1, :cond_19

    .line 4395
    add-int/lit8 v0, v0, 0x1

    .line 4393
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4398
    :cond_1c
    return v0
.end method

.method getStackOrder(Z)Ljava/util/ArrayList;
    .registers 13
    .param p1, "allStack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4290
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4291
    .local v3, "resultStackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getTaskOrder()Ljava/util/ArrayList;

    move-result-object v7

    .line 4293
    .local v7, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;>;"
    const/4 v8, 0x0

    .line 4294
    .local v8, "topStackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    const/4 v1, -0x1

    .line 4295
    .local v1, "currStackId":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;

    .line 4296
    .local v6, "taskInfo":Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;
    iget v9, v6, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;->stackId:I

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 4297
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget v9, v6, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;->stackId:I

    if-eq v1, v9, :cond_11

    if-eqz v4, :cond_11

    .line 4301
    iget v1, v6, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;->stackId:I

    .line 4303
    if-nez p1, :cond_6a

    .line 4304
    if-nez v8, :cond_55

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-nez v9, :cond_55

    .line 4305
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4306
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v9

    if-nez v9, :cond_4b

    if-eqz v0, :cond_55

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_55

    .line 4307
    :cond_4b
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->getRootStackBoxInfo(I)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v8

    .line 4311
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_55
    if-eqz v8, :cond_11

    .line 4315
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->getRootStackBoxInfo(I)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v5

    .line 4316
    .local v5, "stackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    if-eqz v5, :cond_6a

    iget v9, v5, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    iget v10, v8, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    if-eq v9, v10, :cond_6a

    .line 4325
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "stackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    .end local v6    # "taskInfo":Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;
    :cond_69
    return-object v3

    .line 4321
    .restart local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "taskInfo":Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;
    :cond_6a
    iget v9, v6, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;->stackId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 4322
    iget v9, v6, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;->stackId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method getStacks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getTasksLocked(ILandroid/app/IThumbnailReceiver;Lcom/android/server/am/PendingThumbnailsRecord;Ljava/util/List;I)Lcom/android/server/am/ActivityRecord;
    .registers 22
    .param p1, "maxNum"    # I
    .param p2, "receiver"    # Landroid/app/IThumbnailReceiver;
    .param p3, "pending"    # Lcom/android/server/am/PendingThumbnailsRecord;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/IThumbnailReceiver;",
            "Lcom/android/server/am/PendingThumbnailsRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;I)",
            "Lcom/android/server/am/ActivityRecord;"
        }
    .end annotation

    .prologue
    .line 808
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v9, 0x0

    .line 811
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 812
    .local v8, "numStacks":I
    new-array v10, v8, [Ljava/util/ArrayList;

    .line 813
    .local v10, "runningTaskLists":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    add-int/lit8 v13, v8, -0x1

    .local v13, "stackNdx":I
    :goto_d
    if-ltz v13, :cond_44

    .line 814
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityStack;

    .line 815
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v14, "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    aput-object v14, v10, v13

    .line 817
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-virtual {v12, v0, v1, v14, v2}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Landroid/app/IThumbnailReceiver;Lcom/android/server/am/PendingThumbnailsRecord;Ljava/util/List;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 818
    .local v3, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v15

    if-eqz v15, :cond_33

    .line 819
    move-object v9, v3

    .line 813
    :cond_33
    add-int/lit8 v13, v13, -0x1

    goto :goto_d

    .line 838
    .end local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .local v6, "mostRecentActiveTime":J
    .local v11, "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_36
    if-eqz v11, :cond_66

    .line 839
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    add-int/lit8 p1, p1, -0x1

    .line 825
    .end local v6    # "mostRecentActiveTime":J
    .end local v11    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_44
    if-lez p1, :cond_66

    .line 826
    const-wide/high16 v6, -0x8000000000000000L

    .line 827
    .restart local v6    # "mostRecentActiveTime":J
    const/4 v11, 0x0

    .line 828
    .restart local v11    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v13, 0x0

    :goto_4a
    if-ge v13, v8, :cond_36

    .line 829
    aget-object v14, v10, v13

    .line 830
    .restart local v14    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_63

    .line 831
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-wide v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 832
    .local v4, "lastActiveTime":J
    cmp-long v15, v4, v6

    if-lez v15, :cond_63

    .line 833
    move-wide v6, v4

    .line 834
    move-object v11, v14

    .line 828
    .end local v4    # "lastActiveTime":J
    :cond_63
    add-int/lit8 v13, v13, 0x1

    goto :goto_4a

    .line 846
    .end local v6    # "mostRecentActiveTime":J
    .end local v11    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v14    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_66
    return-object v9
.end method

.method goingToSleepLocked()V
    .registers 3

    .prologue
    .line 3411
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 3412
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_26

    .line 3413
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3414
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3418
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3419
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3422
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 3423
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3571
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3572
    .local v0, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_7
    if-ge v2, v0, :cond_17

    .line 3573
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 3574
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3572
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3576
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_17
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3043
    const/4 v0, 0x0

    .line 3044
    .local v0, "hasVisibleActivities":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 3045
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 3044
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3047
    :cond_1b
    return v0
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 14
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/16 v11, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 377
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_c
    move v7, v8

    .line 414
    :cond_d
    :goto_d
    return v7

    .line 381
    :cond_e
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v6, :cond_95

    .line 382
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStackOrder(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 383
    .local v4, "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 384
    .local v3, "obscuredZone":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 385
    .local v0, "N":I
    if-nez v0, :cond_23

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-nez v6, :cond_d

    .line 388
    :cond_23
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, v0, :cond_92

    .line 389
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 390
    .local v1, "currStack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_55

    .line 391
    const-string v6, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isFrontStack: stack is not exist. id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 394
    :cond_55
    if-ne v1, p1, :cond_8c

    .line 395
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 396
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_79

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v9, :cond_79

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_77

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_79

    :cond_77
    move v7, v8

    .line 399
    goto :goto_d

    .line 402
    :cond_79
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getLifeCycleObscuredZone()I

    move-result v6

    if-ne v6, v11, :cond_88

    .line 403
    and-int/lit8 v6, v3, 0xf

    if-nez v6, :cond_86

    move v6, v7

    :goto_84
    move v7, v6

    goto :goto_d

    :cond_86
    move v6, v8

    goto :goto_84

    .line 405
    :cond_88
    if-ne v3, v11, :cond_d

    move v7, v8

    goto :goto_d

    .line 409
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_8c
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getLifeCycleObscuredZone()I

    move-result v6

    or-int/2addr v3, v6

    goto :goto_52

    .end local v1    # "currStack":Lcom/android/server/am/ActivityStack;
    :cond_92
    move v7, v8

    .line 411
    goto/16 :goto_d

    .line 414
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "obscuredZone":I
    .end local v4    # "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_95
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    xor-int/2addr v6, v9

    if-eqz v6, :cond_d

    move v7, v8

    goto/16 :goto_d
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 513
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_8
    if-ltz v1, :cond_1c

    .line 514
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 515
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_19

    .line 519
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_18
    return-object v0

    .line 513
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 519
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method moveHomeStack(Z)V
    .registers 3
    .param p1, "toFront"    # Z

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZZ)V

    .line 420
    return-void
.end method

.method moveHomeStack(ZZ)V
    .registers 11
    .param p1, "toFront"    # Z
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v7, 0x0

    .line 423
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    .line 426
    .local v2, "homeInFront":Z
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->mCallbackHomeStart:Landroid/os/IRunnableCallback;

    if-eqz v5, :cond_51

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "bd":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 431
    .local v3, "out":Landroid/os/Bundle;
    :try_start_d
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_4b

    .line 433
    .end local v3    # "out":Landroid/os/Bundle;
    .local v4, "out":Landroid/os/Bundle;
    :try_start_12
    const-string v5, "api"

    const-string v6, "moveHomeStack"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string/jumbo v5, "toFront"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    const-string v5, "forceUpdate"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    const-string v5, "homeInFront"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->mCallbackHomeStart:Landroid/os/IRunnableCallback;

    invoke-interface {v5, v4}, Landroid/os/IRunnableCallback;->run(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_51

    const-string v5, "false"

    const-string v6, "result"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 441
    const-string v5, "ActivityManager"

    const-string/jumbo v6, "skip moveHomeStack"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v5, 0x0

    sput-object v5, Lcom/android/server/am/ActivityManagerService;->mCallbackHomeStart:Landroid/os/IRunnableCallback;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4a} :catch_5d

    .line 458
    .end local v0    # "bd":Landroid/os/Bundle;
    .end local v4    # "out":Landroid/os/Bundle;
    :cond_4a
    :goto_4a
    return-void

    .line 445
    .restart local v0    # "bd":Landroid/os/Bundle;
    .restart local v3    # "out":Landroid/os/Bundle;
    :catch_4b
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Exception;
    :goto_4c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    sput-object v7, Lcom/android/server/am/ActivityManagerService;->mCallbackHomeStart:Landroid/os/IRunnableCallback;

    .line 452
    .end local v0    # "bd":Landroid/os/Bundle;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "out":Landroid/os/Bundle;
    :cond_51
    xor-int v5, v2, p1

    if-eqz v5, :cond_4a

    .line 456
    if-eqz v2, :cond_5b

    const/4 v5, 0x1

    :goto_58
    iput v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_4a

    :cond_5b
    const/4 v5, 0x3

    goto :goto_58

    .line 445
    .restart local v0    # "bd":Landroid/os/Bundle;
    .restart local v4    # "out":Landroid/os/Bundle;
    :catch_5d
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Landroid/os/Bundle;
    .restart local v3    # "out":Landroid/os/Bundle;
    goto :goto_4c
.end method

.method moveHomeToTop()V
    .registers 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkResumeHomeStack()Z

    move-result v0

    if-nez v0, :cond_7

    .line 476
    :goto_6
    return-void

    .line 474
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->moveHomeTaskToTop()V

    goto :goto_6
.end method

.method moveStack(Lcom/android/server/am/ActivityStack;Z)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toFront"    # Z

    .prologue
    .line 462
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 466
    :goto_8
    return-void

    .line 465
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    goto :goto_8
.end method

.method moveTaskToStack(IIZ)V
    .registers 15
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 3244
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 3245
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    if-nez v3, :cond_7

    .line 3292
    :cond_6
    :goto_6
    return-void

    .line 3248
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3249
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_26

    .line 3250
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "moveTaskToStack: no stack for id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3254
    :cond_26
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    .line 3255
    .local v5, "wasInFloatingStack":Z
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    .line 3257
    .local v6, "willBeInFloatingStack":Z
    const v8, 0x12c4b2

    const/4 v7, 0x3

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v10, 0x2

    if-eqz p3, :cond_a3

    const/4 v7, 0x1

    :goto_48
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3258
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3261
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeTask(Lcom/android/server/am/TaskRecord;)V

    .line 3263
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3264
    .local v2, "stackTopActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3266
    .local v4, "taskTopActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1, v3, p3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 3268
    invoke-virtual {v0, v3, v1, p3}, Lcom/android/server/am/ActivityStack;->postProcessAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 3269
    if-eqz p2, :cond_7e

    if-eqz v2, :cond_7e

    if-eqz v4, :cond_7e

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 3271
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v3, v7}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3272
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v1, v4, v7, v8}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3276
    :cond_7e
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-nez p2, :cond_a5

    const/4 v7, 0x0

    :goto_83
    invoke-virtual {v8, p1, p2, p3, v7}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 3278
    if-eqz p2, :cond_6

    .line 3279
    if-eqz p3, :cond_9e

    .line 3281
    if-nez v5, :cond_a7

    if-eqz v6, :cond_a7

    .line 3282
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3287
    :goto_99
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, p1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 3290
    :cond_9e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto/16 :goto_6

    .line 3257
    .end local v0    # "prevStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "stackTopActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "taskTopActivity":Lcom/android/server/am/ActivityRecord;
    :cond_a3
    const/4 v7, 0x0

    goto :goto_48

    .line 3276
    .restart local v0    # "prevStack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stackTopActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "taskTopActivity":Lcom/android/server/am/ActivityRecord;
    :cond_a5
    const/4 v7, 0x1

    goto :goto_83

    .line 3285
    :cond_a7
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_99
.end method

.method public multiWindowSettingChanged(Z)V
    .registers 15
    .param p1, "value"    # Z

    .prologue
    .line 4219
    const/4 v9, -0x1

    .line 4220
    .local v9, "topNormalStack":I
    const/4 v1, -0x1

    .line 4221
    .local v1, "currentStackBoxId":I
    const/4 v2, -0x1

    .line 4223
    .local v2, "frontStackIdOfStackBox":I
    if-nez p1, :cond_f0

    .line 4224
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->getStackOrder(Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 4226
    .local v7, "stackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "idx":I
    :goto_12
    if-ltz v4, :cond_d1

    .line 4227
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 4228
    .local v6, "stackId":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4231
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 4226
    :cond_2a
    add-int/lit8 v4, v4, -0x1

    goto :goto_12

    .line 4235
    :cond_2d
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v10

    if-nez v10, :cond_2a

    .line 4240
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->getRootStackBoxInfo(I)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v10

    iget v10, v10, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    if-eq v1, v10, :cond_92

    .line 4242
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->getRootStackBoxInfo(I)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v10

    iget v1, v10, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    .line 4243
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4244
    const/4 v10, -0x1

    if-ne v1, v10, :cond_55

    .line 4245
    move v9, v2

    .line 4247
    :cond_55
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5d
    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 4248
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4249
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_5d

    .line 4250
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 4251
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v8, v10}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 4252
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 4253
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v10, v11}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 4258
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 4259
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_5d

    .line 4261
    :cond_8e
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_5d

    .line 4267
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_92
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_9a
    :goto_9a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 4268
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4269
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_9a

    .line 4270
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 4271
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v8, v10}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 4272
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 4273
    iget v11, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v10, -0x1

    if-ne v2, v10, :cond_ca

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget v10, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_c5
    const/4 v12, 0x1

    invoke-virtual {p0, v11, v10, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZ)V

    goto :goto_9a

    :cond_ca
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    iget v10, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_c5

    .line 4279
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "stackId":Ljava/lang/Integer;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_d1
    iget v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_db

    iget v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_ec

    .line 4280
    :cond_db
    const/4 v10, -0x1

    if-eq v9, v10, :cond_ec

    .line 4281
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4285
    :cond_ec
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(Z)Z

    .line 4287
    .end local v4    # "idx":I
    .end local v7    # "stackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_f0
    return-void
.end method

.method final notifyGlobalMultiWindowStatusChangedLocked()V
    .registers 9

    .prologue
    .line 4136
    const/4 v0, 0x0

    .line 4137
    .local v0, "hasMultiWindowStack":Z
    const/4 v1, 0x0

    .line 4139
    .local v1, "hasRunningCascadeApp":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 4140
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x0

    .line 4141
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 4142
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-eqz v6, :cond_8

    .line 4143
    const/4 v0, 0x1

    .line 4144
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 4145
    const/4 v1, 0x1

    goto :goto_8

    .line 4151
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_35
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasMultiWindowStack:Z

    if-ne v0, v6, :cond_3d

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    if-eq v1, v6, :cond_61

    .line 4152
    :cond_3d
    const-string/jumbo v7, "sys.multiwindow.running"

    if-eqz v0, :cond_62

    const-string v6, "1"

    :goto_44
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4155
    .local v3, "multiWindowModeIntent":Landroid/content/Intent;
    const-string v6, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4156
    const-string v6, "com.sec.android.extra.MULTIWINDOW_FREESTYLE"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4157
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4159
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasMultiWindowStack:Z

    .line 4160
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    .line 4162
    .end local v3    # "multiWindowModeIntent":Landroid/content/Intent;
    :cond_61
    return-void

    .line 4152
    :cond_62
    const-string v6, "0"

    goto :goto_44
.end method

.method public notifyResizeStackBox()V
    .registers 13

    .prologue
    .line 4170
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 4171
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4172
    .local v4, "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 4173
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4174
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 4175
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 4176
    .local v5, "taskRecord":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_28

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v9, :cond_28

    .line 4177
    iget v7, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 4187
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "taskRecord":Lcom/android/server/am/TaskRecord;
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_4e
    move-exception v7

    monitor-exit v8
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v7

    .line 4183
    .restart local v4    # "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_52
    :try_start_52
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_74

    .line 4184
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 4185
    .restart local v5    # "taskRecord":Lcom/android/server/am/TaskRecord;
    iget-object v7, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 4183
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 4187
    .end local v5    # "taskRecord":Lcom/android/server/am/TaskRecord;
    :cond_74
    monitor-exit v8
    :try_end_75
    .catchall {:try_start_52 .. :try_end_75} :catchall_4e

    .line 4188
    return-void
.end method

.method pauseBackStacks(Z)Z
    .registers 6
    .param p1, "userLeaving"    # Z

    .prologue
    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, "someActivityPaused":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_9
    if-ltz v2, :cond_25

    .line 713
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 714
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_22

    .line 717
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 718
    const/4 v0, 0x1

    .line 712
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 721
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_25
    return v0
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .registers 10
    .param p1, "remove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3672
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3673
    .local v0, "N":I
    if-gtz v0, :cond_b

    const/4 v4, 0x0

    .line 3708
    :cond_a
    return-object v4

    .line 3675
    :cond_b
    const/4 v4, 0x0

    .line 3677
    .local v4, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v2

    .line 3678
    .local v2, "nowVisible":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_a

    .line 3679
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3683
    .local v3, "s":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_33

    if-eqz v2, :cond_33

    .line 3684
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3685
    iput-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 3686
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_33

    .line 3693
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3696
    :cond_33
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_3f

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_54

    :cond_3f
    if-eqz p1, :cond_54

    .line 3698
    if-nez v4, :cond_48

    .line 3699
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3701
    .restart local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3702
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3703
    add-int/lit8 v0, v0, -0x1

    .line 3704
    add-int/lit8 v1, v1, -0x1

    .line 3678
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 30
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1147
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1152
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1160
    if-eqz p4, :cond_3e

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_ea

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_2d
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v19

    .line 1164
    .local v19, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 1167
    .end local v19    # "config":Landroid/content/res/Configuration;
    :cond_3e
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1168
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1169
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 1174
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    .line 1175
    .local v21, "idx":I
    if-gez v21, :cond_70

    .line 1176
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1181
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v23, v0

    .line 1183
    .local v23, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_8a
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_ed

    .line 1184
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_96} :catch_96

    .line 1273
    :catch_96
    move-exception v20

    .line 1274
    .local v20, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v2, :cond_334

    .line 1277
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second failure launching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", giving up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 1281
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "2nd-crash"

    const/4 v7, 0x0

    move-object/from16 v2, v23

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1283
    const/4 v2, 0x0

    .line 1323
    .end local v20    # "e":Landroid/os/RemoteException;
    :goto_e9
    return v2

    .line 1161
    .end local v21    # "idx":I
    .end local v23    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_ea
    const/4 v2, 0x0

    goto/16 :goto_2d

    .line 1186
    .restart local v21    # "idx":I
    .restart local v23    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_ed
    const/4 v11, 0x0

    .line 1187
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v12, 0x0

    .line 1188
    .local v12, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_f9

    .line 1189
    :try_start_f1
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1190
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1197
    :cond_f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v2, :cond_129

    .line 1198
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTIVITY_STATE"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v18, "activityStateIntent":Landroid/content/Intent;
    const-string v2, "activityPackageName"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    const-string v2, "activityState"

    const-string v3, "create"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.activitymanager.permission.GET_ACTIVITY_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1204
    .end local v18    # "activityStateIntent":Landroid/content/Intent;
    :cond_129
    if-eqz p3, :cond_15d

    .line 1205
    const/16 v2, 0x7536

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1209
    :cond_15d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v2

    if-eqz v2, :cond_17e

    .line 1211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v3, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1213
    :cond_17e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 1214
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1215
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 1218
    const/4 v15, 0x0

    .line 1219
    .local v15, "profileFile":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1220
    .local v16, "profileFd":Landroid/os/ParcelFileDescriptor;
    const/16 v17, 0x0

    .line 1221
    .local v17, "profileAutoStop":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v2, :cond_203

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_203

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1e5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_203

    .line 1223
    :cond_1e5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v16, v0

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move/from16 v17, v0

    .line 1229
    :cond_203
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1230
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_20d
    .catch Landroid/os/RemoteException; {:try_start_f1 .. :try_end_20d} :catch_96

    .line 1231
    if-eqz v16, :cond_213

    .line 1233
    :try_start_20f
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_212
    .catch Ljava/io/IOException; {:try_start_20f .. :try_end_212} :catch_327
    .catch Landroid/os/RemoteException; {:try_start_20f .. :try_end_212} :catch_96

    move-result-object v16

    .line 1244
    :cond_213
    :goto_213
    const/4 v2, 0x2

    :try_start_214
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1245
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    if-nez p3, :cond_331

    const/4 v13, 0x1

    :goto_24c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v14

    invoke-interface/range {v2 .. v17}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;ILandroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 1253
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2db

    .line 1258
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2db

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2b6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_2b6

    .line 1261
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new heavy weight process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when already running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 1268
    .local v22, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2db
    .catch Landroid/os/RemoteException; {:try_start_214 .. :try_end_2db} :catch_96

    .line 1294
    .end local v22    # "msg":Landroid/os/Message;
    :cond_2db
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1295
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_30a

    .line 1296
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " being launched, but already in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_30a
    if-eqz p3, :cond_348

    .line 1303
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1319
    :goto_313
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_324

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 1323
    :cond_324
    const/4 v2, 0x1

    goto/16 :goto_e9

    .line 1234
    :catch_327
    move-exception v20

    .line 1235
    .local v20, "e":Ljava/io/IOException;
    if-eqz v16, :cond_213

    .line 1237
    :try_start_32a
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32d
    .catch Ljava/io/IOException; {:try_start_32a .. :try_end_32d} :catch_354
    .catch Landroid/os/RemoteException; {:try_start_32a .. :try_end_32d} :catch_96

    .line 1240
    :goto_32d
    const/16 v16, 0x0

    goto/16 :goto_213

    .line 1245
    .end local v20    # "e":Ljava/io/IOException;
    :cond_331
    const/4 v13, 0x0

    goto/16 :goto_24c

    .line 1288
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v12    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v15    # "profileFile":Ljava/lang/String;
    .end local v16    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "profileAutoStop":Z
    .local v20, "e":Landroid/os/RemoteException;
    :cond_334
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1289
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1290
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1291
    throw v20

    .line 1311
    .end local v20    # "e":Landroid/os/RemoteException;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v12    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v15    # "profileFile":Ljava/lang/String;
    .restart local v16    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "profileAutoStop":Z
    :cond_348
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1312
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_313

    .line 1238
    .local v20, "e":Ljava/io/IOException;
    :catch_354
    move-exception v2

    goto :goto_32d
.end method

.method removeSleepTimeouts()V
    .registers 3

    .prologue
    .line 3981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 3982
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 3983
    return-void
.end method

.method removeStack(I)V
    .registers 4
    .param p1, "stackId"    # I

    .prologue
    .line 585
    if-gez p1, :cond_3

    .line 592
    :cond_2
    :goto_2
    return-void

    .line 588
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 589
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2

    .line 590
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 534
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->removeTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 535
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Z)V
    .registers 15
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "removeEmptyStack"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 541
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->removeTask(I)V

    .line 542
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 543
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 544
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_16

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v6, p1, :cond_16

    .line 545
    iput-object v7, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 547
    :cond_16
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_9d

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-nez v6, :cond_9d

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v6

    if-nez v6, :cond_9d

    if-eqz p2, :cond_9d

    .line 550
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 551
    iget v5, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 552
    .local v5, "stackId":I
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowManagerService;->removeStack(I)I

    move-result v2

    .line 554
    .local v2, "nextStackId":I
    const v6, 0x12c4b1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const-string/jumbo v9, "task removed"

    aput-object v9, v8, v11

    invoke-static {v6, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 556
    const/4 v6, -0x1

    if-ne v2, v6, :cond_54

    .line 557
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    iget v2, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 561
    :cond_54
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_68

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v6, v5, :cond_68

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_68

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v6, v5, :cond_9a

    .line 565
    :cond_68
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 566
    .local v1, "nextStack":Lcom/android/server/am/ActivityStack;
    if-ne v2, v11, :cond_9e

    move-object v6, v7

    :goto_6f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove task "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 567
    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v6

    if-nez v6, :cond_9a

    .line 568
    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 569
    .local v0, "nextRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_9a

    .line 570
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 578
    .end local v0    # "nextRecord":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "nextStack":Lcom/android/server/am/ActivityStack;
    :cond_9a
    invoke-virtual {p0, v7, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 581
    .end local v2    # "nextStackId":I
    .end local v5    # "stackId":I
    :cond_9d
    return-void

    .restart local v1    # "nextStack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "nextStackId":I
    .restart local v5    # "stackId":I
    :cond_9e
    move-object v6, v1

    .line 566
    goto :goto_6f
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3973
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3974
    return-void
.end method

.method removeUserLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 3061
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3062
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .registers 12
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .prologue
    .line 775
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2c

    .line 776
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 777
    .local v1, "w":Landroid/app/IActivityManager$WaitResult;
    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 778
    if-eqz p2, :cond_25

    .line 779
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 781
    :cond_25
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 782
    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 775
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 784
    .end local v1    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2c
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 785
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 760
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_36

    .line 761
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 762
    .local v1, "w":Landroid/app/IActivityManager$WaitResult;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 763
    if-eqz p1, :cond_26

    .line 764
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 766
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 767
    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 760
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 769
    .end local v1    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_36
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 770
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->dismissKeyguard()V

    .line 771
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3558
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3559
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3560
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3562
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3563
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 3564
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 3567
    :goto_20
    return v1

    :cond_21
    move v1, v2

    goto :goto_20
.end method

.method public resetOnTopOfHome()V
    .registers 5

    .prologue
    .line 4380
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_3d

    .line 4381
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 4380
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4384
    :cond_1c
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 4385
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setOnTopOfHome(Z)V

    goto :goto_2c

    .line 4389
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3d
    return-void
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profileFile"    # Ljava/lang/String;
    .param p5, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 854
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10480

    invoke-interface {v0, p1, p2, v1, p6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 863
    .local v8, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_6c

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_6e

    .line 868
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_11
    if-eqz v6, :cond_6b

    .line 873
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 877
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_37

    .line 878
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 879
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 883
    :cond_37
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_4f

    .line 884
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 885
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 889
    :cond_4f
    if-eqz p4, :cond_6b

    .line 890
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 891
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_71

    :goto_66
    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 897
    :cond_6b
    return-object v6

    .line 863
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_6c
    const/4 v6, 0x0

    goto :goto_11

    .line 864
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_6e
    move-exception v7

    .line 865
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_11

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_71
    move v5, v3

    .line 891
    goto :goto_66
.end method

.method resumeHomeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .registers 6
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 479
    if-eqz p1, :cond_8

    .line 480
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-boolean v1, v2, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    .line 483
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkResumeHomeStack()Z

    move-result v2

    if-nez v2, :cond_f

    .line 493
    :goto_e
    return v1

    .line 487
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeToTop()V

    .line 488
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 489
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 490
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 491
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_e

    .line 493
    :cond_2c
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v1

    goto :goto_e
.end method

.method resumeTopActivitiesLocked()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3123
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .registers 12
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 3129
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivity:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3131
    if-nez p1, :cond_10

    .line 3132
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 3136
    :cond_10
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyle()V

    .line 3139
    const/4 v1, 0x0

    .line 3140
    .local v1, "result":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3142
    .local v4, "stackSize":I
    const/4 v0, 0x0

    .line 3144
    .local v0, "hasFrontStack":Z
    const/4 v3, 0x1

    .local v3, "stackNdx":I
    :goto_20
    if-ge v3, v4, :cond_57

    .line 3145
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3146
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 3148
    const/4 v0, 0x1

    .line 3150
    if-ne v2, p1, :cond_3a

    .line 3151
    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    .line 3144
    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 3153
    :cond_3a
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-nez v5, :cond_53

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v5

    if-nez v5, :cond_53

    .line 3154
    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusedStack(Lcom/android/server/am/ActivityRecord;)V

    .line 3156
    :cond_53
    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_37

    .line 3163
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_57
    if-nez v0, :cond_67

    .line 3164
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:Z

    if-nez v5, :cond_67

    .line 3165
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeToTop()V

    .line 3166
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3172
    :cond_67
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyGlobalMultiWindowStatusChangedLocked()V

    .line 3175
    return v1
.end method

.method resumedAppLocked()Lcom/android/server/am/ActivityRecord;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 596
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 597
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_9

    move-object v1, v3

    .line 616
    :cond_8
    :goto_8
    return-object v1

    .line 600
    :cond_9
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 601
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_11

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_8

    .line 602
    :cond_11
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 605
    iget-object v4, v2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 606
    .local v0, "N":I
    if-lez v0, :cond_25

    .line 608
    iget-object v4, v2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 612
    .restart local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_25
    if-eqz v1, :cond_2b

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_8

    .line 613
    :cond_2b
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_8
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3633
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3634
    .local v0, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 3635
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 3636
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    .line 3634
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3638
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_18
    return-void
.end method

.method final scheduleIdleLocked()V
    .registers 3

    .prologue
    .line 3968
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 3969
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3963
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3964
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3965
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .registers 3

    .prologue
    .line 3977
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 3978
    return-void
.end method

.method final scheduleSleepTimeout()V
    .registers 5

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3987
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3988
    return-void
.end method

.method setDismissKeyguard(Z)V
    .registers 2
    .param p1, "dismiss"    # Z

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    .line 499
    return-void
.end method

.method setFocusedStack(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2185
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2186
    if-nez p1, :cond_7

    .line 2187
    :try_start_5
    monitor-exit v2

    .line 2227
    :goto_6
    return-void

    .line 2188
    :cond_7
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1f

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v1, :cond_1f

    .line 2189
    const-string v1, "ActivityManager"

    const-string v3, "setFocusedStack to HIDDEN_STACK !!!"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    monitor-exit v2

    goto :goto_6

    .line 2226
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1

    .line 2193
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_3a

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 2194
    :cond_31
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    if-eqz v1, :cond_38

    .line 2199
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    .line 2226
    :cond_38
    :goto_38
    monitor-exit v2

    goto :goto_6

    .line 2205
    :cond_3a
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const-string v3, "change-focus"

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2207
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2208
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2210
    .local v0, "topTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_5c

    .line 2211
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 2214
    :cond_5c
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_38

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v1

    if-nez v1, :cond_38

    .line 2223
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I
    :try_end_6c
    .catchall {:try_start_1f .. :try_end_6c} :catchall_1c

    goto :goto_38
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 15
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v11, -0x1

    .line 317
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 320
    new-instance v0, Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;II)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 321
    const v0, 0x12c4b0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "home-created"

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 323
    new-instance v5, Lcom/android/server/am/ActivityStack;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;II)V

    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHiddenStack:Lcom/android/server/am/ActivityStack;

    .line 324
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHiddenStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    const v0, 0x12c4b0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "hidden-created"

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 327
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method shutdownLocked(I)Z
    .registers 13
    .param p1, "timeout"    # I

    .prologue
    .line 3426
    const/4 v6, 0x0

    .line 3427
    .local v6, "timedout":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 3429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    int-to-long v9, p1

    add-long v1, v7, v9

    .line 3431
    .local v1, "endTime":J
    :goto_b
    const/4 v0, 0x0

    .line 3432
    .local v0, "cantShutdown":Z
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "stackNdx":I
    :goto_14
    if-ltz v3, :cond_26

    .line 3433
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v7

    or-int/2addr v0, v7

    .line 3432
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 3435
    :cond_26
    if-eqz v0, :cond_44

    .line 3436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v4, v1, v7

    .line 3437
    .local v4, "timeRemaining":J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_3c

    .line 3439
    :try_start_34
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_b

    .line 3440
    :catch_3a
    move-exception v7

    goto :goto_b

    .line 3443
    :cond_3c
    const-string v7, "ActivityManager"

    const-string v8, "Activity manager shutdown timed out"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    const/4 v6, 0x1

    .line 3453
    .end local v4    # "timeRemaining":J
    :cond_44
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 3454
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 3456
    return v6
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .registers 33
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 1067
    if-nez p4, :cond_a

    .line 1068
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "intents is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1070
    :cond_a
    if-nez p5, :cond_14

    .line 1071
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "resolvedTypes is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1073
    :cond_14
    move-object/from16 v0, p4

    array-length v1, v0

    move-object/from16 v0, p5

    array-length v3, v0

    if-eq v1, v3, :cond_24

    .line 1074
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "intents are length different than resolvedTypes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1079
    :cond_24
    if-ltz p2, :cond_49

    .line 1080
    const/4 v11, -0x1

    .line 1087
    .local v11, "callingPid":I
    :goto_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1089
    .local v20, "origId":J
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_6c

    .line 1090
    const/4 v1, 0x1

    :try_start_33
    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    .line 1091
    .local v17, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_39
    move-object/from16 v0, p4

    array-length v1, v0

    move/from16 v0, v18

    if-ge v0, v1, :cond_e8

    .line 1092
    aget-object v19, p4, v18
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_69

    .line 1093
    .local v19, "intent":Landroid/content/Intent;
    if-nez v19, :cond_59

    move-object/from16 v2, v19

    .line 1091
    .end local v19    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :goto_46
    add-int/lit8 v18, v18, 0x1

    goto :goto_39

    .line 1081
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v11    # "callingPid":I
    .end local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v18    # "i":I
    .end local v20    # "origId":J
    :cond_49
    if-nez p1, :cond_54

    .line 1082
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1083
    .restart local v11    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_27

    .line 1085
    .end local v11    # "callingPid":I
    :cond_54
    const/16 p2, -0x1

    move/from16 v11, p2

    .restart local v11    # "callingPid":I
    goto :goto_27

    .line 1098
    .restart local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "i":I
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v20    # "origId":J
    :cond_59
    if-eqz v19, :cond_71

    :try_start_5b
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1099
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1135
    .end local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v18    # "i":I
    .end local v19    # "intent":Landroid/content/Intent;
    :catchall_69
    move-exception v1

    monitor-exit v23
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    .line 1137
    :catchall_6c
    move-exception v1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1102
    .restart local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "i":I
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_71
    :try_start_71
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_aa

    const/16 v16, 0x1

    .line 1105
    .local v16, "componentSpecified":Z
    :goto_79
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1108
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    aget-object v3, p5, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 1111
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 1113
    if-eqz v7, :cond_ad

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_ad

    .line 1116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1102
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "componentSpecified":Z
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_aa
    const/16 v16, 0x0

    goto :goto_79

    .line 1121
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "componentSpecified":Z
    :cond_ad
    if-eqz p7, :cond_d5

    move-object/from16 v0, p4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_d5

    .line 1122
    move-object/from16 v15, p7

    .line 1126
    .local v15, "theseOptions":Landroid/os/Bundle;
    :goto_ba
    aget-object v6, p5, v18

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v8, p6

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    .line 1129
    .local v22, "res":I
    if-gez v22, :cond_d7

    .line 1130
    monitor-exit v23
    :try_end_d1
    .catchall {:try_start_71 .. :try_end_d1} :catchall_69

    .line 1137
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1140
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "theseOptions":Landroid/os/Bundle;
    .end local v16    # "componentSpecified":Z
    .end local v22    # "res":I
    :goto_d4
    return v22

    .line 1124
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "componentSpecified":Z
    :cond_d5
    const/4 v15, 0x0

    .restart local v15    # "theseOptions":Landroid/os/Bundle;
    goto :goto_ba

    .line 1133
    .restart local v22    # "res":I
    :cond_d7
    const/4 v1, 0x0

    :try_start_d8
    aget-object v1, v17, v1

    if-eqz v1, :cond_e5

    const/4 v1, 0x0

    aget-object v1, v17, v1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0

    :goto_e3
    goto/16 :goto_46

    :cond_e5
    const/16 p6, 0x0

    goto :goto_e3

    .line 1135
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "theseOptions":Landroid/os/Bundle;
    .end local v16    # "componentSpecified":Z
    .end local v22    # "res":I
    :cond_e8
    monitor-exit v23
    :try_end_e9
    .catchall {:try_start_d8 .. :try_end_e9} :catchall_69

    .line 1137
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1140
    const/16 v22, 0x0

    goto :goto_d4
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .registers 82
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPackage"    # Ljava/lang/String;
    .param p11, "startFlags"    # I
    .param p12, "options"    # Landroid/os/Bundle;
    .param p13, "componentSpecified"    # Z
    .param p14, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1373
    const/16 v41, 0x0

    .line 1374
    .local v41, "cmp":Landroid/content/ComponentName;
    const-string v40, ""

    .line 1377
    .local v40, "className":Ljava/lang/String;
    :try_start_4
    new-instance v54, Landroid/content/Intent;

    move-object/from16 v0, v54

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1378
    .local v54, "mEdmIntent":Landroid/content/Intent;
    invoke-virtual/range {v54 .. v54}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v41

    .line 1379
    const-string v6, ":android:show_fragment"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1380
    if-nez v40, :cond_21

    if-eqz v41, :cond_21

    .line 1381
    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_18c

    move-result-object v40

    .line 1388
    .end local v54    # "mEdmIntent":Landroid/content/Intent;
    :cond_21
    :goto_21
    const/16 v44, 0x0

    .line 1390
    .local v44, "err":I
    const/16 v19, 0x0

    .line 1391
    .local v19, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_41

    .line 1392
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v19

    .line 1393
    if-eqz v19, :cond_192

    .line 1394
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p8, v0

    .line 1395
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p9, v0

    .line 1408
    :cond_41
    :goto_41
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v56

    .line 1409
    .local v56, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v6, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v56

    invoke-direct {v6, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1412
    if-eqz v41, :cond_216

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_216

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "com.android.settings"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_216

    .line 1414
    :try_start_6b
    const-string v6, "restriction_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v60

    .line 1415
    .local v60, "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v60, :cond_bf

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v6, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v8, 0x0

    move-object/from16 v0, v60

    invoke-interface {v0, v6, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v6

    if-nez v6, :cond_bf

    .line 1417
    const/16 v47, 0x0

    .line 1418
    .local v47, "isActivityAllowed":Z
    const-string v6, ":android:show_fragment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1419
    .local v36, "activity":Ljava/lang/String;
    if-nez v36, :cond_99

    .line 1420
    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v36

    .line 1422
    :cond_99
    sget-object v39, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .local v39, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v52, v0

    .local v52, "len$":I
    const/16 v46, 0x0

    .local v46, "i$":I
    :goto_a2
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_b6

    aget-object v45, v39, v46

    .line 1423
    .local v45, "exception":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca

    .line 1424
    const/16 v47, 0x1

    .line 1428
    .end local v45    # "exception":Ljava/lang/String;
    :cond_b6
    if-eqz v47, :cond_1ce

    .line 1429
    const/high16 v6, 0x800000

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_bf} :catch_210

    .line 1491
    .end local v36    # "activity":Ljava/lang/String;
    .end local v39    # "arr$":[Ljava/lang/String;
    .end local v46    # "i$":I
    .end local v47    # "isActivityAllowed":Z
    .end local v52    # "len$":I
    .end local v60    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :cond_bf
    :goto_bf
    if-eqz v41, :cond_361

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_361

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_361

    .line 1493
    :try_start_cd
    const-string v6, "password_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v59

    .line 1494
    .local v59, "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    const-string v6, "security_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;

    move-result-object v61

    .line 1495
    .local v61, "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    if-eqz v59, :cond_f4

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v6, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v59

    invoke-interface {v0, v6}, Landroid/app/enterprise/IPasswordPolicy;->isChangeRequestedEx(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    if-gtz v6, :cond_ff

    :cond_f4
    if-eqz v61, :cond_324

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-interface {v0, v6}, Landroid/app/enterprise/ISecurityPolicy;->isDodBannerVisible(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_324

    .line 1498
    :cond_ff
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v53

    .line 1499
    .local v53, "list":Ljava/util/List;
    if-eqz v53, :cond_324

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_324

    .line 1500
    const/4 v6, 0x0

    move-object/from16 v0, v53

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v64

    .line 1501
    .local v64, "topActivity":Ljava/lang/String;
    const/16 v47, 0x0

    .line 1502
    .restart local v47    # "isActivityAllowed":Z
    const/16 v49, 0x0

    .line 1503
    .local v49, "isTopActivityException":Z
    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v36

    .line 1504
    .restart local v36    # "activity":Ljava/lang/String;
    sget-object v39, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .restart local v39    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v52, v0

    .restart local v52    # "len$":I
    const/16 v46, 0x0

    .restart local v46    # "i$":I
    :goto_132
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_156

    aget-object v45, v39, v46

    .line 1505
    .restart local v45    # "exception":Ljava/lang/String;
    if-eqz v64, :cond_148

    move-object/from16 v0, v64

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_148

    .line 1506
    const/16 v49, 0x1

    .line 1508
    :cond_148
    if-eqz v36, :cond_31c

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31c

    .line 1509
    const/16 v47, 0x1

    .line 1513
    .end local v45    # "exception":Ljava/lang/String;
    :cond_156
    if-eqz v49, :cond_324

    if-nez v47, :cond_324

    .line 1514
    invoke-static/range {v56 .. v56}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1516
    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed. Blocked due to password change enforcement."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_18a} :catch_320

    .line 1520
    const/4 v6, 0x0

    .line 1897
    .end local v36    # "activity":Ljava/lang/String;
    .end local v39    # "arr$":[Ljava/lang/String;
    .end local v46    # "i$":I
    .end local v47    # "isActivityAllowed":Z
    .end local v49    # "isTopActivityException":Z
    .end local v52    # "len$":I
    .end local v53    # "list":Ljava/util/List;
    .end local v59    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v61    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v64    # "topActivity":Ljava/lang/String;
    :goto_18b
    return v6

    .line 1383
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v44    # "err":I
    .end local v56    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catch_18c
    move-exception v43

    .line 1384
    .local v43, "e":Ljava/lang/Exception;
    const-string/jumbo v40, "unknown"

    goto/16 :goto_21

    .line 1397
    .end local v43    # "e":Ljava/lang/Exception;
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v44    # "err":I
    :cond_192
    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find app for caller "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") when starting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const/16 v44, -0x4

    goto/16 :goto_41

    .line 1422
    .restart local v36    # "activity":Ljava/lang/String;
    .restart local v39    # "arr$":[Ljava/lang/String;
    .restart local v45    # "exception":Ljava/lang/String;
    .restart local v46    # "i$":I
    .restart local v47    # "isActivityAllowed":Z
    .restart local v52    # "len$":I
    .restart local v56    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v60    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :cond_1ca
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_a2

    .line 1431
    .end local v45    # "exception":Ljava/lang/String;
    :cond_1ce
    :try_start_1ce
    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v6, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v8, 0x1

    move-object/from16 v0, v60

    invoke-interface {v0, v6, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 1433
    invoke-static/range {v56 .. v56}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1435
    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed. Blocked due to settings changes not allowed."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_20d} :catch_210

    .line 1439
    const/4 v6, 0x0

    goto/16 :goto_18b

    .line 1442
    .end local v36    # "activity":Ljava/lang/String;
    .end local v39    # "arr$":[Ljava/lang/String;
    .end local v46    # "i$":I
    .end local v47    # "isActivityAllowed":Z
    .end local v52    # "len$":I
    .end local v60    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_210
    move-exception v43

    .line 1443
    .restart local v43    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_bf

    .line 1446
    .end local v43    # "e":Ljava/lang/Exception;
    :cond_216
    if-eqz v41, :cond_291

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_291

    sget-object v6, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_236

    sget-object v6, Landroid/app/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_291

    .line 1450
    :cond_236
    :try_start_236
    const-string v6, "kioskmode"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v50

    .line 1452
    .local v50, "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v50, :cond_bf

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v6, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v8, 0x1

    move-object/from16 v0, v50

    invoke-interface {v0, v6, v8}, Landroid/app/enterprise/kioskmode/IKioskMode;->isTaskManagerAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v6

    if-nez v6, :cond_bf

    .line 1454
    invoke-static/range {v56 .. v56}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1456
    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed. Task manager is not allowed."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_284} :catch_287

    .line 1460
    const/4 v6, 0x0

    goto/16 :goto_18b

    .line 1462
    .end local v50    # "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    :catch_287
    move-exception v43

    .line 1463
    .restart local v43    # "e":Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    const-string v8, "Is edm running?"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bf

    .line 1468
    .end local v43    # "e":Ljava/lang/Exception;
    :cond_291
    if-eqz v41, :cond_bf

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_bf

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "com.vlingo.midas"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 1470
    :try_start_2a5
    const-string v6, "restriction_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v60

    .line 1471
    .restart local v60    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v60, :cond_bf

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v6, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v8, 0x1

    move-object/from16 v0, v60

    invoke-interface {v0, v6, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v6

    if-eqz v6, :cond_2d5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v6, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v8, 0x1

    move-object/from16 v0, v60

    invoke-interface {v0, v6, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v6

    if-nez v6, :cond_bf

    .line 1474
    :cond_2d5
    const-string v6, ":android:show_fragment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1475
    .restart local v36    # "activity":Ljava/lang/String;
    if-nez v36, :cond_2e3

    .line 1476
    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v36

    .line 1478
    :cond_2e3
    invoke-static/range {v56 .. v56}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1480
    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed. Blocked due to S Voice not allowed."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_313
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_313} :catch_316

    .line 1484
    const/4 v6, 0x0

    goto/16 :goto_18b

    .line 1486
    .end local v36    # "activity":Ljava/lang/String;
    .end local v60    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_316
    move-exception v43

    .line 1487
    .restart local v43    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_bf

    .line 1504
    .end local v43    # "e":Ljava/lang/Exception;
    .restart local v36    # "activity":Ljava/lang/String;
    .restart local v39    # "arr$":[Ljava/lang/String;
    .restart local v45    # "exception":Ljava/lang/String;
    .restart local v46    # "i$":I
    .restart local v47    # "isActivityAllowed":Z
    .restart local v49    # "isTopActivityException":Z
    .restart local v52    # "len$":I
    .restart local v53    # "list":Ljava/util/List;
    .restart local v59    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .restart local v61    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .restart local v64    # "topActivity":Ljava/lang/String;
    :cond_31c
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_132

    .line 1524
    .end local v36    # "activity":Ljava/lang/String;
    .end local v39    # "arr$":[Ljava/lang/String;
    .end local v45    # "exception":Ljava/lang/String;
    .end local v46    # "i$":I
    .end local v47    # "isActivityAllowed":Z
    .end local v49    # "isTopActivityException":Z
    .end local v52    # "len$":I
    .end local v53    # "list":Ljava/util/List;
    .end local v59    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v61    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v64    # "topActivity":Ljava/lang/String;
    :catch_320
    move-exception v43

    .line 1525
    .restart local v43    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    .line 1530
    .end local v43    # "e":Ljava/lang/Exception;
    :cond_324
    :try_start_324
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v6

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static/range {p9 .. p9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v6, v8, v9, v10}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v48

    .line 1533
    .local v48, "isAllowed":Z
    if-nez v48, :cond_361

    .line 1534
    const-string v6, "ActivityStack"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-static/range {v56 .. v56}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_35a
    .catch Ljava/lang/Exception; {:try_start_324 .. :try_end_35a} :catch_35d

    .line 1536
    const/4 v6, 0x0

    goto/16 :goto_18b

    .line 1538
    .end local v48    # "isAllowed":Z
    :catch_35d
    move-exception v43

    .line 1539
    .restart local v43    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    .line 1545
    .end local v43    # "e":Ljava/lang/Exception;
    :cond_361
    if-eqz p12, :cond_377

    const-string v6, "edm:nonSystemUid"

    move-object/from16 v0, p12

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_377

    const-string v6, "edm:startedByAdmin"

    move-object/from16 v0, p12

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_454

    .line 1548
    :cond_377
    if-eqz p4, :cond_3d7

    .line 1550
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v58, v0

    .line 1551
    .local v58, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v65

    .line 1552
    .local v65, "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v65

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    .line 1556
    .local v38, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez v38, :cond_3d7

    .line 1558
    :try_start_395
    const-string v6, "application_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v37

    .line 1561
    .local v37, "appPolicy":Landroid/app/enterprise/IApplicationPolicy;
    move-object/from16 v0, v37

    move-object/from16 v1, v58

    move/from16 v2, v65

    invoke-interface {v0, v1, v2}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3d7

    .line 1562
    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to start "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v41 .. v41}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " which is at prevent start black list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-static/range {v56 .. v56}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_3d0
    .catch Ljava/lang/Exception; {:try_start_395 .. :try_end_3d0} :catch_3d3

    .line 1565
    const/4 v6, 0x0

    goto/16 :goto_18b

    .line 1567
    .end local v37    # "appPolicy":Landroid/app/enterprise/IApplicationPolicy;
    :catch_3d3
    move-exception v43

    .line 1568
    .restart local v43    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    .line 1578
    .end local v38    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v43    # "e":Ljava/lang/Exception;
    .end local v58    # "pkgName":Ljava/lang/String;
    .end local v65    # "userId":I
    :cond_3d7
    :goto_3d7
    invoke-static/range {v56 .. v56}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1581
    if-nez v44, :cond_427

    .line 1582
    if-eqz p4, :cond_457

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v65

    .line 1583
    .restart local v65    # "userId":I
    :goto_3e8
    const-string v8, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START u"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " {"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "} from pid "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v19, :cond_45a

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_41c
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    .end local v65    # "userId":I
    :cond_427
    const/16 v31, 0x0

    .line 1601
    .local v31, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    .line 1602
    .local v7, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p5, :cond_440

    .line 1603
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v31

    .line 1606
    if-eqz v31, :cond_440

    .line 1607
    if-ltz p7, :cond_440

    move-object/from16 v0, v31

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_440

    .line 1608
    move-object/from16 v7, v31

    .line 1613
    :cond_440
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v51

    .line 1615
    .local v51, "launchFlags":I
    const/high16 v6, 0x2000000

    and-int v6, v6, v51

    if-eqz v6, :cond_47d

    if-eqz v31, :cond_47d

    .line 1619
    if-ltz p7, :cond_45d

    .line 1620
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1621
    const/4 v6, -0x3

    goto/16 :goto_18b

    .line 1575
    .end local v7    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .end local v51    # "launchFlags":I
    :cond_454
    const/16 p12, 0x0

    goto :goto_3d7

    .line 1582
    :cond_457
    const/16 v65, 0x0

    goto :goto_3e8

    .restart local v65    # "userId":I
    :cond_45a
    move/from16 v6, p8

    .line 1583
    goto :goto_41c

    .line 1623
    .end local v65    # "userId":I
    .restart local v7    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v31    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v51    # "launchFlags":I
    :cond_45d
    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1624
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p6, v0

    .line 1625
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p7, v0

    .line 1626
    const/4 v6, 0x0

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1627
    if-eqz v7, :cond_47d

    .line 1628
    move-object/from16 v0, v31

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1632
    :cond_47d
    if-nez v7, :cond_4d8

    const/4 v5, 0x0

    .line 1634
    .local v5, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_480
    if-nez v44, :cond_48a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_48a

    .line 1637
    const/16 v44, -0x1

    .line 1640
    :cond_48a
    if-nez v44, :cond_490

    if-nez p4, :cond_490

    .line 1643
    const/16 v44, -0x2

    .line 1646
    :cond_490
    if-eqz v44, :cond_4dd

    .line 1647
    if-eqz v7, :cond_49e

    .line 1648
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1652
    :cond_49e
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1653
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1655
    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Start activity "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " failed"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move/from16 v6, v44

    .line 1658
    goto/16 :goto_18b

    .line 1632
    .end local v5    # "resultStack":Lcom/android/server/am/ActivityStack;
    :cond_4d8
    iget-object v6, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_480

    .line 1662
    .restart local v5    # "resultStack":Lcom/android/server/am/ActivityStack;
    :cond_4dd
    const/16 v16, 0x0

    .line 1663
    .local v16, "allowLaunchIntent":Z
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d3

    const-string v6, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d3

    const/4 v6, 0x1

    :goto_4f6
    if-eqz v6, :cond_4fa

    .line 1665
    const/16 v16, 0x1

    .line 1669
    :cond_4fa
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v6, v8, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v63

    .line 1671
    .local v63, "startAnyPerm":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-boolean v15, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move-object/from16 v9, p2

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v42

    .line 1673
    .local v42, "componentPerm":I
    if-eqz v63, :cond_627

    if-eqz v42, :cond_627

    .line 1674
    if-eqz v7, :cond_53a

    .line 1675
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1679
    :cond_53a
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1681
    move-object/from16 v0, p4

    iget-boolean v6, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v6, :cond_5d6

    .line 1682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: starting "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " (pid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " not exported from uid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .line 1692
    .local v55, "msg":Ljava/lang/String;
    :goto_597
    const-string v6, "ActivityManager"

    move-object/from16 v0, v55

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Start activity "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " failed"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1697
    new-instance v6, Ljava/lang/SecurityException;

    move-object/from16 v0, v55

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1663
    .end local v42    # "componentPerm":I
    .end local v55    # "msg":Ljava/lang/String;
    .end local v63    # "startAnyPerm":I
    :cond_5d3
    const/4 v6, 0x0

    goto/16 :goto_4f6

    .line 1687
    .restart local v42    # "componentPerm":I
    .restart local v63    # "startAnyPerm":I
    :cond_5d6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: starting "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " (pid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " requires "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .restart local v55    # "msg":Ljava/lang/String;
    goto/16 :goto_597

    .line 1700
    .end local v55    # "msg":Ljava/lang/String;
    :cond_627
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v6, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p4

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v9, p2

    move/from16 v10, p9

    move/from16 v11, p8

    move-object/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_6ab

    const/16 v35, 0x1

    .line 1703
    .local v35, "abort":Z
    :goto_641
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v6, :cond_664

    .line 1707
    :try_start_649
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v66

    .line 1708
    .local v66, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v66

    invoke-interface {v6, v0, v8}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_65e
    .catch Landroid/os/RemoteException; {:try_start_649 .. :try_end_65e} :catch_6b0

    move-result v6

    if-nez v6, :cond_6ae

    const/4 v6, 0x1

    :goto_662
    or-int v35, v35, v6

    .line 1715
    .end local v66    # "watchIntent":Landroid/content/Intent;
    :cond_664
    :goto_664
    if-eqz v35, :cond_6b9

    .line 1716
    if-eqz v7, :cond_672

    .line 1717
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1722
    :cond_672
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1723
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1725
    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Start activity "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " succeeded"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1728
    const/4 v6, 0x0

    goto/16 :goto_18b

    .line 1700
    .end local v35    # "abort":Z
    :cond_6ab
    const/16 v35, 0x0

    goto :goto_641

    .line 1708
    .restart local v35    # "abort":Z
    .restart local v66    # "watchIntent":Landroid/content/Intent;
    :cond_6ae
    const/4 v6, 0x0

    goto :goto_662

    .line 1710
    .end local v66    # "watchIntent":Landroid/content/Intent;
    :catch_6b0
    move-exception v43

    .line 1711
    .local v43, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_664

    .line 1731
    .end local v43    # "e":Landroid/os/RemoteException;
    :cond_6b9
    new-instance v17, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v25, v0

    move/from16 v20, p9

    move-object/from16 v21, p10

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, p4

    move-object/from16 v26, v7

    move-object/from16 v27, p6

    move/from16 v28, p7

    move/from16 v29, p13

    move-object/from16 v30, p0

    move-object/from16 v32, p5

    invoke-direct/range {v17 .. v32}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V

    .line 1735
    .local v17, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p14, :cond_6e7

    .line 1736
    const/4 v6, 0x0

    aput-object v17, p14, v6

    .line 1740
    :cond_6e7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMultiWindow(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6fe

    .line 1741
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1746
    :cond_6fe
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-eqz v6, :cond_78d

    .line 1747
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    .line 1753
    :goto_712
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v62

    .line 1754
    .local v62, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v62

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_72a

    move-object/from16 v0, v62

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p9

    if-eq v6, v0, :cond_79d

    .line 1756
    :cond_72a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "Activity start"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v6, v0, v1, v8}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_79d

    .line 1757
    new-instance v57, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    move-object/from16 v0, v57

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    move/from16 v3, p11

    move-object/from16 v4, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1759
    .local v57, "pal":Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1761
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1763
    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Start activity "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " failed"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1766
    const/4 v6, 0x4

    goto/16 :goto_18b

    .line 1749
    .end local v57    # "pal":Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    .end local v62    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_78d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_712

    .line 1770
    .restart local v62    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_79d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v6, :cond_80d

    .line 1776
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 1781
    :goto_7ad
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1783
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    if-eqz v6, :cond_7c3

    .line 1784
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->setDismissKeyguardOnNextActivity(Z)V

    .line 1874
    :cond_7c3
    const/16 v33, 0x1

    move-object/from16 v29, p0

    move-object/from16 v30, v17

    move/from16 v32, p11

    move-object/from16 v34, p12

    invoke-virtual/range {v29 .. v34}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I

    move-result v44

    .line 1879
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v6

    if-eqz v6, :cond_7da

    .line 1884
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->dismissKeyguard()V

    .line 1888
    :cond_7da
    if-ltz v44, :cond_815

    .line 1889
    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Start activity "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " succeeded"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_809
    move/from16 v6, v44

    .line 1897
    goto/16 :goto_18b

    .line 1778
    :cond_80d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_7ad

    .line 1892
    :cond_815
    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Start activity "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " failed"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_809
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .registers 52
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "profileFile"    # Ljava/lang/String;
    .param p11, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p12, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "options"    # Landroid/os/Bundle;
    .param p15, "userId"    # I

    .prologue
    .line 912
    if-eqz p4, :cond_10

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 913
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 915
    :cond_10
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1e2

    const/16 v21, 0x1

    .line 918
    .local v21, "componentSpecified":Z
    :goto_18
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p4    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move/from16 v8, p15

    .line 921
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v23

    .line 924
    .local v23, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 926
    if-ltz p2, :cond_1e6

    .line 927
    const/16 v16, -0x1

    .line 935
    .local v16, "callingPid":I
    :goto_3a
    :try_start_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v33

    .line 936
    .local v33, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p13, :cond_1f8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_1f8

    const/4 v2, 0x1

    :goto_4f
    move-object/from16 v0, v33

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 943
    .local v28, "origId":J
    if-eqz v23, :cond_2b7

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_2b7

    .line 947
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b7

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2b7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_a0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b7

    .line 951
    :cond_a0
    move/from16 v7, p2

    .line 952
    .local v7, "realCallingUid":I
    if-eqz p1, :cond_b6

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v24

    .line 954
    .local v24, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v24, :cond_1fb

    .line 955
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 965
    .end local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_b6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    new-array v12, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v3, v12, v2

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v13, v2

    const/high16 v14, 0x50000000

    const/4 v15, 0x0

    move/from16 v8, p15

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v34

    .line 971
    .local v34, "target":Landroid/content/IIntentSender;
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 972
    .local v27, "newIntent":Landroid/content/Intent;
    if-ltz p8, :cond_e4

    .line 974
    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 976
    :cond_e4
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_127

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ActivityRecord;

    .line 980
    .local v26, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    const-string v2, "cur_task"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    .end local v26    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_127
    const-string v2, "new_app"

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 988
    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_148
    .catchall {:try_start_3a .. :try_end_148} :catchall_2a6

    .line 990
    move-object/from16 p4, v27

    .line 991
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 992
    const/16 p1, 0x0

    .line 993
    :try_start_14e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 994
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_155
    .catchall {:try_start_14e .. :try_end_155} :catchall_2ac

    move-result v16

    .line 995
    const/16 v21, 0x1

    .line 997
    :try_start_158
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10400

    move-object/from16 v0, p4

    move/from16 v1, p15

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v31

    .line 1002
    .local v31, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v31, :cond_23a

    move-object/from16 v0, v31

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_16e
    .catch Landroid/os/RemoteException; {:try_start_158 .. :try_end_16e} :catch_23d
    .catchall {:try_start_158 .. :try_end_16e} :catchall_2ac

    .line 1003
    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_16e
    :try_start_16e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p15

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_177
    .catch Landroid/os/RemoteException; {:try_start_16e .. :try_end_177} :catch_2b5
    .catchall {:try_start_16e .. :try_end_177} :catchall_27d

    move-result-object v12

    .line 1011
    .end local v7    # "realCallingUid":I
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "target":Landroid/content/IIntentSender;
    :goto_178
    const/16 v22, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move/from16 v15, p8

    move/from16 v17, p2

    move-object/from16 v18, p3

    move/from16 v19, p9

    move-object/from16 v20, p14

    :try_start_190
    invoke-virtual/range {v8 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v32

    .line 1015
    .local v32, "res":I
    move-object/from16 v0, v33

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_1b7

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const/4 v2, 0x0

    move-object/from16 v0, v33

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p13

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 1028
    :cond_1b7
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1030
    if-eqz p12, :cond_1e0

    .line 1031
    move/from16 v0, v32

    move-object/from16 v1, p12

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 1032
    if-nez v32, :cond_243

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1cd
    .catchall {:try_start_190 .. :try_end_1cd} :catchall_27d

    .line 1036
    :cond_1cd
    :try_start_1cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1d4
    .catch Ljava/lang/InterruptedException; {:try_start_1cd .. :try_end_1d4} :catch_2b2
    .catchall {:try_start_1cd .. :try_end_1d4} :catchall_27d

    .line 1039
    :goto_1d4
    :try_start_1d4
    move-object/from16 v0, p12

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_1e0

    move-object/from16 v0, p12

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_1cd

    .line 1060
    :cond_1e0
    :goto_1e0
    monitor-exit v35
    :try_end_1e1
    .catchall {:try_start_1d4 .. :try_end_1e1} :catchall_27d

    .end local v32    # "res":I
    :goto_1e1
    return v32

    .line 915
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "callingPid":I
    .end local v21    # "componentSpecified":Z
    .end local v28    # "origId":J
    .end local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1e2
    const/16 v21, 0x0

    goto/16 :goto_18

    .line 928
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v21    # "componentSpecified":Z
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_1e6
    if-nez p1, :cond_1f2

    .line 929
    :try_start_1e8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 930
    .restart local v16    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto/16 :goto_3a

    .line 932
    .end local v16    # "callingPid":I
    :cond_1f2
    const/16 p2, -0x1

    move/from16 v16, p2

    .restart local v16    # "callingPid":I
    goto/16 :goto_3a

    .line 936
    .restart local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1f8
    const/4 v2, 0x0

    goto/16 :goto_4f

    .line 957
    .restart local v7    # "realCallingUid":I
    .restart local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "origId":J
    :cond_1fb
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when starting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-static/range {p14 .. p14}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 961
    const/16 v32, -0x4

    monitor-exit v35
    :try_end_235
    .catchall {:try_start_1e8 .. :try_end_235} :catchall_2a6

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_1e1

    .line 1002
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :cond_23a
    const/4 v12, 0x0

    goto/16 :goto_16e

    .line 1004
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_23d
    move-exception v25

    move-object/from16 v12, v23

    .line 1005
    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v25, "e":Landroid/os/RemoteException;
    :goto_240
    const/4 v12, 0x0

    goto/16 :goto_178

    .line 1040
    .end local v7    # "realCallingUid":I
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v34    # "target":Landroid/content/IIntentSender;
    .restart local v32    # "res":I
    :cond_243
    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_1e0

    .line 1041
    const/4 v2, 0x0

    :try_start_249
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v30

    .line 1042
    .local v30, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v30

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_280

    .line 1043
    const/4 v2, 0x0

    move-object/from16 v0, p12

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1044
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p12

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1045
    const-wide/16 v4, 0x0

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1046
    const-wide/16 v4, 0x0

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_1e0

    .line 1061
    .end local v16    # "callingPid":I
    .end local v28    # "origId":J
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v32    # "res":I
    .end local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_27d
    move-exception v2

    :goto_27e
    monitor-exit v35
    :try_end_27f
    .catchall {:try_start_249 .. :try_end_27f} :catchall_27d

    throw v2

    .line 1048
    .restart local v16    # "callingPid":I
    .restart local v28    # "origId":J
    .restart local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v32    # "res":I
    .restart local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_280
    :try_start_280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_291
    .catchall {:try_start_280 .. :try_end_291} :catchall_27d

    .line 1052
    :cond_291
    :try_start_291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_298
    .catch Ljava/lang/InterruptedException; {:try_start_291 .. :try_end_298} :catch_2b0
    .catchall {:try_start_291 .. :try_end_298} :catchall_27d

    .line 1055
    :goto_298
    :try_start_298
    move-object/from16 v0, p12

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_1e0

    move-object/from16 v0, p12

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_2a2
    .catchall {:try_start_298 .. :try_end_2a2} :catchall_27d

    if-eqz v2, :cond_291

    goto/16 :goto_1e0

    .line 1061
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "callingPid":I
    .end local v28    # "origId":J
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v32    # "res":I
    .end local v33    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_2a6
    move-exception v2

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_27e

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "realCallingUid":I
    .restart local v16    # "callingPid":I
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v28    # "origId":J
    .restart local v33    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :catchall_2ac
    move-exception v2

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_27e

    .line 1053
    .end local v7    # "realCallingUid":I
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v34    # "target":Landroid/content/IIntentSender;
    .restart local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v32    # "res":I
    :catch_2b0
    move-exception v2

    goto :goto_298

    .line 1037
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_2b2
    move-exception v2

    goto/16 :goto_1d4

    .line 1004
    .end local v32    # "res":I
    .restart local v7    # "realCallingUid":I
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :catch_2b5
    move-exception v25

    goto :goto_240

    .end local v7    # "realCallingUid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_2b7
    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_178
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    .registers 46
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "startFlags"    # I
    .param p4, "doResume"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2233
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_11

    .line 2234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/MultiWindowPolicy;->applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;)V

    .line 2236
    :cond_11
    if-eqz p2, :cond_1b

    .line 2237
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    .line 2241
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    .line 2242
    .local v20, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 2244
    .local v12, "callingUid":I
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getFlags()I

    move-result v24

    .line 2248
    .local v24, "launchFlags":I
    const/high16 v4, 0x40000

    and-int v4, v4, v24

    if-nez v4, :cond_17e

    const/4 v4, 0x1

    :goto_30
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2254
    if-nez p4, :cond_3b

    .line 2255
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2258
    :cond_3b
    const/high16 v4, 0x1000000

    and-int v4, v4, v24

    if-eqz v4, :cond_181

    move-object/from16 v28, p1

    .line 2264
    .local v28, "notTop":Lcom/android/server/am/ActivityRecord;
    :goto_43
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_63

    .line 2265
    move-object/from16 v13, p2

    .line 2266
    .local v13, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v13, :cond_55

    .line 2267
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    .line 2269
    :cond_55
    iget-object v4, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 2271
    and-int/lit8 p3, p3, -0x2

    .line 2275
    .end local v13    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_63
    if-nez p2, :cond_185

    .line 2278
    const/high16 v4, 0x10000000

    and-int v4, v4, v24

    if-nez v4, :cond_8a

    .line 2279
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const/high16 v4, 0x10000000

    or-int v24, v24, v4

    .line 2295
    :cond_8a
    :goto_8a
    const/16 v26, 0x0

    .line 2296
    .local v26, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    const/16 v27, 0x0

    .line 2298
    .local v27, "newTaskIntent":Landroid/content/Intent;
    if-eqz p2, :cond_1b0

    .line 2299
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1a6

    .line 2305
    const/high16 v4, 0x10000000

    and-int v4, v4, v24

    if-nez v4, :cond_db

    .line 2306
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startActivity called from finishing "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "; forcing "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    const/high16 v4, 0x10000000

    or-int v24, v24, v4

    .line 2309
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    .line 2310
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v27, v0

    .line 2312
    :cond_db
    const/16 p2, 0x0

    .line 2313
    const/16 v33, 0x0

    .line 2321
    .local v33, "sourceStack":Lcom/android/server/am/ActivityStack;
    :goto_df
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_111

    const/high16 v4, 0x10000000

    and-int v4, v4, v24

    if-eqz v4, :cond_111

    .line 2327
    const-string v4, "ActivityManager"

    const-string v6, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2331
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2334
    :cond_111
    const/4 v10, 0x0

    .line 2335
    .local v10, "addingToTask":Z
    const/16 v25, 0x0

    .line 2336
    .local v25, "movedHome":Z
    const/16 v31, 0x0

    .line 2338
    .local v31, "reuseTask":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    .line 2340
    .local v3, "targetStack":Lcom/android/server/am/ActivityStack;
    const/high16 v4, 0x10000000

    and-int v4, v4, v24

    if-eqz v4, :cond_123

    const/high16 v4, 0x8000000

    and-int v4, v4, v24

    if-eqz v4, :cond_137

    :cond_123
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_131

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_529

    :cond_131
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v4, :cond_529

    .line 2348
    :cond_137
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_529

    .line 2353
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1b4

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 2360
    .local v21, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_148
    const/16 v22, 0x0

    .line 2361
    .local v22, "isKnoxLauncher":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_15e

    .line 2362
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v6, "sec_container_1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15e

    .line 2363
    const/16 v22, 0x1

    .line 2366
    :cond_15e
    if-eqz v22, :cond_1c1

    .line 2367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_168
    :goto_168
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/ActivityStack;

    .line 2368
    .local v35, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_168

    .line 2369
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->finishAllActivities()Z

    goto :goto_168

    .line 2248
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "addingToTask":Z
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v21    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v22    # "isKnoxLauncher":Z
    .end local v25    # "movedHome":Z
    .end local v26    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v27    # "newTaskIntent":Landroid/content/Intent;
    .end local v28    # "notTop":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local v33    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_17e
    const/4 v4, 0x0

    goto/16 :goto_30

    .line 2258
    :cond_181
    const/16 v28, 0x0

    goto/16 :goto_43

    .line 2283
    .restart local v28    # "notTop":Lcom/android/server/am/ActivityRecord;
    :cond_185
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_192

    .line 2287
    const/high16 v4, 0x10000000

    or-int v24, v24, v4

    goto/16 :goto_8a

    .line 2288
    :cond_192
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1a0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_8a

    .line 2292
    :cond_1a0
    const/high16 v4, 0x10000000

    or-int v24, v24, v4

    goto/16 :goto_8a

    .line 2315
    .restart local v26    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "newTaskIntent":Landroid/content/Intent;
    :cond_1a6
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v33, v0

    .restart local v33    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_df

    .line 2318
    .end local v33    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_1b0
    const/16 v33, 0x0

    .restart local v33    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_df

    .line 2353
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "addingToTask":Z
    .restart local v25    # "movedHome":Z
    .restart local v31    # "reuseTask":Lcom/android/server/am/TaskRecord;
    :cond_1b4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    goto :goto_148

    .line 2374
    .restart local v21    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v22    # "isKnoxLauncher":Z
    :cond_1c1
    if-eqz v21, :cond_529

    .line 2375
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_1d1

    .line 2376
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2378
    :cond_1d1
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2379
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2383
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_318

    .line 2384
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1f4

    .line 2385
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 2391
    :cond_1f4
    :goto_1f4
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_209

    .line 2396
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2405
    :cond_209
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v23

    .line 2406
    .local v23, "lastStack":Lcom/android/server/am/ActivityStack;
    if-eqz v22, :cond_21d

    .line 2411
    if-eqz v23, :cond_217

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_21d

    .line 2412
    :cond_217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v23, v0

    .line 2416
    :cond_21d
    if-nez v23, :cond_323

    const/4 v15, 0x0

    .line 2418
    .local v15, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_220
    if-eqz v15, :cond_2e1

    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_23e

    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-ne v4, v6, :cond_23e

    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-nez v4, :cond_2e1

    .line 2420
    :cond_23e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x400000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2421
    if-eqz p2, :cond_261

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_2e1

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_2e1

    .line 2425
    :cond_261
    const/16 v25, 0x1

    .line 2427
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-nez v4, :cond_26d

    .line 2428
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2431
    :cond_26d
    if-eqz v3, :cond_2cd

    .line 2432
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v3, v4, :cond_32d

    .line 2433
    const/16 v32, 0x0

    .line 2434
    .local v32, "shouldUpdateHomeStackState":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v4

    if-eqz v4, :cond_295

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_295

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    if-eqz v4, :cond_295

    .line 2435
    const/16 v32, 0x1

    .line 2437
    :cond_295
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2438
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v6, v8}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2439
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZ)V

    .line 2440
    if-eqz v32, :cond_2cd

    .line 2441
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/am/TaskRecord;->setOnTopOfHome(Z)V

    .line 2442
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 2449
    .end local v32    # "shouldUpdateHomeStackState":Z
    :cond_2cd
    :goto_2cd
    const v4, 0x10004000

    and-int v4, v4, v24

    const v6, 0x10004000

    if-ne v4, v6, :cond_2df

    .line 2455
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/TaskRecord;->setOnTopOfHome(Z)V

    .line 2458
    :cond_2df
    const/16 p5, 0x0

    .line 2463
    :cond_2e1
    const/high16 v4, 0x200000

    and-int v4, v4, v24

    if-eqz v4, :cond_2ef

    .line 2464
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 2466
    :cond_2ef
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_33d

    .line 2471
    if-eqz p4, :cond_339

    .line 2472
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2476
    :goto_2fd
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_316

    const-string v4, "ActivityManager"

    const-string/jumbo v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2479
    :cond_316
    const/4 v4, 0x1

    .line 2860
    .end local v15    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v21    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v22    # "isKnoxLauncher":Z
    .end local v23    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v26    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v27    # "newTaskIntent":Landroid/content/Intent;
    :goto_317
    return v4

    .line 2388
    .restart local v21    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v22    # "isKnoxLauncher":Z
    .restart local v26    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "newTaskIntent":Landroid/content/Intent;
    :cond_318
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    goto/16 :goto_1f4

    .line 2416
    .restart local v23    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_323
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    goto/16 :goto_220

    .line 2445
    .restart local v15    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_32d
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    goto :goto_2cd

    .line 2474
    :cond_339
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_2fd

    .line 2483
    :cond_33d
    const/16 v18, 0x0

    .line 2486
    .local v18, "ignoreIntentActivity":Z
    const v4, 0x10008000

    and-int v4, v4, v24

    const v6, 0x10008000

    if-ne v4, v6, :cond_3da

    .line 2492
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    .line 2493
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 2494
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2495
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_381

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-nez v4, :cond_38a

    .line 2497
    :cond_381
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2498
    const/16 v31, 0x0

    .line 2499
    const/16 v18, 0x1

    .line 2593
    :cond_38a
    :goto_38a
    if-nez v10, :cond_529

    if-nez v31, :cond_529

    if-nez v18, :cond_529

    .line 2600
    if-eqz p4, :cond_525

    .line 2603
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_503

    if-nez v22, :cond_503

    .line 2604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_3a2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_503

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/ActivityStack;

    .line 2605
    .restart local v35    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_3a2

    .line 2606
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v11

    .line 2608
    .local v11, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    .local v16, "i":I
    :goto_3be
    if-ltz v16, :cond_3a2

    .line 2609
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    .line 2610
    .local v14, "curTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    .line 2611
    .local v38, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v38, :cond_3d7

    .line 2612
    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2608
    :cond_3d7
    add-int/lit8 v16, v16, -0x1

    goto :goto_3be

    .line 2501
    .end local v11    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v14    # "curTask":Lcom/android/server/am/TaskRecord;
    .end local v16    # "i":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v38    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_3da
    const/high16 v4, 0x4000000

    and-int v4, v4, v24

    if-nez v4, :cond_3ee

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3ee

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_474

    .line 2508
    :cond_3ee
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    .line 2510
    .restart local v38    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v38, :cond_427

    .line 2511
    move-object/from16 v0, v38

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_411

    .line 2516
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2518
    :cond_411
    const/16 v4, 0x7533

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2520
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v38

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_38a

    .line 2522
    :cond_427
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_449

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-nez v4, :cond_46f

    .line 2527
    :cond_449
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2528
    const/16 v18, 0x1

    .line 2530
    const/high16 v4, 0x10000000

    and-int v4, v4, v24

    if-nez v4, :cond_38a

    .line 2534
    if-eqz p2, :cond_38a

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    xor-int/2addr v4, v6

    if-eqz v4, :cond_38a

    .line 2537
    const/16 p2, 0x0

    goto/16 :goto_38a

    .line 2546
    :cond_46f
    const/4 v10, 0x1

    .line 2550
    move-object/from16 p2, v21

    goto/16 :goto_38a

    .line 2552
    .end local v38    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_474
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4df

    .line 2559
    const/high16 v4, 0x20000000

    and-int v4, v4, v24

    if-nez v4, :cond_491

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4ca

    :cond_491
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4ca

    .line 2562
    const/16 v4, 0x7533

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2564
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_4bf

    .line 2565
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2567
    :cond_4bf
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_38a

    .line 2568
    :cond_4ca
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_38a

    .line 2572
    const/4 v10, 0x1

    .line 2573
    move-object/from16 p2, v21

    goto/16 :goto_38a

    .line 2575
    :cond_4df
    const/high16 v4, 0x200000

    and-int v4, v4, v24

    if-nez v4, :cond_4ea

    .line 2581
    const/4 v10, 0x1

    .line 2582
    move-object/from16 p2, v21

    goto/16 :goto_38a

    .line 2583
    :cond_4ea
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v4, :cond_38a

    .line 2591
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_38a

    .line 2620
    :cond_503
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2624
    :goto_509
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_522

    const-string v4, "ActivityManager"

    const-string/jumbo v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2627
    :cond_522
    const/4 v4, 0x2

    goto/16 :goto_317

    .line 2622
    :cond_525
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_509

    .end local v15    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "ignoreIntentActivity":Z
    .end local v21    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v22    # "isKnoxLauncher":Z
    .end local v23    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_529
    move-object/from16 v36, v3

    .line 2639
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .local v36, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_5e6

    .line 2643
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v39

    .line 2644
    .local v39, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    .line 2645
    .restart local v38    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v38, :cond_627

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_627

    .line 2646
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_627

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v4, v6, :cond_627

    .line 2647
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_627

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_627

    .line 2648
    const/high16 v4, 0x20000000

    and-int v4, v4, v24

    if-nez v4, :cond_57f

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_57f

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_627

    :cond_57f
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v4, :cond_627

    .line 2652
    const/16 v4, 0x7533

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v38

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2656
    const/4 v4, 0x0

    move-object/from16 v0, v39

    iput-object v4, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2657
    if-eqz p4, :cond_59a

    .line 2658
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 2660
    :cond_59a
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2661
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_5bf

    .line 2665
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_5ba

    const-string v4, "ActivityManager"

    const-string/jumbo v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2668
    :cond_5ba
    const/4 v4, 0x1

    move-object/from16 v3, v36

    .end local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_317

    .line 2670
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_5bf
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v38

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2671
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_5e1

    const-string v4, "ActivityManager"

    const-string/jumbo v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2674
    :cond_5e1
    const/4 v4, 0x3

    move-object/from16 v3, v36

    .end local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_317

    .line 2681
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v38    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_5e6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_606

    .line 2682
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2685
    :cond_606
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2686
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_622

    const-string v4, "ActivityManager"

    const-string/jumbo v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2689
    :cond_622
    const/4 v4, -0x2

    move-object/from16 v3, v36

    .end local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_317

    .line 2692
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v38    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v39    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_627
    const-string v4, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_677

    .line 2693
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6b3

    const-string v4, "CU_Flag"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6b3

    .line 2694
    new-instance v19, Landroid/content/Intent;

    const-string v4, "android.intent.action.CHECK_CU_VAS"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2695
    .local v19, "in":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2696
    const-string v4, "CU_Vas"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2698
    const/4 v4, 0x4

    move-object/from16 v3, v36

    .end local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_317

    .line 2700
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "in":Landroid/content/Intent;
    .restart local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_677
    const-string v4, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b3

    .line 2701
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6b3

    .line 2702
    new-instance v19, Landroid/content/Intent;

    const-string v4, "android.intent.action.CHECK_CMCC_VAS"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2703
    .restart local v19    # "in":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2705
    const/4 v4, 0x4

    move-object/from16 v3, v36

    .end local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_317

    .line 2709
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "in":Landroid/content/Intent;
    .restart local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_6b3
    const/4 v5, 0x0

    .line 2710
    .local v5, "newTask":Z
    const/4 v7, 0x0

    .line 2713
    .local v7, "keepCurTransition":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_7ab

    if-nez v10, :cond_7ab

    const/high16 v4, 0x10000000

    and-int v4, v4, v24

    if-eqz v4, :cond_7ab

    .line 2716
    if-eqz v36, :cond_6d1

    move-object/from16 v0, v36

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-nez v4, :cond_913

    .line 2717
    :cond_6d1
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2719
    .end local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    :goto_6d5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_788

    .line 2720
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 2725
    :goto_6e4
    if-nez v31, :cond_79f

    .line 2726
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v4

    if-eqz v26, :cond_793

    .end local v26    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    :goto_6ec
    if-eqz v27, :cond_79b

    .end local v27    # "newTaskIntent":Landroid/content/Intent;
    :goto_6ee
    const/4 v6, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v8}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2735
    :goto_6fe
    const/4 v5, 0x1

    .line 2736
    if-nez v25, :cond_713

    .line 2737
    const v4, 0x10004000

    and-int v4, v4, v24

    const v6, 0x10004000

    if-ne v4, v6, :cond_713

    .line 2744
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/TaskRecord;->setOnTopOfHome(Z)V

    .line 2845
    :cond_713
    :goto_713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v4, v12, v6, v0, v8}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 2848
    if-eqz v5, :cond_746

    .line 2849
    const/16 v4, 0x7534

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2852
    :cond_746
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_765

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v4, :cond_765

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_765

    .line 2853
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x8000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2856
    :cond_765
    const/16 v4, 0x7535

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2857
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v8, p5

    .line 2858
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 2859
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2860
    const/4 v4, 0x0

    goto/16 :goto_317

    .line 2722
    .restart local v26    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "newTaskIntent":Landroid/content/Intent;
    :cond_788
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    goto/16 :goto_6e4

    .line 2726
    :cond_793
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    goto/16 :goto_6ec

    .end local v26    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    :cond_79b
    move-object/from16 v27, v20

    goto/16 :goto_6ee

    .line 2733
    .restart local v26    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    :cond_79f
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_6fe

    .line 2748
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_7ab
    if-eqz p2, :cond_8c2

    .line 2749
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v34, v0

    .line 2750
    .local v34, "sourceTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2752
    .end local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_83b

    .line 2753
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 2754
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7ea

    .line 2755
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2756
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6, v8, v9}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 2762
    :cond_7ea
    :goto_7ea
    if-nez v10, :cond_845

    const/high16 v4, 0x4000000

    and-int v4, v4, v24

    if-eqz v4, :cond_845

    .line 2767
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    .line 2768
    const/4 v7, 0x1

    .line 2769
    if-eqz v38, :cond_8b4

    .line 2770
    const/16 v4, 0x7533

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2771
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v38

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2774
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2775
    if-eqz p4, :cond_81c

    .line 2776
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2778
    :cond_81c
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2779
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_838

    const-string v4, "ActivityManager"

    const-string/jumbo v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2782
    :cond_838
    const/4 v4, 0x3

    goto/16 :goto_317

    .line 2759
    :cond_83b
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    goto :goto_7ea

    .line 2784
    :cond_845
    if-nez v10, :cond_8b4

    const/high16 v4, 0x20000

    and-int v4, v4, v24

    if-eqz v4, :cond_8b4

    .line 2789
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    .line 2790
    if-eqz v38, :cond_8b4

    .line 2791
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v37, v0

    .line 2794
    .local v37, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_88c

    .line 2796
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v29

    .line 2797
    .local v29, "oldTop":Lcom/android/server/am/ActivityRecord;
    if-eqz v29, :cond_885

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_885

    .line 2798
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusLoss(Ljava/lang/String;)V

    .line 2801
    :cond_885
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusGain(Ljava/lang/String;)V

    .line 2805
    .end local v29    # "oldTop":Lcom/android/server/am/ActivityRecord;
    :cond_88c
    invoke-virtual/range {v37 .. v38}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2806
    const/16 v4, 0x7533

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2807
    move-object/from16 v0, v38

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2808
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v38

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2809
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2810
    if-eqz p4, :cond_8b1

    .line 2811
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2813
    :cond_8b1
    const/4 v4, 0x3

    goto/16 :goto_317

    .line 2819
    .end local v37    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8b4
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_713

    .line 2828
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v34    # "sourceTask":Lcom/android/server/am/TaskRecord;
    .restart local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_8c2
    if-eqz v36, :cond_8d0

    move-object/from16 v0, v36

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-nez v4, :cond_910

    .line 2829
    :cond_8d0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2831
    .end local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    :goto_8d4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_8f6

    .line 2832
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 2837
    :goto_8e3
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v30

    .line 2838
    .local v30, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v30, :cond_900

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_8ed
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v8}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_713

    .line 2834
    .end local v30    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_8f6
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    goto :goto_8e3

    .line 2838
    .restart local v30    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_900
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v6, v0, v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    goto :goto_8ed

    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v30    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_910
    move-object/from16 v3, v36

    .end local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto :goto_8d4

    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_913
    move-object/from16 v3, v36

    .end local v36    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_6d5
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeToTop()V

    .line 902
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    .line 904
    return-void
.end method

.method public startPausingInHiddenStackLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "resumedActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    .line 4165
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHiddenStack:Lcom/android/server/am/ActivityStack;

    iput-object p1, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4166
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHiddenStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 4167
    return-void
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 16
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1329
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    .line 1332
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1334
    if-eqz v10, :cond_63

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_63

    .line 1336
    :try_start_1d
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_31

    const-string v0, "android"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1342
    :cond_31
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;Lcom/android/server/am/ProcessStatsService;)Z

    .line 1344
    :cond_3c
    invoke-virtual {p0, p1, v10, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_3f} :catch_40

    .line 1364
    :cond_3f
    :goto_3f
    return-void

    .line 1346
    :catch_40
    move-exception v11

    .line 1347
    .local v11, "e":Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when starting activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1355
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_63
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v5, "activity"

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move v7, v4

    move v8, v4

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    .line 1359
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_3f

    .line 1361
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationStart(Ljava/lang/String;)V

    goto :goto_3f
.end method

.method switchUserLocked(ILcom/android/server/am/UserStartedState;)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserStartedState;

    .prologue
    .line 3641
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 3642
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 3643
    .local v2, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 3645
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3646
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "stackNdx":I
    :goto_25
    if-ltz v4, :cond_35

    .line 3647
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 3646
    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    .line 3650
    :cond_35
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3651
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_3d

    .line 3652
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 3654
    :cond_3d
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    .line 3656
    .local v0, "homeInFront":Z
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v5, :cond_79

    .line 3657
    invoke-virtual {p0, v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 3662
    :goto_48
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 3663
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3664
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_78

    .line 3665
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switchUserLocked - set focus activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3668
    :cond_78
    return v0

    .line 3659
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_79
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    goto :goto_48
.end method

.method topResumedActivityExceptFloatingLocked()Lcom/android/server/am/ActivityRecord;
    .registers 5

    .prologue
    .line 4060
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_8
    if-ltz v1, :cond_2f

    .line 4061
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 4062
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2c

    .line 4063
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_2c

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2c

    .line 4065
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4070
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2b
    return-object v2

    .line 4060
    .restart local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 4070
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2f
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_2b
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 788
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 789
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 790
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_d

    move-object v4, v1

    .line 803
    :cond_c
    :goto_c
    return-object v4

    .line 794
    :cond_d
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_15
    if-ltz v3, :cond_c

    .line 795
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 796
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, v0, :cond_2f

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 797
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 798
    if-eqz v1, :cond_2f

    move-object v4, v1

    .line 799
    goto :goto_c

    .line 794
    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_15
.end method

.method updateCascadeHiddenFlag()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x8

    .line 4344
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->needsCascadeForceHidden()Z

    move-result v4

    .line 4345
    .local v4, "needsFlags":Z
    const/4 v0, 0x0

    .line 4346
    .local v0, "flagChanged":Z
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStack;

    .line 4347
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 4348
    invoke-virtual {v6, v12, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 4349
    .local v7, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_f

    .line 4350
    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eq v8, v4, :cond_f

    .line 4351
    const/4 v0, 0x1

    .line 4352
    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v3, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 4353
    .local v3, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v3, v10, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 4354
    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6, v8, v3}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_f

    .line 4360
    .end local v3    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_40
    if-eqz v0, :cond_4a

    .line 4361
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(Z)Z

    .line 4364
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 4365
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_6e

    .line 4366
    invoke-virtual {v1, v12, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 4367
    .restart local v7    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_6e

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 4368
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackBoxIdFromTop()I

    move-result v5

    .line 4369
    .local v5, "nextStackId":I
    const/4 v8, -0x1

    if-le v5, v8, :cond_6f

    .line 4370
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 4376
    .end local v5    # "nextStackId":I
    .end local v7    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_6e
    :goto_6e
    return-void

    .line 4372
    .restart local v5    # "nextStackId":I
    .restart local v7    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_6f
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    iget v9, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto :goto_6e
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3094
    const/4 v0, 0x0

    .line 3095
    .local v0, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_9
    if-ltz v2, :cond_21

    .line 3096
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 3097
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 3098
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4a

    .line 3099
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3114
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_21
    :goto_21
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_49

    if-eqz v0, :cond_49

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v0, :cond_49

    iget-wide v3, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_49

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v4, :cond_49

    .line 3117
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 3118
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v4, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 3120
    :cond_49
    return-void

    .line 3100
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4a
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_53

    .line 3101
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_21

    .line 3103
    :cond_53
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_21

    .line 3105
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_21

    .line 3095
    :cond_6e
    add-int/lit8 v2, v2, -0x1

    goto :goto_9
.end method

.method validateTopActivitiesLocked()V
    .registers 10

    .prologue
    .line 3712
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_8
    if-ltz v4, :cond_11b

    .line 3713
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 3714
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3715
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_3f

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3716
    .local v5, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_1b
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 3717
    if-nez v1, :cond_42

    .line 3718
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateTop...: null top activity, stack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    :cond_3c
    :goto_3c
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 3715
    .end local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_3f
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_1b

    .line 3720
    .restart local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_42
    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 3721
    .local v0, "pausing":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_6b

    if-ne v0, v1, :cond_6b

    .line 3722
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    :cond_6b
    iget-object v6, v3, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 3728
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    :cond_96
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_3c

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_3c

    .line 3734
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateTop...: activity in front not resumed r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 3739
    .end local v0    # "pausing":Lcom/android/server/am/ActivityRecord;
    :cond_c3
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3740
    .local v2, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_ec

    if-ne v2, v1, :cond_ec

    .line 3741
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateTop...: back stack has resumed activity r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    :cond_ec
    if-eqz v1, :cond_3c

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_f6

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_3c

    .line 3746
    :cond_f6
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateTop...: activity in back resumed r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 3751
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "resumed":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_11b
    return-void
.end method
