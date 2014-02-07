.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$DelayedRotationRequest;,
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_APP:Z = false

.field static final DEBUG_CLEANUP:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_MID:Z

.field private static final DEBUG_MULTIWINDOW:Z

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_PAUSE:Z = false

.field static final DEBUG_RESULTS:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_STATES:Z = false

.field static final DEBUG_SWITCH:Z = false

.field static final DEBUG_TASKS:Z = false

.field static final DEBUG_TRANSITION:Z = false

.field static final DEBUG_USER_LEAVING:Z = false

.field static final DEBUG_VISBILITY:Z = false

.field static final DELAY_TO_UNFREEZE:I = 0x1f4

.field static final DESTROY_ACTIVITIES_MSG:I = 0x6d

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x69

.field private static final FINISH_AFTER_PAUSE:I = 0x1

.field private static final FINISH_AFTER_VISIBLE:I = 0x2

.field private static final FINISH_IMMEDIATELY:I = 0x0

.field static final IDLE_NOW_MSG:I = 0x67

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x66

.field private static final IS_TYPE_MRVL:Z

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x6b

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x6a

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x64

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x6c

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_TOKENS:Z

.field private static final hardwareInfo:Ljava/lang/String;

.field private static lastPackageName:Ljava/lang/String;

.field static final localLOGV:Z

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


# instance fields
.field mConfigWillChange:Z

.field final mContext:Landroid/content/Context;

.field mCurrentArrange:I

.field private mCurrentUser:I

.field mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

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

.field final mHandler:Landroid/os/Handler;

.field final mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mInitialStartTime:J

.field mIsFreeStyle:Z

.field mIsIdleNow:Z

.field final mIsMultiWindowEnabled:Z

.field mIsMultiWindowMode:Z

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field private mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

.field private mLastScreenshotBitmap:Landroid/graphics/Bitmap;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mMainStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mPendingDismissKeyguardOnNextActivity:Z

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field private mSecretThumbnail:Landroid/graphics/Bitmap;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field mSplitZoneInfo:Z

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

.field mThumbnailHeight:I

.field mThumbnailWidth:I

.field mUserLeaving:Z

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 161
    const-string v0, "0x494d"

    const-string v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_MID:Z

    .line 313
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v1, :cond_3b

    :goto_19
    sput-boolean v1, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    .line 410
    const-string v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->hardwareInfo:Ljava/lang/String;

    .line 412
    const-string v0, "mrvl"

    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->IS_TYPE_MRVL:Z

    .line 418
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    return-void

    :cond_39
    move v0, v2

    .line 161
    goto :goto_11

    :cond_3b
    move v1, v2

    .line 313
    goto :goto_19
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;ZLandroid/os/Looper;)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mainStack"    # Z
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    .line 310
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 315
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    .line 316
    iput v3, p0, Lcom/android/server/am/ActivityStack;->mCurrentArrange:I

    .line 317
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    .line 318
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    .line 319
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowMode:Z

    .line 320
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsFreeStyle:Z

    .line 329
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 334
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 341
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 353
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 355
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 360
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 365
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 371
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    .line 372
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 375
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mPendingDismissKeyguardOnNextActivity:Z

    .line 378
    iput v5, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 379
    iput v5, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 384
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    .line 529
    new-instance v1, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    invoke-direct {v1, p0, p4}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 530
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 531
    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    .line 532
    iput-boolean p3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    .line 533
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 535
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 536
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 537
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 539
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    .line 544
    return-void
.end method

.method private applyWindowModeLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 8
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .prologue
    .line 1910
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-nez v2, :cond_16

    .line 1911
    const-string v2, "android"

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1912
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_16

    .line 1934
    :cond_15
    :goto_15
    return-void

    .line 1918
    :cond_16
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1e
    if-ltz v0, :cond_53

    .line 1919
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1920
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_30

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_3e

    :cond_30
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v3, :cond_3e

    if-eq v1, p1, :cond_3e

    .line 1922
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-nez v2, :cond_41

    .line 1918
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 1925
    :cond_41
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x4c0000

    and-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1926
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v3, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v4, -0x4c0001

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1931
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isHomeTask(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1932
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v3, -0x400001

    and-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_15
.end method

.method private checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .registers 16
    .param p1, "sr"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7722
    const-string v8, ""

    .line 7723
    .local v8, "simNum":Ljava/lang/String;
    const-string v4, ""

    .line 7724
    .local v4, "imsi":Ljava/lang/String;
    const-string v2, ""

    .line 7725
    .local v2, "datapref":Ljava/lang/String;
    const/4 v9, 0x0

    .line 7726
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v6, 0x0

    .line 7729
    .local v6, "multiSimTelephonyManager":Landroid/telephony/MultiSimTelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v10

    if-eqz v10, :cond_136

    .line 7730
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_112

    .line 7731
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v6

    .line 7732
    if-nez v6, :cond_1e

    .line 7733
    const/4 v0, 0x0

    .line 7810
    :cond_1d
    :goto_1d
    return v0

    .line 7735
    :cond_1e
    invoke-virtual {v6}, Landroid/telephony/MultiSimTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    .line 7767
    :cond_22
    :goto_22
    const/4 v0, 0x0

    .line 7769
    .local v0, "checkFlag":Z
    const/4 v7, 0x0

    .line 7770
    .local v7, "packages":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 7772
    .local v1, "classes":[Ljava/lang/String;
    const-string v10, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15a

    const-string v10, "46001"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15a

    .line 7773
    const/4 v10, 0x7

    new-array v7, v10, [Ljava/lang/String;

    .end local v7    # "packages":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "com.neusoft.td.android.wo116114"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "com.android.wo3g"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "com.infinit.wostore.ui"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-string v11, "com.sinovatech.unicom.ui"

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const-string v11, "com.neusoft.td.android.wo116114"

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const-string v11, "com.asiainfo.android"

    aput-object v11, v7, v10

    const/4 v10, 0x6

    const-string v11, "com.samsung.wo3g"

    aput-object v11, v7, v10

    .line 7774
    .restart local v7    # "packages":[Ljava/lang/String;
    const/4 v10, 0x7

    new-array v1, v10, [Ljava/lang/String;

    .end local v1    # "classes":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "com.neusoft.td.android.wo116114.ui.main.MainActivity"

    aput-object v11, v1, v10

    const/4 v10, 0x1

    const-string v11, "com.android.wo3g.wo3g"

    aput-object v11, v1, v10

    const/4 v10, 0x2

    const-string v11, "com.infinit.wostore.ui.ZBeginActivity"

    aput-object v11, v1, v10

    const/4 v10, 0x3

    const-string v11, "com.sinovatech.unicom.ui.WelcomeClient"

    aput-object v11, v1, v10

    const/4 v10, 0x4

    const-string v11, "com.neusoft.td.android.wo116114.activity.WelcomeActivity"

    aput-object v11, v1, v10

    const/4 v10, 0x5

    const-string v11, "com.asiainfo.android.MainActivity"

    aput-object v11, v1, v10

    const/4 v10, 0x6

    const-string v11, "com.samsung.wo3g.wo3g"

    aput-object v11, v1, v10

    .line 7782
    .restart local v1    # "classes":[Ljava/lang/String;
    :cond_8b
    :goto_8b
    if-eqz v7, :cond_1d

    .line 7783
    const-string v10, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1bc

    .line 7784
    if-eqz p1, :cond_1d

    .line 7786
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 7787
    .local v5, "in":Landroid/content/Intent;
    if-eqz v5, :cond_d1

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_d1

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_d1

    .line 7788
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 7791
    :cond_d1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1d

    .line 7792
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ec
    array-length v10, v1

    if-ge v3, v10, :cond_1d

    .line 7793
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v7, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b8

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v1, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b8

    .line 7794
    const/4 v0, 0x1

    .line 7795
    goto/16 :goto_1d

    .line 7737
    .end local v0    # "checkFlag":Z
    .end local v1    # "classes":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "in":Landroid/content/Intent;
    .end local v7    # "packages":[Ljava/lang/String;
    :cond_112
    const-string v10, "persist.sys.dataprefer.simid"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7738
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_123

    .line 7739
    const/4 v0, 0x0

    goto/16 :goto_1d

    .line 7741
    :cond_123
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v6

    .line 7742
    if-nez v6, :cond_130

    .line 7743
    const/4 v0, 0x0

    goto/16 :goto_1d

    .line 7745
    :cond_130
    invoke-virtual {v6}, Landroid/telephony/MultiSimTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_22

    .line 7755
    :cond_136
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 7757
    .restart local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_145

    .line 7758
    const/4 v0, 0x0

    goto/16 :goto_1d

    .line 7760
    :cond_145
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 7762
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_22

    .line 7763
    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_22

    .line 7776
    .restart local v0    # "checkFlag":Z
    .restart local v1    # "classes":[Ljava/lang/String;
    .restart local v7    # "packages":[Ljava/lang/String;
    :cond_15a
    const-string v10, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    const-string v10, "46000"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8b

    const-string v10, "46002"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8b

    const-string v10, "46007"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8b

    .line 7778
    const/16 v10, 0x9

    new-array v7, v10, [Ljava/lang/String;

    .end local v7    # "packages":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "com.aspire.mm"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "com.autonavi.cmccmap"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "com.cmcc.mobilevideo"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-string v11, "cmccwm.mobilemusic"

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const-string v11, "com.chinamobile.cmccwifi"

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const-string v11, "cn.emagsoftware.gamehall"

    aput-object v11, v7, v10

    const/4 v10, 0x6

    const-string v11, "com.hisunflytone.android"

    aput-object v11, v7, v10

    const/4 v10, 0x7

    const-string v11, "com.huawei.pisa.activity"

    aput-object v11, v7, v10

    const/16 v10, 0x8

    const-string v11, "com.sec.android.app.customerservice"

    aput-object v11, v7, v10

    .restart local v7    # "packages":[Ljava/lang/String;
    goto/16 :goto_8b

    .line 7792
    .restart local v3    # "i":I
    .restart local v5    # "in":Landroid/content/Intent;
    :cond_1b8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_ec

    .line 7799
    .end local v3    # "i":I
    .end local v5    # "in":Landroid/content/Intent;
    :cond_1bc
    const-string v10, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 7800
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1d

    .line 7801
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1df
    array-length v10, v7

    if-ge v3, v10, :cond_1d

    .line 7802
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v7, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f5

    .line 7803
    const/4 v0, 0x1

    .line 7804
    goto/16 :goto_1d

    .line 7801
    :cond_1f5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1df
.end method

.method private checkSplitState()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 7527
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7528
    .local v0, "N":I
    const/4 v2, 0x0

    .line 7530
    .local v2, "obscuredMask":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_18

    .line 7531
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 7533
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v5, :cond_19

    .line 7546
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_18
    :goto_18
    return v4

    .line 7537
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-nez v5, :cond_32

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-nez v5, :cond_32

    .line 7539
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v2, v5

    .line 7540
    const/16 v5, 0xf

    if-ne v2, v5, :cond_32

    .line 7541
    const/4 v4, 0x1

    goto :goto_18

    .line 7530
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_a
.end method

.method private clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1977
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1978
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 1979
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1980
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p1, :cond_1d

    .line 1981
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1978
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1984
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_20
    return-void
.end method

.method private final completePauseLocked()V
    .registers 2

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1704
    return-void
.end method

.method private final completePauseLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 16
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1709
    if-eqz p1, :cond_29

    .line 1710
    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_96

    .line 1713
    iget v8, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v8

    const/high16 v9, 0x2000000

    if-ne v8, v9, :cond_8f

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    if-nez v8, :cond_8f

    .line 1715
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 1761
    :goto_20
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v8, :cond_f0

    .line 1762
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v8, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1769
    :cond_29
    :goto_29
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v8

    if-nez v8, :cond_f5

    .line 1770
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1784
    :cond_34
    :goto_34
    if-eqz p1, :cond_8e

    .line 1785
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1788
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_8a

    iget-wide v8, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_8a

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 1790
    const-wide/16 v1, 0x0

    .line 1791
    .local v1, "diff":J
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v9

    .line 1792
    :try_start_56
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v10}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    iget-wide v12, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v1, v10, v12

    .line 1794
    monitor-exit v9
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_109

    .line 1795
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-lez v8, :cond_8a

    .line 1796
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1797
    .local v0, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 1798
    :try_start_76
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    .line 1801
    .local v4, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_89

    .line 1802
    invoke-virtual {v4, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1804
    :cond_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_76 .. :try_end_8a} :catchall_10c

    .line 1807
    .end local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1    # "diff":J
    .end local v4    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_8a
    const-wide/16 v8, 0x0

    iput-wide v8, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1809
    :cond_8e
    return-void

    .line 1717
    :cond_8f
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    goto :goto_20

    .line 1720
    :cond_96
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_ed

    .line 1722
    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v8, :cond_a6

    .line 1723
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1724
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1728
    :cond_a6
    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v8, :cond_b3

    .line 1735
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "pause-config"

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto/16 :goto_20

    .line 1737
    :cond_b3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v5

    .line 1740
    .local v5, "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    .line 1741
    .local v3, "mw":Lcom/android/server/am/MultiWindowManagerService;
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    if-nez v8, :cond_cc

    invoke-virtual {v3, v5, p1}, Lcom/android/server/am/MultiWindowManagerService;->checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_e6

    :cond_cc
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e6

    const/4 v6, 0x1

    .line 1743
    .local v6, "scheduleIdle":Z
    :goto_d6
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_e1

    if-eqz v6, :cond_e8

    .line 1751
    :cond_e1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto/16 :goto_20

    .line 1741
    .end local v6    # "scheduleIdle":Z
    :cond_e6
    const/4 v6, 0x0

    goto :goto_d6

    .line 1753
    .restart local v6    # "scheduleIdle":Z
    :cond_e8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto/16 :goto_20

    .line 1758
    .end local v3    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v5    # "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "scheduleIdle":Z
    :cond_ed
    const/4 p1, 0x0

    goto/16 :goto_20

    .line 1764
    :cond_f0
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_29

    .line 1772
    :cond_f5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1773
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 1774
    .local v7, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_103

    if-eqz p1, :cond_34

    if-eq v7, p1, :cond_34

    .line 1780
    :cond_103
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_34

    .line 1794
    .end local v7    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "diff":J
    :catchall_109
    move-exception v8

    :try_start_10a
    monitor-exit v9
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v8

    .line 1804
    .restart local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_10c
    move-exception v8

    :try_start_10d
    monitor-exit v0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    throw v8
.end method

.method private final completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 10
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1817
    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1818
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1819
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1822
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1823
    .local v2, "msg":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1824
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1836
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_22

    .line 1837
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1840
    :cond_22
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_36

    .line 1842
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_53

    .line 1845
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->updatePinupHiddenFlag()V

    .line 1846
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1854
    :cond_36
    :goto_36
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 1855
    .local v0, "cr":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->pendingNotifyWindowState:Z

    if-eqz v3, :cond_3c

    .line 1856
    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v7, v4}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    goto :goto_3c

    .line 1848
    .end local v0    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_53
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_36

    .line 1861
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_59
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1862
    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1863
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1864
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1869
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_87

    .line 1870
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v4

    .line 1871
    :try_start_74
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v5}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1872
    monitor-exit v4

    .line 1876
    :goto_83
    return-void

    .line 1872
    :catchall_84
    move-exception v3

    monitor-exit v4
    :try_end_86
    .catchall {:try_start_74 .. :try_end_86} :catchall_84

    throw v3

    .line 1874
    :cond_87
    const-wide/16 v3, 0x0

    iput-wide v3, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_83
.end method

.method private final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # I

    .prologue
    .line 3653
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3654
    .local v1, "i":I
    :cond_6
    if-lez v1, :cond_1c

    .line 3655
    add-int/lit8 v1, v1, -0x1

    .line 3656
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 3657
    .local v0, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_6

    .line 3660
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p2, :cond_1e

    .line 3668
    .end local v0    # "candidate":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    const/4 v2, -0x1

    :goto_1d
    return v2

    .line 3663
    .restart local v0    # "candidate":Lcom/android/server/am/ActivityRecord;
    :cond_1e
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    .line 3664
    goto :goto_1d
.end method

.method private findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 914
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 915
    .local v1, "cls":Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 916
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "cls":Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .restart local v1    # "cls":Landroid/content/ComponentName;
    :cond_11
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 920
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 921
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_21
    if-ltz v2, :cond_43

    .line 922
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 923
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_40

    .line 924
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v4, :cond_40

    .line 933
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_3f
    return-object v3

    .line 921
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 933
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_43
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method private findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 848
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "includeSingleInstance"    # Z

    .prologue
    const/high16 v9, 0x8000000

    .line 852
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 853
    .local v1, "cls":Landroid/content/ComponentName;
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v7, :cond_13

    .line 854
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "cls":Landroid/content/ComponentName;
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .restart local v1    # "cls":Landroid/content/ComponentName;
    :cond_13
    const/4 v2, 0x0

    .line 858
    .local v2, "cp":Lcom/android/server/am/TaskRecord;
    const/4 v4, 0x0

    .line 860
    .local v4, "multipleTaskActivityRecord":Lcom/android/server/am/ActivityRecord;
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 861
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 862
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_25
    if-ltz v3, :cond_c1

    .line 863
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 864
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_8e

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v7, v2, :cond_8e

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v7, v6, :cond_8e

    if-eqz p3, :cond_91

    .line 866
    :goto_3d
    iget-object v2, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 870
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v7, :cond_97

    .line 871
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 873
    if-nez v4, :cond_ab

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/2addr v7, v9

    if-nez v7, :cond_ab

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_ab

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/2addr v7, v9

    if-eqz v7, :cond_ab

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 876
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_8d

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 877
    :cond_8d
    move-object v4, v5

    .line 862
    :cond_8e
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    .line 864
    :cond_91
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8e

    goto :goto_3d

    .line 885
    :cond_97
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_ac

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 905
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_ab
    :goto_ab
    return-object v5

    .line 891
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_ac
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v7, :cond_8e

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    goto :goto_ab

    .line 901
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_c1
    if-eqz v4, :cond_c5

    move-object v5, v4

    .line 902
    goto :goto_ab

    .line 905
    :cond_c5
    const/4 v5, 0x0

    goto :goto_ab
.end method

.method private findTaskWithZone(I)Lcom/android/server/am/TaskRecord;
    .registers 6
    .param p1, "zone"    # I

    .prologue
    .line 4259
    const/4 v0, -0x1

    .line 4260
    .local v0, "currentTask":I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2d

    .line 4261
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4262
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1a

    .line 4260
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4265
    :cond_1a
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v3, v0, :cond_17

    .line 4266
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 4268
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, p1, :cond_17

    .line 4269
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4274
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_2c
    return-object v3

    :cond_2d
    const/4 v3, 0x0

    goto :goto_2c
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "index"    # I
    .param p3, "mode"    # I
    .param p4, "oomAdj"    # Z

    .prologue
    const/4 v6, 0x0

    .line 6080
    const/4 v7, 0x2

    if-ne p3, v7, :cond_65

    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v7, :cond_65

    .line 6081
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    .line 6082
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6084
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 6085
    .local v5, "resumeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v2, 0x1

    .line 6086
    .local v2, "needforceIdle":Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 6087
    .local v4, "rd":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_20

    .line 6088
    const/4 v2, 0x0

    .line 6093
    .end local v4    # "rd":Lcom/android/server/am/ActivityRecord;
    :cond_33
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_52

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    const/high16 v7, 0x2000000

    if-ne v6, v7, :cond_50

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    if-eqz v6, :cond_52

    :cond_50
    if-eqz v2, :cond_61

    .line 6102
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    .line 6109
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "needforceIdle":Z
    .end local v5    # "resumeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_55
    :goto_55
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6110
    if-eqz p4, :cond_60

    .line 6111
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 6145
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_60
    :goto_60
    return-object p1

    .line 6104
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "needforceIdle":Z
    .restart local v5    # "resumeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_61
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto :goto_55

    .line 6117
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "needforceIdle":Z
    .end local v5    # "resumeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_65
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6118
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6119
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6120
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v7, p1, :cond_7a

    .line 6121
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6123
    :cond_7a
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6125
    .local v3, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6127
    if-eqz p3, :cond_8a

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v7, :cond_8a

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v7, :cond_9a

    .line 6132
    :cond_8a
    const/4 v7, 0x1

    const-string v8, "finish-imm"

    invoke-virtual {p0, p1, v7, p4, v8}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v0

    .line 6134
    .local v0, "activityRemoved":Z
    if-eqz v0, :cond_96

    .line 6135
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 6137
    :cond_96
    if-eqz v0, :cond_60

    move-object p1, v6

    goto :goto_60

    .line 6142
    .end local v0    # "activityRemoved":Z
    :cond_9a
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6143
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_60
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z

    .prologue
    .line 6067
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 6068
    .local v0, "index":I
    if-gez v0, :cond_8

    .line 6069
    const/4 v1, 0x0

    .line 6072
    :goto_7
    return-object v1

    :cond_8
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_7
.end method

.method private final finishTaskMoveLocked(I)V
    .registers 3
    .param p1, "task"    # I

    .prologue
    .line 6862
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 6863
    return-void
.end method

.method private getFrontResumedActivities(ZZZ)Ljava/util/ArrayList;
    .registers 16
    .param p1, "includePinup"    # Z
    .param p2, "onlyResumed"    # Z
    .param p3, "checkUserId"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5332
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5333
    .local v2, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    monitor-enter p0

    .line 5334
    :try_start_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5335
    .local v0, "N":I
    const/4 v1, -0x1

    .line 5336
    .local v1, "currentTaskId":I
    const/4 v4, 0x0

    .line 5337
    .local v4, "isTopFloating":Z
    const/4 v5, 0x0

    .line 5338
    .local v5, "lastSkipped":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_80

    .line 5339
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 5340
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v1, v9, :cond_3d

    if-eqz p3, :cond_29

    invoke-direct {p0, v8}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 5342
    :cond_29
    if-eqz v5, :cond_39

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v10, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v9, v10, :cond_39

    .line 5344
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5345
    const/4 v5, 0x0

    .line 5348
    :cond_39
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_40

    .line 5338
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 5351
    :cond_40
    iget v9, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    .line 5352
    .local v6, "mode":I
    iget v9, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v7

    .line 5354
    .local v7, "option":I
    iget v10, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    if-eqz v4, :cond_69

    const/4 v9, 0x1

    :goto_51
    invoke-static {v10, v9, p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isArrangeMode(IZZ)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 5358
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v9, :cond_77

    iget v9, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v9

    const/high16 v10, 0x40000

    and-int/2addr v9, v10

    if-nez v9, :cond_77

    .line 5360
    const/4 v4, 0x1

    .line 5361
    move-object v5, v8

    .line 5362
    goto :goto_3d

    .line 5354
    :cond_69
    if-eqz p2, :cond_75

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v11, :cond_73

    const/4 v9, 0x1

    goto :goto_51

    :cond_73
    const/4 v9, 0x0

    goto :goto_51

    :cond_75
    const/4 v9, 0x1

    goto :goto_51

    .line 5364
    :cond_77
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5365
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 5367
    :cond_7e
    const/4 v4, 0x0

    goto :goto_3d

    .line 5370
    .end local v6    # "mode":I
    .end local v7    # "option":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_80
    monitor-exit p0

    .line 5371
    return-object v2

    .line 5370
    .end local v0    # "N":I
    .end local v1    # "currentTaskId":I
    .end local v3    # "i":I
    .end local v4    # "isTopFloating":Z
    .end local v5    # "lastSkipped":Lcom/android/server/am/ActivityRecord;
    :catchall_82
    move-exception v9

    monitor-exit p0
    :try_end_84
    .catchall {:try_start_6 .. :try_end_84} :catchall_82

    throw v9
.end method

.method private getFrontZoneActivity(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .registers 11
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "zoneInfo"    # I
    .param p3, "skipTopRecord"    # Z

    .prologue
    const/4 v4, 0x0

    .line 5375
    monitor-enter p0

    .line 5376
    if-nez p3, :cond_12

    .line 5377
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 5378
    .local v3, "topRecord":Lcom/android/server/am/ActivityRecord;
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x400000

    and-int/2addr v5, v6

    if-eqz v5, :cond_12

    .line 5379
    monitor-exit p0

    move-object v2, v4

    .line 5393
    .end local v3    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :goto_11
    return-object v2

    .line 5383
    :cond_12
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5384
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1a
    if-ltz v1, :cond_3c

    .line 5385
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 5386
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget v5, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v5

    const/high16 v6, 0x2000000

    if-ne v5, v6, :cond_39

    .line 5387
    iget v5, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v5, 0xf

    if-ne v5, p2, :cond_39

    .line 5388
    monitor-exit p0

    goto :goto_11

    .line 5392
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_36
    move-exception v4

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v4

    .line 5384
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 5392
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_36

    move-object v2, v4

    .line 5393
    goto :goto_11
.end method

.method private getTaskWindowModeLocked(Lcom/android/server/am/TaskRecord;)I
    .registers 6
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4249
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 4250
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4251
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_21

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, v3, :cond_21

    .line 4252
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4255
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_20
    return v2

    .line 4249
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4255
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    const/high16 v2, 0x1000000

    goto :goto_20
.end method

.method private final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 13
    .param p1, "tag"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7173
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 7174
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    .line 7176
    .local v1, "strData":Ljava/lang/String;
    :goto_11
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_78

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nfc://secure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 7178
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "nfc://secure:it should not be shown "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7190
    :goto_75
    return-void

    .line 7174
    .end local v1    # "strData":Ljava/lang/String;
    :cond_76
    const/4 v1, 0x0

    goto :goto_11

    .line 7184
    .restart local v1    # "strData":Ljava/lang/String;
    :cond_78
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_75
.end method

.method private makeSecretThumbnail()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 547
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 548
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x1050001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 549
    .local v2, "h":I
    const v5, 0x1050002

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 551
    .local v4, "w":I
    const v5, 0x108106a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 553
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mSecretThumbnail:Landroid/graphics/Bitmap;

    .line 554
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mSecretThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 555
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v6, v6, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 556
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 557
    return-void
.end method

.method private final moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "where"    # I

    .prologue
    const/4 v5, 0x1

    .line 3676
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 3677
    .local v0, "newTop":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3678
    .local v2, "top":I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3686
    .local v1, "oldTop":Lcom/android/server/am/ActivityRecord;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_39

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_39

    .line 3688
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusLoss(Ljava/lang/String;)V

    .line 3690
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusGain(Ljava/lang/String;)V

    .line 3693
    :cond_39
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3694
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 3695
    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 3696
    return-object v0
.end method

.method private moveTaskToFrontLocked(I)V
    .registers 10
    .param p1, "taskId"    # I

    .prologue
    .line 5453
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5454
    .local v4, "movedPinupAppTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5455
    .local v3, "movedAppTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5456
    .local v2, "moved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5457
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_4b

    .line 5458
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5459
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, p1, :cond_37

    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 5460
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5461
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5457
    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 5462
    :cond_37
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_34

    iget v6, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v7, 0x100000

    and-int/2addr v6, v7

    if-nez v6, :cond_34

    .line 5464
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 5467
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4b
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5468
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5469
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 5470
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_69

    .line 5471
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 5473
    :cond_69
    return-void
.end method

.method private needsPinupActivtiesFoceHidden()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 592
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 593
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 610
    :cond_15
    :goto_15
    return v4

    .line 597
    :cond_16
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 598
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1e
    if-ltz v1, :cond_46

    .line 599
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 600
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_48

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_48

    .line 601
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->getMainWindowAttributes(Landroid/view/IApplicationToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 602
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v2, :cond_15

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x400000

    and-int/2addr v5, v6

    if-eqz v5, :cond_15

    .line 610
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_46
    const/4 v4, 0x0

    goto :goto_15

    .line 598
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e
.end method

.method private notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V
    .registers 22
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "windowMode"    # I
    .param p3, "windowInfoChanged"    # I
    .param p4, "allInTask"    # Z

    .prologue
    .line 7552
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->needPendingNotify()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 7553
    const/4 v14, 0x1

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->pendingNotifyWindowState:Z

    .line 7641
    :cond_b
    :goto_b
    return-void

    .line 7557
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->pendingNotifyWindowState:Z

    .line 7559
    if-eqz p4, :cond_4f

    .line 7560
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7561
    .local v3, "N":I
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_1d
    if-ltz v5, :cond_74

    .line 7562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 7563
    .local v4, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v14, v15, :cond_4c

    .line 7564
    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_4c

    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v14, :cond_4c

    .line 7566
    :try_start_3b
    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v15, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v0, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-interface {v14, v15, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowStatusChanged(Landroid/os/IBinder;II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_1e5

    .line 7561
    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    .line 7573
    .end local v3    # "N":I
    .end local v4    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "i":I
    :cond_4f
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_74

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v14, :cond_74

    .line 7575
    :try_start_5d
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-interface {v14, v15, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowStatusChanged(Landroid/os/IBinder;II)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_74} :catch_1e2

    .line 7583
    :cond_74
    :goto_74
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v14, v15}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPortraitLayoutOnlyPackage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    .line 7584
    .local v7, "isPortraitOnly":Z
    const/4 v9, 0x0

    .line 7586
    .local v9, "needRelaunched":Z
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    and-int/lit16 v14, v14, 0x1000

    if-nez v14, :cond_91

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, 0x1000

    if-eqz v14, :cond_9f

    .line 7588
    :cond_91
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    and-int/2addr v14, v15

    and-int/lit16 v14, v14, 0x1000

    if-nez v14, :cond_18b

    const/4 v9, 0x1

    .line 7591
    :cond_9f
    :goto_9f
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    and-int/lit16 v14, v14, 0x800

    if-nez v14, :cond_af

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, 0x800

    if-eqz v14, :cond_bd

    .line 7593
    :cond_af
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    and-int/2addr v14, v15

    and-int/lit16 v14, v14, 0x800

    if-nez v14, :cond_18e

    const/4 v9, 0x1

    .line 7596
    :cond_bd
    :goto_bd
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v14, :cond_b

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v15, "com.google.android.talk.videochat.VideoChatActivity"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d7

    if-nez v7, :cond_d7

    if-eqz v9, :cond_b

    .line 7600
    :cond_d7
    if-eqz v9, :cond_db

    .line 7601
    or-int/lit8 p3, p3, 0x1

    .line 7604
    :cond_db
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    and-int/lit8 v14, v14, 0xf

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v15, v15, 0xf

    if-eq v14, v15, :cond_191

    const/4 v13, 0x1

    .line 7606
    .local v13, "zoneChanged":Z
    :goto_ea
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v15}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v15

    if-eq v14, v15, :cond_194

    const/4 v8, 0x1

    .line 7608
    .local v8, "modeChanged":Z
    :goto_fd
    and-int/lit8 v14, p3, 0x1

    if-eqz v14, :cond_197

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v15, "com.google.android.gm"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_121

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v15, "com.google.android.talk.videochat.VideoChatActivity"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_121

    if-nez v7, :cond_121

    if-eqz v9, :cond_197

    :cond_121
    const/4 v12, 0x1

    .line 7610
    .local v12, "sizeChanged":Z
    :goto_122
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    if-eqz v14, :cond_130

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    const/high16 v15, 0x2000000

    if-ne v14, v15, :cond_199

    :cond_130
    const/4 v6, 0x1

    .line 7612
    .local v6, "isFirstLaunch":Z
    :goto_131
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_1d8

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v14, :cond_1d8

    .line 7613
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 7614
    .local v10, "orgId":J
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v15, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v14, v15, :cond_19b

    if-nez v6, :cond_19b

    .line 7615
    if-nez v13, :cond_153

    if-nez v8, :cond_153

    if-eqz v12, :cond_1d5

    .line 7616
    :cond_153
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 7618
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7619
    .restart local v3    # "N":I
    add-int/lit8 v5, v3, -0x1

    .restart local v5    # "i":I
    :goto_167
    if-ltz v5, :cond_1d5

    .line 7620
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 7621
    .restart local v4    # "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v14, v15, :cond_188

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_188

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v14, :cond_188

    .line 7622
    const/4 v14, 0x1

    iput-boolean v14, v4, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 7619
    :cond_188
    add-int/lit8 v5, v5, -0x1

    goto :goto_167

    .line 7588
    .end local v3    # "N":I
    .end local v4    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "i":I
    .end local v6    # "isFirstLaunch":Z
    .end local v8    # "modeChanged":Z
    .end local v10    # "orgId":J
    .end local v12    # "sizeChanged":Z
    .end local v13    # "zoneChanged":Z
    :cond_18b
    const/4 v9, 0x0

    goto/16 :goto_9f

    .line 7593
    :cond_18e
    const/4 v9, 0x0

    goto/16 :goto_bd

    .line 7604
    :cond_191
    const/4 v13, 0x0

    goto/16 :goto_ea

    .line 7606
    .restart local v13    # "zoneChanged":Z
    :cond_194
    const/4 v8, 0x0

    goto/16 :goto_fd

    .line 7608
    .restart local v8    # "modeChanged":Z
    :cond_197
    const/4 v12, 0x0

    goto :goto_122

    .line 7610
    .restart local v12    # "sizeChanged":Z
    :cond_199
    const/4 v6, 0x0

    goto :goto_131

    .line 7626
    .restart local v6    # "isFirstLaunch":Z
    .restart local v10    # "orgId":J
    :cond_19b
    if-eqz v9, :cond_1d5

    .line 7627
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 7629
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7630
    .restart local v3    # "N":I
    add-int/lit8 v5, v3, -0x1

    .restart local v5    # "i":I
    :goto_1b1
    if-ltz v5, :cond_1d5

    .line 7631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 7632
    .restart local v4    # "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v14, v15, :cond_1d2

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_1d2

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v14, :cond_1d2

    .line 7633
    const/4 v14, 0x1

    iput-boolean v14, v4, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 7630
    :cond_1d2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b1

    .line 7637
    .end local v3    # "N":I
    .end local v4    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "i":I
    :cond_1d5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7639
    .end local v10    # "orgId":J
    :cond_1d8
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    goto/16 :goto_b

    .line 7576
    .end local v6    # "isFirstLaunch":Z
    .end local v7    # "isPortraitOnly":Z
    .end local v8    # "modeChanged":Z
    .end local v9    # "needRelaunched":Z
    .end local v12    # "sizeChanged":Z
    .end local v13    # "zoneChanged":Z
    :catch_1e2
    move-exception v14

    goto/16 :goto_74

    .line 7567
    .restart local v3    # "N":I
    .restart local v4    # "cr":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "i":I
    :catch_1e5
    move-exception v14

    goto/16 :goto_4c
.end method

.method private okToShow(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 560
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-eq v0, v1, :cond_e

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private final performClearTaskAtIndexLocked(II)V
    .registers 10
    .param p1, "taskId"    # I
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 3600
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_17

    .line 3601
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3602
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_18

    .line 3615
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_17
    return-void

    .line 3606
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_18
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1f

    .line 3607
    add-int/lit8 p2, p2, 0x1

    .line 3608
    goto :goto_1

    .line 3610
    :cond_1f
    const/4 v4, 0x0

    const-string v5, "clear"

    move-object v0, p0

    move v2, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3612
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method private final performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 16
    .param p1, "taskId"    # I
    .param p2, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "launchFlags"    # I

    .prologue
    .line 3529
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3532
    .local v2, "i":I
    :cond_6
    if-lez v2, :cond_1a

    .line 3533
    add-int/lit8 v2, v2, -0x1

    .line 3534
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3535
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_6

    .line 3536
    add-int/lit8 v2, v2, 0x1

    .line 3542
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    if-lez v2, :cond_94

    .line 3543
    add-int/lit8 v2, v2, -0x1

    .line 3544
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3545
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1a

    .line 3548
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_32

    .line 3549
    const/4 v11, 0x0

    .line 3592
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_31
    :goto_31
    return-object v11

    .line 3551
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_32
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3553
    move-object v11, v1

    .line 3554
    .local v11, "ret":Lcom/android/server/am/ActivityRecord;
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_57

    .line 3555
    add-int/lit8 v2, v2, 0x1

    .line 3556
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3557
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_78

    .line 3576
    :cond_57
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_31

    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-nez v0, :cond_31

    .line 3578
    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_31

    .line 3579
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v5

    .line 3580
    .local v5, "index":I
    if-ltz v5, :cond_76

    .line 3581
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "clear"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3584
    :cond_76
    const/4 v11, 0x0

    goto :goto_31

    .line 3560
    .end local v5    # "index":I
    :cond_78
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_3d

    .line 3563
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v10

    .line 3564
    .local v10, "opts":Landroid/app/ActivityOptions;
    if-eqz v10, :cond_85

    .line 3565
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 3567
    :cond_85
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "clear"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3569
    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    .line 3592
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    .end local v11    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_94
    const/4 v11, 0x0

    goto :goto_31
.end method

.method private final performClearTaskLocked(I)V
    .registers 5
    .param p1, "taskId"    # I

    .prologue
    .line 3621
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3624
    .local v0, "i":I
    :cond_6
    if-lez v0, :cond_1a

    .line 3625
    add-int/lit8 v0, v0, -0x1

    .line 3626
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3627
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_6

    .line 3628
    add-int/lit8 v0, v0, 0x1

    .line 3634
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    if-lez v0, :cond_35

    .line 3635
    add-int/lit8 v0, v0, -0x1

    .line 3636
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3637
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1a

    .line 3640
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p1, :cond_1a

    .line 3642
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 3646
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_35
    return-void
.end method

.method private final relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "changes"    # I
    .param p3, "andResume"    # Z

    .prologue
    .line 7333
    const/4 v2, 0x0

    .line 7334
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 7335
    .local v3, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_8

    .line 7336
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 7337
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 7340
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v0, :cond_2a

    .line 7342
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTIVITY_STATE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7343
    .local v7, "activityStateIntent":Landroid/content/Intent;
    const-string v0, "activityPackageName"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7344
    const-string v0, "activityState"

    const-string v1, "recreate"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7345
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.activitymanager.permission.GET_ACTIVITY_STATE"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 7350
    .end local v7    # "activityStateIntent":Landroid/content/Intent;
    :cond_2a
    if-eqz p3, :cond_d7

    const/16 v0, 0x7543

    :goto_2e
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7354
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 7360
    const/4 v0, 0x0

    :try_start_5e
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 7364
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 7365
    .local v6, "copyConfig":Landroid/content/res/Configuration;
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_90

    .line 7366
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_90

    .line 7367
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v0, v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPortraitLayoutOnlyPackage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 7368
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_8d

    .line 7369
    const/4 v0, 0x1

    iput v0, v6, Landroid/content/res/Configuration;->orientation:I

    .line 7371
    :cond_8d
    const/4 v0, 0x0

    iput v0, v6, Landroid/content/res/Configuration;->seq:I

    .line 7378
    :cond_90
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_b3

    .line 7379
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v1, Landroid/content/pm/ActivityInfo;->FORCED_LOCAL_ORIENTATION:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 7381
    .local v8, "forcedLocalOrientation":I
    if-eqz v8, :cond_b3

    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v8, v0, :cond_b3

    .line 7383
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService;->getConfigurationForRotation(I)Landroid/content/res/Configuration;

    move-result-object v6

    .line 7388
    .end local v8    # "forcedLocalOrientation":I
    :cond_b3
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_db

    const/4 v5, 0x1

    :goto_bc
    move v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_c0} :catch_e9

    .line 7397
    .end local v6    # "copyConfig":Landroid/content/res/Configuration;
    :goto_c0
    if-eqz p3, :cond_dd

    .line 7398
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 7399
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 7400
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_d1

    .line 7401
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 7403
    :cond_d1
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 7409
    :goto_d5
    const/4 v0, 0x1

    return v0

    .line 7350
    :cond_d7
    const/16 v0, 0x7544

    goto/16 :goto_2e

    .line 7388
    .restart local v6    # "copyConfig":Landroid/content/res/Configuration;
    :cond_db
    const/4 v5, 0x0

    goto :goto_bc

    .line 7405
    .end local v6    # "copyConfig":Landroid/content/res/Configuration;
    :cond_dd
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 7406
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_d5

    .line 7393
    :catch_e9
    move-exception v0

    goto :goto_c0
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 7
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;

    .prologue
    .line 6431
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6435
    .local v0, "i":I
    :cond_4
    :goto_4
    if-lez v0, :cond_19

    .line 6436
    add-int/lit8 v0, v0, -0x1

    .line 6437
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 6439
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_4

    .line 6441
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6442
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_4

    .line 6445
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 6207
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 6208
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 6209
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 6210
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 6211
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 6212
    return-void
.end method

.method private final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 33
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3182
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_46

    const/16 v20, 0x1

    .line 3192
    .local v20, "forceReset":Z
    :goto_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v27, v0

    .line 3197
    .local v27, "task":Lcom/android/server/am/TaskRecord;
    const/16 v25, 0x0

    .line 3198
    .local v25, "target":Lcom/android/server/am/ActivityRecord;
    const/16 v26, 0x0

    .line 3199
    .local v26, "targetI":I
    const/16 v28, -0x1

    .line 3200
    .local v28, "taskTopI":I
    const/16 v24, -0x1

    .line 3201
    .local v24, "replyChainEnd":I
    const/16 v23, -0x1

    .line 3202
    .local v23, "lastReparentPos":I
    const/16 v29, 0x0

    .line 3203
    .local v29, "topOptions":Landroid/app/ActivityOptions;
    const/4 v14, 0x1

    .line 3204
    .local v14, "canMoveOptions":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v22, v2, -0x1

    .local v22, "i":I
    :goto_29
    const/4 v2, -0x1

    move/from16 v0, v22

    if-lt v0, v2, :cond_55

    .line 3205
    if-ltz v22, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v13, v2

    .line 3207
    .local v13, "below":Lcom/android/server/am/ActivityRecord;
    :goto_3d
    if-eqz v13, :cond_4b

    iget-boolean v2, v13, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_4b

    .line 3204
    :goto_43
    add-int/lit8 v22, v22, -0x1

    goto :goto_29

    .line 3182
    .end local v13    # "below":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "canMoveOptions":Z
    .end local v20    # "forceReset":Z
    .end local v22    # "i":I
    .end local v23    # "lastReparentPos":I
    .end local v24    # "replyChainEnd":I
    .end local v25    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "targetI":I
    .end local v27    # "task":Lcom/android/server/am/TaskRecord;
    .end local v28    # "taskTopI":I
    .end local v29    # "topOptions":Landroid/app/ActivityOptions;
    :cond_46
    const/16 v20, 0x0

    goto :goto_c

    .line 3205
    .restart local v14    # "canMoveOptions":Z
    .restart local v20    # "forceReset":Z
    .restart local v22    # "i":I
    .restart local v23    # "lastReparentPos":I
    .restart local v24    # "replyChainEnd":I
    .restart local v25    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "targetI":I
    .restart local v27    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v28    # "taskTopI":I
    .restart local v29    # "topOptions":Landroid/app/ActivityOptions;
    :cond_49
    const/4 v13, 0x0

    goto :goto_3d

    .line 3211
    .restart local v13    # "below":Lcom/android/server/am/ActivityRecord;
    :cond_4b
    if-eqz v13, :cond_61

    iget v2, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v2, v5, :cond_61

    .line 3503
    .end local v13    # "below":Lcom/android/server/am/ActivityRecord;
    :cond_55
    if-eqz v29, :cond_60

    .line 3506
    if-eqz p1, :cond_370

    .line 3507
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 3513
    :cond_60
    :goto_60
    return-object p1

    .line 3214
    .restart local v13    # "below":Lcom/android/server/am/ActivityRecord;
    :cond_61
    if-nez v25, :cond_6a

    .line 3215
    move-object/from16 v25, v13

    .line 3216
    move/from16 v26, v22

    .line 3220
    const/16 v24, -0x1

    .line 3221
    goto :goto_43

    .line 3224
    :cond_6a
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v19, v0

    .line 3226
    .local v19, "flags":I
    and-int/lit8 v2, v19, 0x2

    if-eqz v2, :cond_b2

    const/16 v18, 0x1

    .line 3228
    .local v18, "finishOnTaskLaunch":Z
    :goto_78
    and-int/lit8 v2, v19, 0x40

    if-eqz v2, :cond_b5

    const/4 v12, 0x1

    .line 3231
    .local v12, "allowTaskReparenting":Z
    :goto_7d
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v27

    if-ne v2, v0, :cond_25b

    .line 3237
    if-gez v28, :cond_89

    .line 3238
    move/from16 v28, v26

    .line 3240
    :cond_89
    if-eqz v13, :cond_257

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v27

    if-ne v2, v0, :cond_257

    .line 3241
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v5, 0x80000

    and-int/2addr v2, v5

    if-eqz v2, :cond_b7

    const/4 v15, 0x1

    .line 3244
    .local v15, "clearWhenTaskReset":Z
    :goto_9f
    if-nez v18, :cond_b9

    if-nez v15, :cond_b9

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_b9

    .line 3251
    if-gez v24, :cond_ad

    .line 3252
    move/from16 v24, v26

    .line 3499
    .end local v15    # "clearWhenTaskReset":Z
    :cond_ad
    :goto_ad
    move-object/from16 v25, v13

    .line 3500
    move/from16 v26, v22

    goto :goto_43

    .line 3226
    .end local v12    # "allowTaskReparenting":Z
    .end local v18    # "finishOnTaskLaunch":Z
    :cond_b2
    const/16 v18, 0x0

    goto :goto_78

    .line 3228
    .restart local v18    # "finishOnTaskLaunch":Z
    :cond_b5
    const/4 v12, 0x0

    goto :goto_7d

    .line 3241
    .restart local v12    # "allowTaskReparenting":Z
    :cond_b7
    const/4 v15, 0x0

    goto :goto_9f

    .line 3254
    .restart local v15    # "clearWhenTaskReset":Z
    :cond_b9
    if-nez v18, :cond_1d1

    if-nez v15, :cond_1d1

    if-eqz v12, :cond_1d1

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_1d1

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d1

    .line 3263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3264
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_134

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    .line 3269
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 3283
    :goto_fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v27

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 3284
    if-gez v24, :cond_111

    .line 3285
    move/from16 v24, v26

    .line 3287
    :cond_111
    const/16 v17, 0x0

    .line 3288
    .local v17, "dstPos":I
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    move-object/from16 v16, v0

    .line 3289
    .local v16, "curThumbHolder":Lcom/android/server/am/ThumbnailHolder;
    if-nez v14, :cond_16f

    const/16 v21, 0x1

    .line 3290
    .local v21, "gotOptions":Z
    :goto_11d
    move/from16 v4, v26

    .local v4, "srcPos":I
    :goto_11f
    move/from16 v0, v24

    if-gt v4, v0, :cond_1bf

    .line 3291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3292
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_172

    .line 3290
    :goto_131
    add-int/lit8 v4, v4, 0x1

    goto :goto_11f

    .line 3273
    .end local v4    # "srcPos":I
    .end local v16    # "curThumbHolder":Lcom/android/server/am/ThumbnailHolder;
    .end local v17    # "dstPos":I
    .end local v21    # "gotOptions":Z
    :cond_134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 3274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v2, :cond_14d

    .line 3275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 3277
    :cond_14d
    new-instance v2, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    invoke-direct {v2, v5, v6, v8}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 3279
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v5, v2, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_fc

    .line 3289
    .restart local v16    # "curThumbHolder":Lcom/android/server/am/ThumbnailHolder;
    .restart local v17    # "dstPos":I
    :cond_16f
    const/16 v21, 0x0

    goto :goto_11d

    .line 3297
    .restart local v4    # "srcPos":I
    .restart local v21    # "gotOptions":Z
    :cond_172
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v0, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 3298
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    move-object/from16 v16, v0

    .line 3299
    const/4 v14, 0x0

    .line 3300
    if-nez v21, :cond_18d

    if-nez v29, :cond_18d

    .line 3301
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v29

    .line 3302
    if-eqz v29, :cond_18d

    .line 3303
    const/16 v21, 0x1

    .line 3312
    :cond_18d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v17

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 3315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 3316
    add-int/lit8 v17, v17, 0x1

    .line 3320
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_131

    .line 3322
    :cond_1bf
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1c5

    .line 3323
    move-object/from16 p1, v13

    .line 3325
    :cond_1c5
    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_1cd

    .line 3326
    const/16 v28, -0x1

    .line 3328
    :cond_1cd
    const/16 v24, -0x1

    .line 3329
    goto/16 :goto_ad

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "srcPos":I
    .end local v16    # "curThumbHolder":Lcom/android/server/am/ThumbnailHolder;
    .end local v17    # "dstPos":I
    .end local v21    # "gotOptions":Z
    :cond_1d1
    if-nez v20, :cond_1d7

    if-nez v18, :cond_1d7

    if-eqz v15, :cond_253

    .line 3335
    :cond_1d7
    if-eqz v15, :cond_21a

    .line 3339
    add-int/lit8 v24, v26, 0x1

    .line 3342
    :goto_1db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_1fc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v27

    if-ne v2, v0, :cond_1fc

    .line 3343
    add-int/lit8 v24, v24, 0x1

    goto :goto_1db

    .line 3345
    :cond_1fc
    add-int/lit8 v24, v24, -0x1

    .line 3349
    :cond_1fe
    :goto_1fe
    const/4 v3, 0x0

    .line 3350
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    if-nez v14, :cond_21f

    const/16 v21, 0x1

    .line 3351
    .restart local v21    # "gotOptions":Z
    :goto_203
    move/from16 v4, v26

    .restart local v4    # "srcPos":I
    :goto_205
    move/from16 v0, v24

    if-gt v4, v0, :cond_241

    .line 3352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3353
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_222

    .line 3351
    :cond_217
    :goto_217
    add-int/lit8 v4, v4, 0x1

    goto :goto_205

    .line 3346
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "srcPos":I
    .end local v21    # "gotOptions":Z
    :cond_21a
    if-gez v24, :cond_1fe

    .line 3347
    move/from16 v24, v26

    goto :goto_1fe

    .line 3350
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_21f
    const/16 v21, 0x0

    goto :goto_203

    .line 3356
    .restart local v4    # "srcPos":I
    .restart local v21    # "gotOptions":Z
    :cond_222
    const/4 v14, 0x0

    .line 3357
    if-nez v21, :cond_22f

    if-nez v29, :cond_22f

    .line 3358
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v29

    .line 3359
    if-eqz v29, :cond_22f

    .line 3360
    const/16 v21, 0x1

    .line 3363
    :cond_22f
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_217

    .line 3365
    add-int/lit8 v24, v24, -0x1

    .line 3366
    add-int/lit8 v4, v4, -0x1

    goto :goto_217

    .line 3369
    :cond_241
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_247

    .line 3370
    move-object/from16 p1, v13

    .line 3372
    :cond_247
    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_24f

    .line 3373
    const/16 v28, -0x1

    .line 3375
    :cond_24f
    const/16 v24, -0x1

    .line 3376
    goto/16 :goto_ad

    .line 3380
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "srcPos":I
    .end local v21    # "gotOptions":Z
    :cond_253
    const/16 v24, -0x1

    goto/16 :goto_ad

    .line 3385
    .end local v15    # "clearWhenTaskReset":Z
    :cond_257
    const/16 v24, -0x1

    goto/16 :goto_ad

    .line 3388
    :cond_25b
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_271

    if-eqz v13, :cond_26b

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_271

    .line 3396
    :cond_26b
    if-gez v24, :cond_ad

    .line 3397
    move/from16 v24, v26

    goto/16 :goto_ad

    .line 3400
    :cond_271
    if-ltz v28, :cond_362

    if-eqz v12, :cond_362

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_362

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_362

    .line 3414
    if-nez v20, :cond_28d

    if-eqz v18, :cond_2c3

    .line 3415
    :cond_28d
    if-gez v24, :cond_291

    .line 3416
    move/from16 v24, v26

    .line 3418
    :cond_291
    const/4 v3, 0x0

    .line 3421
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    move/from16 v4, v26

    .restart local v4    # "srcPos":I
    :goto_294
    move/from16 v0, v24

    if-gt v4, v0, :cond_2bf

    .line 3422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3423
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2a9

    .line 3421
    :cond_2a6
    :goto_2a6
    add-int/lit8 v4, v4, 0x1

    goto :goto_294

    .line 3426
    :cond_2a9
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2a6

    .line 3428
    add-int/lit8 v28, v28, -0x1

    .line 3429
    add-int/lit8 v23, v23, -0x1

    .line 3430
    add-int/lit8 v24, v24, -0x1

    .line 3431
    add-int/lit8 v4, v4, -0x1

    goto :goto_2a6

    .line 3434
    :cond_2bf
    const/16 v24, -0x1

    .line 3435
    goto/16 :goto_ad

    .line 3436
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "srcPos":I
    :cond_2c3
    if-gez v24, :cond_2c7

    .line 3437
    move/from16 v24, v26

    .line 3441
    :cond_2c7
    move/from16 v4, v24

    .restart local v4    # "srcPos":I
    :goto_2c9
    move/from16 v0, v26

    if-lt v4, v0, :cond_31b

    .line 3442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3443
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2de

    .line 3441
    :goto_2db
    add-int/lit8 v4, v4, -0x1

    goto :goto_2c9

    .line 3446
    :cond_2de
    if-gez v23, :cond_318

    .line 3447
    move/from16 v23, v28

    .line 3448
    move-object/from16 p1, v3

    .line 3458
    :goto_2e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3459
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v2, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 3460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v23

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 3465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto :goto_2db

    .line 3450
    :cond_318
    add-int/lit8 v23, v23, -0x1

    goto :goto_2e4

    .line 3470
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_31b
    const/16 v24, -0x1

    .line 3476
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_ad

    .line 3477
    add-int/lit8 v7, v23, -0x1

    .local v7, "j":I
    :goto_328
    if-ltz v7, :cond_ad

    .line 3478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3479
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_33b

    .line 3477
    :cond_338
    :goto_338
    add-int/lit8 v7, v7, -0x1

    goto :goto_328

    .line 3482
    :cond_33b
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_338

    .line 3483
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "replace"

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object v6, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_338

    .line 3485
    add-int/lit8 v28, v28, -0x1

    .line 3486
    add-int/lit8 v23, v23, -0x1

    goto :goto_338

    .line 3493
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "srcPos":I
    .end local v7    # "j":I
    :cond_362
    if-eqz v13, :cond_ad

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v5, :cond_ad

    .line 3496
    const/16 v24, -0x1

    goto/16 :goto_ad

    .line 3509
    .end local v12    # "allowTaskReparenting":Z
    .end local v13    # "below":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "finishOnTaskLaunch":Z
    .end local v19    # "flags":I
    :cond_370
    invoke-virtual/range {v29 .. v29}, Landroid/app/ActivityOptions;->abort()V

    goto/16 :goto_60
.end method

.method private setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "windowMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1889
    .local p3, "moved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_26

    .line 1890
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setZoneForAllActivitiesInTaskLocked task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", windowMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :cond_26
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1893
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-ge v1, v0, :cond_67

    .line 1894
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1895
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p1, :cond_4a

    .line 1896
    invoke-static {p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x2000000

    if-ne v3, v4, :cond_4d

    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-nez v3, :cond_4d

    .line 1893
    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1900
    :cond_4d
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {p2, v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->setWindowMode(II)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1901
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V

    .line 1902
    if-eqz p3, :cond_4a

    .line 1903
    const/4 v3, 0x0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p3, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4a

    .line 1907
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_67
    return-void
.end method

.method private shouldHideActivity(ZZIILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 15
    .param p1, "behindFullscreen"    # Z
    .param p2, "behindToolkit"    # Z
    .param p3, "obscuredMask"    # I
    .param p4, "currentTaskId"    # I
    .param p5, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p6, "home"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1937
    iget-object v5, p5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne p4, v5, :cond_8

    .line 1938
    const/4 v5, 0x1

    .line 1973
    :goto_7
    return v5

    .line 1940
    :cond_8
    iget v5, p5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    .line 1942
    .local v2, "options":I
    const/high16 v5, 0x800000

    and-int/2addr v5, v2

    if-nez v5, :cond_17

    and-int/lit16 v5, v2, 0x1000

    if-eqz v5, :cond_19

    .line 1944
    :cond_17
    const/4 v5, 0x0

    goto :goto_7

    .line 1947
    :cond_19
    if-eq p5, p6, :cond_39

    if-eqz p6, :cond_39

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v6

    if-le v5, v6, :cond_39

    iget-boolean v5, p5, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v5, :cond_39

    .line 1950
    const/4 v5, 0x0

    goto :goto_7

    .line 1951
    :cond_39
    if-eqz p6, :cond_76

    if-ne p5, p6, :cond_76

    .line 1952
    const/4 v4, 0x0

    .line 1953
    .local v4, "tempObscuredMask":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1954
    .local v3, "rd":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, p5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, v6, :cond_62

    .line 1959
    .end local v3    # "rd":Lcom/android/server/am/ActivityRecord;
    :cond_5a
    or-int v5, v4, p3

    const/16 v6, 0xf

    if-ne v5, v6, :cond_76

    .line 1960
    const/4 v5, 0x1

    goto :goto_7

    .line 1955
    .restart local v3    # "rd":Lcom/android/server/am/ActivityRecord;
    :cond_62
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_44

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v5, :cond_44

    .line 1956
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    goto :goto_44

    .line 1963
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rd":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "tempObscuredMask":I
    :cond_76
    if-eqz p1, :cond_7f

    const/high16 v5, 0x800000

    and-int/2addr v5, v2

    if-nez v5, :cond_7f

    .line 1964
    const/4 v5, 0x1

    goto :goto_7

    .line 1967
    :cond_7f
    and-int/lit8 v0, v2, 0xf

    .line 1968
    .local v0, "currentZone":I
    if-eqz v0, :cond_90

    and-int v5, v0, p3

    if-ne v5, v0, :cond_90

    iget-object v5, p5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p4, v5, :cond_90

    .line 1970
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1973
    :cond_90
    const/4 v5, 0x0

    goto/16 :goto_7
.end method

.method private final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .registers 41
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "doResume"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 2903
    .local v24, "NH":I
    const/4 v4, -0x1

    .line 2906
    .local v4, "addPos":I
    const/4 v12, -0x1

    .line 2907
    .local v12, "forcedLocalOrientation":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2a

    .line 2908
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v5, Landroid/content/pm/ActivityInfo;->FORCED_LOCAL_ORIENTATION:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 2910
    .local v28, "localOrientation":I
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_47

    .line 2911
    const/16 v12, 0xf

    .line 2918
    .end local v28    # "localOrientation":I
    :cond_2a
    :goto_2a
    if-nez p2, :cond_245

    .line 2920
    const/16 v34, 0x1

    .line 2921
    .local v34, "startIt":Z
    add-int/lit8 v27, v24, -0x1

    .local v27, "i":I
    :goto_30
    if-ltz v27, :cond_cd

    .line 2922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/am/ActivityRecord;

    .line 2923
    .local v30, "p":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_4f

    .line 2921
    :cond_44
    :goto_44
    add-int/lit8 v27, v27, -0x1

    goto :goto_30

    .line 2912
    .end local v27    # "i":I
    .end local v30    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v34    # "startIt":Z
    .restart local v28    # "localOrientation":I
    :cond_47
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_2a

    .line 2913
    const/16 v12, 0x10

    goto :goto_2a

    .line 2926
    .end local v28    # "localOrientation":I
    .restart local v27    # "i":I
    .restart local v30    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v34    # "startIt":Z
    :cond_4f
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_b1

    .line 2930
    add-int/lit8 v4, v27, 0x1

    .line 2931
    if-nez v34, :cond_cd

    .line 2938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2939
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_af

    const/4 v9, 0x1

    :goto_8e
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZZILandroid/content/pm/ActivityInfo;I)V

    .line 2946
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_a2

    .line 2947
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 2954
    :cond_a2
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2956
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_ae

    .line 2957
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActivityStack;->applyWindowModeLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3133
    .end local v27    # "i":I
    .end local v30    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v34    # "startIt":Z
    :cond_ae
    :goto_ae
    return-void

    .line 2940
    .restart local v27    # "i":I
    .restart local v30    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v34    # "startIt":Z
    :cond_af
    const/4 v9, 0x0

    goto :goto_8e

    .line 2965
    :cond_b1
    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v3, :cond_44

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x200000

    and-int/2addr v3, v5

    if-nez v3, :cond_44

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x2000000

    and-int/2addr v3, v5

    if-nez v3, :cond_44

    .line 2967
    const/16 v34, 0x0

    goto/16 :goto_44

    .line 2973
    .end local v30    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_cd
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_d6

    .line 2974
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActivityStack;->applyWindowModeLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3002
    .end local v27    # "i":I
    .end local v34    # "startIt":Z
    :cond_d6
    :goto_d6
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_102

    .line 3003
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v5}, Lcom/android/server/am/MultiWindowManagerService;->isMustNotSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 3004
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x4c0000

    and-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 3005
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x1000000

    or-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 3012
    :cond_102
    if-gez v4, :cond_106

    .line 3013
    move/from16 v4, v24

    .line 3019
    :cond_106
    move/from16 v0, v24

    if-ge v4, v0, :cond_10f

    .line 3020
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 3030
    :cond_10f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3031
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 3032
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 3033
    if-lez v24, :cond_305

    .line 3037
    move/from16 v23, p2

    .line 3038
    .local v23, "showStartingIcon":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v33, v0

    .line 3039
    .local v33, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v33, :cond_145

    .line 3040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/server/ProcessMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v33

    .end local v33    # "proc":Lcom/android/server/am/ProcessRecord;
    check-cast v33, Lcom/android/server/am/ProcessRecord;

    .line 3042
    .restart local v33    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_145
    if-eqz v33, :cond_14d

    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_14f

    .line 3043
    :cond_14d
    const/16 v23, 0x1

    .line 3047
    :cond_14f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x10000

    and-int/2addr v3, v5

    if-eqz v3, :cond_2b0

    .line 3048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v5, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3057
    :goto_171
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 3059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_2cd

    const/4 v9, 0x1

    :goto_19d
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZZILandroid/content/pm/ActivityInfo;I)V

    .line 3063
    const/16 v25, 0x1

    .line 3064
    .local v25, "doShow":Z
    if-eqz p2, :cond_1cf

    .line 3070
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x200000

    and-int/2addr v3, v5

    if-eqz v3, :cond_1cf

    .line 3072
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 3073
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_2d0

    const/16 v25, 0x1

    .line 3076
    :cond_1cf
    :goto_1cf
    if-eqz v25, :cond_232

    .line 3081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v31, v0

    .line 3082
    .local v31, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v31, :cond_2de

    .line 3085
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v5, :cond_2d4

    const/16 v31, 0x0

    .line 3101
    :cond_1e5
    :goto_1e5
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x1000

    if-nez v3, :cond_232

    .line 3102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    move/from16 v21, v0

    if-eqz v31, :cond_301

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    :goto_22f
    invoke-virtual/range {v13 .. v23}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    .line 3121
    .end local v23    # "showStartingIcon":Z
    .end local v25    # "doShow":Z
    .end local v31    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v33    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_232
    :goto_232
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_23b

    .line 3122
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 3130
    :cond_23b
    if-eqz p3, :cond_ae

    .line 3131
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_ae

    .line 2980
    :cond_245
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_d6

    .line 2981
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v29

    .line 2982
    .local v29, "mw":Lcom/android/server/am/MultiWindowManagerService;
    const/16 v26, 0x0

    .line 2983
    .local v26, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_28b

    .line 2984
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v26

    .line 2988
    :goto_261
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V

    .line 2990
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v5, 0x2000000

    if-ne v3, v5, :cond_2a2

    .line 2991
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_294

    .line 2992
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x800000

    or-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_d6

    .line 2986
    :cond_28b
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v26

    goto :goto_261

    .line 2994
    :cond_294
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v5, -0x800001

    and-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_d6

    .line 2997
    :cond_2a2
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v5, -0x800001

    and-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_d6

    .line 3052
    .end local v26    # "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v29    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .restart local v23    # "showStartingIcon":Z
    .restart local v33    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_2b0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_2ca

    const/16 v3, 0x1008

    :goto_2ba
    move/from16 v0, p4

    invoke-virtual {v5, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_171

    .line 3052
    :cond_2ca
    const/16 v3, 0x1006

    goto :goto_2ba

    .line 3059
    :cond_2cd
    const/4 v9, 0x0

    goto/16 :goto_19d

    .line 3073
    .restart local v25    # "doShow":Z
    :cond_2d0
    const/16 v25, 0x0

    goto/16 :goto_1cf

    .line 3087
    .restart local v31    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_2d4
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_1e5

    const/16 v31, 0x0

    goto/16 :goto_1e5

    .line 3092
    :cond_2de
    const/4 v3, 0x1

    if-lt v4, v3, :cond_1e5

    .line 3093
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    .line 3094
    .local v32, "prevActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_1e5

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_1e5

    .line 3095
    move-object/from16 v31, v32

    goto/16 :goto_1e5

    .line 3102
    .end local v32    # "prevActivity":Lcom/android/server/am/ActivityRecord;
    :cond_301
    const/16 v22, 0x0

    goto/16 :goto_22f

    .line 3113
    .end local v23    # "showStartingIcon":Z
    .end local v25    # "doShow":Z
    .end local v31    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v33    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_33a

    const/4 v9, 0x1

    :goto_32a
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZZILandroid/content/pm/ActivityInfo;I)V

    .line 3117
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_232

    .line 3113
    :cond_33a
    const/4 v9, 0x0

    goto :goto_32a
.end method

.method private final startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 13
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "userLeaving"    # Z
    .param p3, "uiSleeping"    # Z

    .prologue
    const/16 v8, 0x68

    const/4 v7, 0x0

    .line 1410
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_5c

    .line 1411
    if-nez p1, :cond_19

    .line 1412
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 1413
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    const-string v4, "Trying to pause <null>"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1414
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1544
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_18
    return-void

    .line 1417
    :cond_19
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1418
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 1419
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to pause when pause is already pending for this activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", all pending activities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1431
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_4a
    :goto_4a
    if-nez p1, :cond_80

    .line 1432
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 1433
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    const-string v4, "Trying to pause when nothing is resumed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1434
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_18

    .line 1423
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_5c
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4a

    .line 1424
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 1425
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to pause when pause is already pending for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 1439
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_80
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1441
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_15a

    .line 1442
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1447
    :goto_8b
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1448
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1449
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1452
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v3, :cond_a1

    .line 1453
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v7}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1456
    :cond_a1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1458
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_175

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_175

    .line 1463
    :try_start_b0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v3, :cond_d2

    .line 1465
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTIVITY_STATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1466
    .local v0, "activityStateIntent":Landroid/content/Intent;
    const-string v3, "activityPackageName"

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1467
    const-string v3, "activityState"

    const-string v4, "pause"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1468
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.activitymanager.permission.GET_ACTIVITY_STATE"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1470
    .end local v0    # "activityStateIntent":Landroid/content/Intent;
    :cond_d2
    const/16 v3, 0x753d

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1473
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v3, v4, v5, p2, v6}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 1475
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_10a

    .line 1476
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_10a} :catch_15e

    .line 1503
    :cond_10a
    :goto_10a
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_130

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_130

    .line 1504
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1505
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_130

    .line 1507
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1508
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1513
    .end local v2    # "msg":Landroid/os/Message;
    :cond_130
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_184

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_188

    .line 1519
    :cond_13c
    if-nez p3, :cond_141

    .line 1520
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1528
    :cond_141
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1529
    .restart local v2    # "msg":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1530
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1531
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_18

    .line 1444
    .end local v2    # "msg":Landroid/os/Message;
    :cond_15a
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_8b

    .line 1478
    :catch_15e
    move-exception v1

    .line 1480
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v4, "Exception thrown during pause"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1482
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_172

    .line 1483
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1488
    :goto_16f
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_10a

    .line 1485
    :cond_172
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_16f

    .line 1492
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_175
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_181

    .line 1493
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1498
    :goto_17e
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_10a

    .line 1495
    :cond_181
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_17e

    .line 1513
    :cond_184
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_13c

    .line 1542
    :cond_188
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_18
.end method

.method private final startPausingLocked(ZZ)V
    .registers 4
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1407
    return-void
.end method

.method private final startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 18
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 1207
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_9a

    .line 1208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    .line 1209
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_28

    .line 1210
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 1216
    :cond_28
    :goto_28
    if-eqz v2, :cond_e0

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_e0

    .line 1217
    const-string v12, ""

    .line 1219
    .local v12, "applicationName":Ljava/lang/String;
    :try_start_30
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    .line 1220
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_MID:Z

    if-eqz v0, :cond_56

    .line 1221
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_56} :catch_a9

    .line 1228
    :cond_56
    :goto_56
    :try_start_56
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;)Z

    .line 1230
    if-eqz v12, :cond_b2

    const-string v0, "com.android.contacts/.activities.PeopleActivity"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "com.android.mms/.ui.ConversationComposer"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "com.sec.android.gallery3d/.app.Gallery"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 1234
    :cond_77
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing JIT for 3 seconds "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_99} :catch_bd

    .line 1258
    .end local v12    # "applicationName":Ljava/lang/String;
    :cond_99
    :goto_99
    return-void

    .line 1212
    :cond_9a
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_28

    .line 1213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    goto :goto_28

    .line 1223
    .restart local v12    # "applicationName":Ljava/lang/String;
    :catch_a9
    move-exception v13

    .line 1224
    .local v13, "e":Ljava/lang/NullPointerException;
    const-string v0, "ActivityManager"

    const-string v1, "Exception cannot get application name "

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    .line 1237
    .end local v13    # "e":Ljava/lang/NullPointerException;
    :cond_b2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    :try_start_b9
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_99

    .line 1240
    :catch_bd
    move-exception v13

    .line 1241
    .local v13, "e":Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when starting activity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1249
    .end local v12    # "applicationName":Ljava/lang/String;
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_e0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "activity"

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZ)Lcom/android/server/am/ProcessRecord;

    .line 1253
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_99

    .line 1255
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationStart(Ljava/lang/String;)V

    goto :goto_99
.end method

.method private final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 5588
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_29

    .line 5590
    :cond_16
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_29

    .line 5591
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v0, :cond_29

    .line 5595
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v4, "no-history"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5604
    :cond_29
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_88

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_88

    .line 5605
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_46

    .line 5606
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_46

    .line 5607
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5610
    :cond_46
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 5612
    const/4 v0, 0x0

    :try_start_4a
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 5615
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5618
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_5e

    .line 5619
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 5621
    :cond_5e
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v0, v1, v3, v4}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 5622
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 5623
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 5625
    :cond_77
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 5626
    .local v7, "msg":Landroid/os/Message;
    iput-object p1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5627
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_88} :catch_89

    .line 5642
    .end local v7    # "msg":Landroid/os/Message;
    :cond_88
    :goto_88
    return-void

    .line 5628
    :catch_89
    move-exception v6

    .line 5632
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5634
    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 5636
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5637
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_88

    .line 5638
    const-string v0, "stop-except"

    invoke-virtual {p0, p1, v8, v2, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto :goto_88
.end method

.method private final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 839
    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    return v0
.end method

.method private updatePinupHiddenFlag()V
    .registers 7

    .prologue
    .line 617
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 618
    .local v0, "N":I
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->needsPinupActivtiesFoceHidden()Z

    move-result v2

    .line 620
    .local v2, "needsFlags":Z
    move v1, v0

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_34

    .line 621
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 622
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v3

    .line 623
    .local v3, "options":I
    const/high16 v5, 0x800000

    and-int/2addr v5, v3

    if-eqz v5, :cond_2a

    .line 624
    if-eqz v2, :cond_2d

    .line 625
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 620
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 627
    :cond_2d
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v5, -0x4001

    iput v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_2a

    .line 631
    .end local v3    # "options":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_34
    return-void
.end method


# virtual methods
.method final activityDestroyed(Landroid/os/IBinder;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 6407
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 6408
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_36

    move-result-wide v1

    .line 6410
    .local v1, "origId":J
    :try_start_7
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 6411
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_14

    .line 6412
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x69

    invoke-virtual {v4, v6, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 6415
    :cond_14
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 6416
    .local v0, "index":I
    if-ltz v0, :cond_28

    .line 6417
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v6, :cond_28

    .line 6418
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 6419
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6422
    :cond_28
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_31

    .line 6424
    :try_start_2c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6426
    monitor-exit v5

    .line 6427
    return-void

    .line 6424
    .end local v0    # "index":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_31
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 6426
    .end local v1    # "origId":J
    :catchall_36
    move-exception v4

    monitor-exit v5
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_36

    throw v4
.end method

.method final activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .registers 35
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 5703
    const/16 v23, 0x0

    .line 5705
    .local v23, "res":Lcom/android/server/am/ActivityRecord;
    const/16 v27, 0x0

    .line 5706
    .local v27, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v19, 0x0

    .line 5707
    .local v19, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v28, 0x0

    .line 5708
    .local v28, "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v25, 0x0

    .line 5709
    .local v25, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    const/4 v13, 0x0

    .line 5710
    .local v13, "NS":I
    const/4 v12, 0x0

    .line 5711
    .local v12, "NF":I
    const/4 v14, 0x0

    .line 5712
    .local v14, "NT":I
    const/16 v24, 0x0

    .line 5713
    .local v24, "sendThumbnail":Landroid/app/IApplicationThread;
    const/16 v16, 0x0

    .line 5714
    .local v16, "booting":Z
    const/16 v18, 0x0

    .line 5715
    .local v18, "enableScreen":Z
    const/4 v15, 0x0

    .line 5717
    .local v15, "activityRemoved":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 5718
    :try_start_1b
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 5719
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_2d

    .line 5720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5721
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 5725
    :cond_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    .line 5726
    .local v22, "index":I
    if-ltz v22, :cond_16b

    .line 5727
    move-object/from16 v23, v4

    .line 5729
    if-eqz p2, :cond_44

    .line 5730
    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 5738
    :cond_44
    if-eqz p3, :cond_4a

    .line 5739
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 5743
    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_163

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    :goto_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 5744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5750
    :cond_74
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 5751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 5752
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v2, :cond_95

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_95

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_95

    .line 5753
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v24, v0

    .line 5754
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 5760
    :cond_95
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 5763
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_b3

    .line 5764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_b3

    .line 5765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 5766
    const/16 v18, 0x1

    .line 5775
    :cond_b3
    :goto_b3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v27

    .line 5776
    if-eqz v27, :cond_17e

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 5777
    :goto_c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_de

    .line 5778
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_d5
    .catchall {:try_start_1b .. :try_end_d5} :catchall_17b

    .line 5779
    .end local v19    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v20, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_dc
    .catchall {:try_start_d5 .. :try_end_dc} :catchall_248

    move-object/from16 v19, v20

    .line 5781
    .end local v20    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_de
    :try_start_de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_102

    .line 5782
    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_f7
    .catchall {:try_start_de .. :try_end_f7} :catchall_17b

    .line 5783
    .end local v28    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v29, "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_100
    .catchall {:try_start_f7 .. :try_end_100} :catchall_24d

    move-object/from16 v28, v29

    .line 5786
    .end local v29    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v28    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_102
    :try_start_102
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_117

    .line 5787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v16, v0

    .line 5788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 5790
    :cond_117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_135

    .line 5791
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_12c
    .catchall {:try_start_102 .. :try_end_12c} :catchall_17b

    .line 5792
    .end local v25    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    .local v26, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    :try_start_12c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_133
    .catchall {:try_start_12c .. :try_end_133} :catchall_252

    move-object/from16 v25, v26

    .line 5794
    .end local v26    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    .restart local v25    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    :cond_135
    :try_start_135
    monitor-exit v30
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_17b

    .line 5799
    if-eqz v24, :cond_13f

    .line 5801
    :try_start_138
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->requestThumbnail(Landroid/os/IBinder;)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13f} :catch_181

    .line 5810
    :cond_13f
    :goto_13f
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_141
    move/from16 v0, v21

    if-ge v0, v13, :cond_1a2

    .line 5811
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5812
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 5813
    :try_start_154
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_199

    .line 5814
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 5818
    :goto_15f
    monitor-exit v3
    :try_end_160
    .catchall {:try_start_154 .. :try_end_160} :catchall_19f

    .line 5810
    add-int/lit8 v21, v21, 0x1

    goto :goto_141

    .line 5743
    .end local v21    # "i":I
    :cond_163
    :try_start_163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, v4, :cond_74

    goto/16 :goto_5a

    .line 5770
    :cond_16b
    if-eqz p2, :cond_b3

    .line 5771
    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object/from16 v5, p0

    move/from16 v6, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    goto/16 :goto_b3

    .line 5794
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v22    # "index":I
    :catchall_17b
    move-exception v2

    :goto_17c
    monitor-exit v30
    :try_end_17d
    .catchall {:try_start_163 .. :try_end_17d} :catchall_17b

    throw v2

    .line 5776
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v22    # "index":I
    :cond_17e
    const/4 v13, 0x0

    goto/16 :goto_c0

    .line 5802
    :catch_181
    move-exception v17

    .line 5803
    .local v17, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown when requesting thumbnail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5804
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    goto :goto_13f

    .line 5816
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v21    # "i":I
    :cond_199
    :try_start_199
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_15f

    .line 5818
    :catchall_19f
    move-exception v2

    monitor-exit v3
    :try_end_1a1
    .catchall {:try_start_199 .. :try_end_1a1} :catchall_19f

    throw v2

    .line 5823
    :cond_1a2
    const/16 v21, 0x0

    :goto_1a4
    move/from16 v0, v21

    if-ge v0, v12, :cond_1c8

    .line 5824
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5825
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 5826
    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_1b9
    const-string v6, "finish-idle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v15

    .line 5827
    monitor-exit v3

    .line 5823
    add-int/lit8 v21, v21, 0x1

    goto :goto_1a4

    .line 5827
    :catchall_1c5
    move-exception v2

    monitor-exit v3
    :try_end_1c7
    .catchall {:try_start_1b9 .. :try_end_1c7} :catchall_1c5

    throw v2

    .line 5831
    :cond_1c8
    const/16 v21, 0x0

    :goto_1ca
    move/from16 v0, v21

    if-ge v0, v14, :cond_1e6

    .line 5832
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5833
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    .line 5831
    add-int/lit8 v21, v21, 0x1

    goto :goto_1ca

    .line 5836
    :cond_1e6
    if-eqz v16, :cond_225

    .line 5838
    const-string v2, "ActivityManager"

    const-string v3, "!@call fb1"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/ActivityStack$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityStack$2;-><init>(Lcom/android/server/am/ActivityStack;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5851
    :cond_1ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 5855
    if-eqz v18, :cond_216

    .line 5856
    const-string v2, "ActivityManager"

    const-string v3, "!@call esab"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    .line 5860
    :cond_216
    if-eqz v15, :cond_224

    .line 5865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 5866
    const/4 v2, 0x0

    :try_start_21e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5867
    monitor-exit v3
    :try_end_224
    .catchall {:try_start_21e .. :try_end_224} :catchall_245

    .line 5870
    :cond_224
    return-object v23

    .line 5845
    :cond_225
    if-eqz v25, :cond_1ff

    .line 5846
    const/16 v21, 0x0

    :goto_229
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_1ff

    .line 5847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserStartedState;)V

    .line 5846
    add-int/lit8 v21, v21, 0x1

    goto :goto_229

    .line 5867
    :catchall_245
    move-exception v2

    :try_start_246
    monitor-exit v3
    :try_end_247
    .catchall {:try_start_246 .. :try_end_247} :catchall_245

    throw v2

    .line 5794
    .end local v19    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v21    # "i":I
    .restart local v20    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_248
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_17c

    .end local v28    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v29    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_24d
    move-exception v2

    move-object/from16 v28, v29

    .end local v29    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v28    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_17c

    .end local v25    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    .restart local v26    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    :catchall_252
    move-exception v2

    move-object/from16 v25, v26

    .end local v26    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    .restart local v25    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    goto/16 :goto_17c
.end method

.method final activityPaused(Landroid/os/IBinder;Z)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .prologue
    .line 1566
    const/4 v2, 0x0

    .line 1568
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1569
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1570
    .local v1, "index":I
    if-ltz v1, :cond_47

    .line 1571
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v2, v0

    .line 1572
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1575
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    if-eqz v3, :cond_34

    .line 1576
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->requested:Z

    if-eqz v3, :cond_49

    .line 1578
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    iget v6, v6, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->delayMillis:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->forceFreezingScreen(ZI)V

    .line 1579
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    .line 1588
    :cond_34
    :goto_34
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_80

    .line 1589
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1590
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1591
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1612
    :cond_47
    :goto_47
    monitor-exit v4

    .line 1613
    return-void

    .line 1581
    :cond_49
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    iget v6, v6, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->delayMillis:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->forceFreezingScreen(ZI)V

    .line 1582
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->requested:Z

    goto :goto_34

    .line 1612
    .end local v1    # "index":I
    :catchall_5b
    move-exception v3

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_4 .. :try_end_5d} :catchall_5b

    throw v3

    .line 1593
    .restart local v1    # "index":I
    :cond_5e
    const/16 v3, 0x753c

    const/4 v5, 0x3

    :try_start_61
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_47

    .line 1598
    :cond_80
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, v2, :cond_8c

    .line 1601
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1602
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->completePauseLocked()V

    goto :goto_47

    .line 1604
    :cond_8c
    const/16 v5, 0x753c

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v7, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x3

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_b9

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_b3
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_47

    :cond_b9
    const-string v3, "(none)"
    :try_end_bb
    .catchall {:try_start_61 .. :try_end_bb} :catchall_5b

    goto :goto_b3
.end method

.method final activityResumed(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1549
    const/4 v2, 0x0

    .line 1551
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1552
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1553
    .local v1, "index":I
    if-ltz v1, :cond_1a

    .line 1554
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v2, v0

    .line 1556
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1557
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1559
    :cond_1a
    monitor-exit v4

    .line 1560
    return-void

    .line 1559
    .end local v1    # "index":I
    :catchall_1c
    move-exception v3

    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1293
    return-void
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .registers 19
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1617
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v10, v11, :cond_26

    .line 1618
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x6c

    invoke-virtual {v10, v11, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1693
    :cond_25
    :goto_25
    return-void

    .line 1623
    :cond_26
    if-eqz p2, :cond_39

    .line 1626
    move-object/from16 v0, p2

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1627
    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1628
    const/4 v10, 0x0

    iput v10, p1, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1629
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1631
    :cond_39
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v10, :cond_25

    .line 1633
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x6c

    invoke-virtual {v10, v11, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1634
    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1635
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1638
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v8

    .line 1639
    .local v8, "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v5

    .line 1640
    .local v5, "mw":Lcom/android/server/am/MultiWindowManagerService;
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    if-nez v10, :cond_5f

    invoke-virtual {v5, v8, p1}, Lcom/android/server/am/MultiWindowManagerService;->checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_6f

    :cond_5f
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 1641
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1642
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    .line 1646
    :cond_6f
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_77

    .line 1647
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_25

    .line 1649
    :cond_77
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v10, :cond_87

    .line 1650
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "stop-config"

    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    .line 1651
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_25

    .line 1656
    :cond_87
    const/4 v2, 0x0

    .line 1658
    .local v2, "fgApp":Lcom/android/server/am/ProcessRecord;
    const/4 v4, 0x0

    .line 1659
    .local v4, "inForeground":Z
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_ed

    .line 1660
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v9

    .line 1661
    .local v9, "resumedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_95
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 1662
    .local v7, "resumed":Lcom/android/server/am/ActivityRecord;
    iget-object v10, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v11, :cond_95

    .line 1663
    const/4 v4, 0x1

    .line 1668
    .end local v7    # "resumed":Lcom/android/server/am/ActivityRecord;
    :cond_a8
    if-nez v4, :cond_c3

    .line 1669
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 1670
    .local v6, "pausing":Lcom/android/server/am/ActivityRecord;
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v11, :cond_b0

    .line 1671
    const/4 v4, 0x1

    .line 1683
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "pausing":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "resumedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_c3
    :goto_c3
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_25

    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_ff

    if-nez v4, :cond_25

    :goto_cd
    iget-wide v10, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_25

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v10, v11, :cond_25

    .line 1687
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 1688
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v11, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v11, v10, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    goto/16 :goto_25

    .line 1677
    :cond_ed
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_f6

    .line 1678
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_c3

    .line 1679
    :cond_f6
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_c3

    .line 1680
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_c3

    .line 1683
    :cond_ff
    if-eqz v2, :cond_25

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v10, v2, :cond_25

    goto :goto_cd
.end method

.method public arrangedWindowStateLocked(Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7414
    .local p1, "resumeRecord":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v15, v0, Landroid/content/res/Configuration;->orientation:I

    .line 7415
    .local v15, "orientation":I
    const/4 v5, 0x0

    .line 7416
    .local v5, "bRefreshSplit":Z
    const/4 v6, 0x0

    .line 7417
    .local v6, "centerBarPoint":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v11

    .line 7418
    .local v11, "mw":Lcom/android/server/am/MultiWindowManagerService;
    const/4 v7, 0x0

    .line 7420
    .local v7, "currentArrange":I
    if-eqz p1, :cond_d8

    .line 7421
    const/4 v12, 0x0

    .line 7422
    .local v12, "newZoneInfo":I
    const/16 v17, 0x0

    .line 7424
    .local v17, "resumeRecordZoneInfo":I
    const/16 v19, 0x0

    .line 7425
    .local v19, "targetRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v13, 0x0

    .line 7426
    .local v13, "newZoneRecord":Lcom/android/server/am/ActivityRecord;
    const/16 v16, 0x0

    .line 7427
    .local v16, "r":Lcom/android/server/am/ActivityRecord;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 7429
    .local v8, "frontRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "newZoneRecord":Lcom/android/server/am/ActivityRecord;
    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 7430
    .restart local v13    # "newZoneRecord":Lcom/android/server/am/ActivityRecord;
    iget v0, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    and-int/lit8 v12, v21, 0xf

    .line 7432
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v9, v21, -0x2

    .local v9, "i":I
    :goto_42
    if-ltz v9, :cond_a6

    .line 7433
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v16, Lcom/android/server/am/ActivityRecord;

    .line 7435
    .restart local v16    # "r":Lcom/android/server/am/ActivityRecord;
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v12, v0, :cond_58

    const/16 v21, 0xc

    move/from16 v0, v21

    if-ne v12, v0, :cond_1c0

    .line 7437
    :cond_58
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v21

    const/high16 v22, 0x1000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_21a

    .line 7438
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    const/high16 v22, 0x400000

    and-int v21, v21, v22

    if-eqz v21, :cond_21a

    .line 7439
    const/4 v5, 0x1

    .line 7440
    move-object/from16 v19, v16

    .line 7441
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    const v22, 0xffffff

    and-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7442
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    const/high16 v22, 0x2000000

    or-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7443
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7444
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v11, v0, v8, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V

    .line 7472
    :cond_a6
    :goto_a6
    if-eqz v19, :cond_21e

    .line 7473
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 7474
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 7493
    .end local v8    # "frontRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v9    # "i":I
    .end local v12    # "newZoneInfo":I
    .end local v13    # "newZoneRecord":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "resumeRecordZoneInfo":I
    .end local v19    # "targetRecord":Lcom/android/server/am/ActivityRecord;
    :cond_d8
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateArrangeState(Ljava/util/List;)I

    move-result v7

    .line 7494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mCurrentArrange:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v7, :cond_ed

    .line 7495
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/am/ActivityStack;->mCurrentArrange:I

    .line 7496
    const/4 v5, 0x1

    .line 7499
    :cond_ed
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v7, v0, :cond_fe

    if-eqz v5, :cond_fe

    .line 7500
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityStack;->resizeArrangedWindow(ILandroid/graphics/Point;)V

    .line 7503
    :cond_fe
    if-eqz v5, :cond_170

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    move/from16 v21, v0

    if-eqz v21, :cond_170

    .line 7505
    new-instance v18, Landroid/content/Intent;

    const-string v21, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7506
    .local v18, "splitZoneInfoIntent":Landroid/content/Intent;
    const-string v21, "com.sec.android.app.FlashBarService"

    const-string v22, "com.sec.android.app.FlashBarService.CenterBarDisplayReceiver"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7507
    const-string v21, "com.sec.android.extra.ARRAGE_MODE"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    move-object/from16 v21, v0

    new-instance v22, Landroid/content/ComponentName;

    const-string v23, "com.sec.android.app.FlashBarService"

    const-string v24, "com.sec.android.app.FlashBarService.FlashBarService"

    invoke-direct/range {v22 .. v24}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/am/ActiveServices$ServiceMap;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v21

    if-eqz v21, :cond_15f

    .line 7510
    const-string v21, "com.sec.android.extra.MULTIWINDOW_UI_RUNNING"

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7512
    :cond_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7515
    .end local v18    # "splitZoneInfoIntent":Landroid/content/Intent;
    :cond_170
    if-eqz p1, :cond_297

    .line 7516
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_176
    :goto_176
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_297

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ActivityRecord;

    .line 7517
    .restart local v16    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/WindowManagerService;->getAppWindowMode(Landroid/view/IApplicationToken;)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_176

    .line 7519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V

    goto :goto_176

    .line 7448
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v8    # "frontRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v9    # "i":I
    .restart local v12    # "newZoneInfo":I
    .restart local v13    # "newZoneRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v17    # "resumeRecordZoneInfo":I
    .restart local v19    # "targetRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1c0
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v12, v0, :cond_1cc

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v12, v0, :cond_1ed

    .line 7450
    :cond_1cc
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0xf

    .line 7451
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_21a

    .line 7452
    const/4 v5, 0x1

    .line 7453
    move-object/from16 v19, v16

    .line 7454
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7455
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v11, v0, v8, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V

    goto/16 :goto_a6

    .line 7458
    :cond_1ed
    const/16 v21, 0x4

    move/from16 v0, v21

    if-eq v12, v0, :cond_1f9

    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v12, v0, :cond_21a

    .line 7460
    :cond_1f9
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0xf

    .line 7461
    const/16 v21, 0xc

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_21a

    .line 7462
    const/4 v5, 0x1

    .line 7463
    move-object/from16 v19, v16

    .line 7464
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7465
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v11, v0, v8, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V

    goto/16 :goto_a6

    .line 7432
    :cond_21a
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_42

    .line 7476
    :cond_21e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v9, v21, -0x1

    :goto_224
    if-ltz v9, :cond_d8

    .line 7477
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "newZoneRecord":Lcom/android/server/am/ActivityRecord;
    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 7478
    .restart local v13    # "newZoneRecord":Lcom/android/server/am/ActivityRecord;
    iget v0, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v21

    const/high16 v22, 0x1000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_294

    move-object/from16 v0, p1

    invoke-virtual {v11, v13, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZoneAfterDestroy(Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_294

    .line 7480
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    iget v0, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 7481
    iget v0, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 7482
    const/4 v5, 0x1

    .line 7483
    iget v0, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    and-int/lit8 v20, v21, 0xf

    .line 7484
    .local v20, "zoneInfo":I
    if-eqz v20, :cond_294

    .line 7485
    new-instance v14, Landroid/content/Intent;

    const-string v21, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7486
    .local v14, "notifyFocusIntent":Landroid/content/Intent;
    const-string v21, "com.sec.android.extra.ARRAGE_TYPE"

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7476
    .end local v14    # "notifyFocusIntent":Landroid/content/Intent;
    .end local v20    # "zoneInfo":I
    :cond_294
    add-int/lit8 v9, v9, -0x1

    goto :goto_224

    .line 7524
    .end local v8    # "frontRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v9    # "i":I
    .end local v12    # "newZoneInfo":I
    .end local v13    # "newZoneRecord":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "resumeRecordZoneInfo":I
    .end local v19    # "targetRecord":Lcom/android/server/am/ActivityRecord;
    :cond_297
    return-void
.end method

.method awakeFromSleepingLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1277
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1278
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 1279
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1280
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1283
    :cond_17
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1f
    if-ltz v0, :cond_2f

    .line 1284
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1285
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1283
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 1287
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2f
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1288
    return-void
.end method

.method final canResumedActivitiesLocked()Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 732
    .local v1, "N":I
    const/4 v2, 0x0

    .line 733
    .local v2, "currentTask":I
    const/4 v8, 0x0

    .line 734
    .local v8, "normalActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    .line 735
    .local v4, "homeActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v13, 0x0

    .line 736
    .local v13, "toolkitActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v9, 0x0

    .line 737
    .local v9, "obscuredMask":I
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v7

    .line 739
    .local v7, "mw":Lcom/android/server/am/MultiWindowManagerService;
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_18
    if-ltz v5, :cond_d3

    .line 740
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 741
    .local v11, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v15, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v15, :cond_2b

    .line 739
    :cond_28
    :goto_28
    add-int/lit8 v5, v5, -0x1

    goto :goto_18

    .line 745
    :cond_2b
    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v15, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, v15, :cond_28

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v15

    if-eqz v15, :cond_28

    .line 746
    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 748
    iget v15, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v15}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    .line 749
    .local v6, "mode":I
    iget v15, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v15}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v10

    .line 750
    .local v10, "option":I
    const/high16 v15, 0x2000000

    if-ne v6, v15, :cond_94

    .line 751
    const/high16 v15, 0x300000

    and-int/2addr v15, v10

    if-nez v15, :cond_28

    .line 753
    if-eqz v8, :cond_86

    const/high16 v15, 0x800000

    and-int/2addr v15, v10

    if-nez v15, :cond_86

    .line 755
    iget-boolean v15, v11, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v15, :cond_28

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_28

    goto :goto_28

    .line 759
    :cond_86
    and-int/lit8 v3, v10, 0xf

    .line 760
    .local v3, "currentZone":I
    if-eqz v3, :cond_8e

    and-int v15, v9, v3

    if-eq v15, v3, :cond_28

    .line 762
    :cond_8e
    or-int/2addr v9, v3

    .line 763
    const/4 v15, 0x0

    invoke-virtual {v12, v15, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_28

    .line 766
    .end local v3    # "currentZone":I
    :cond_94
    const/high16 v15, 0x1000000

    if-ne v6, v15, :cond_28

    .line 767
    if-nez v8, :cond_a4

    .line 768
    move-object v8, v11

    .line 770
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStack;->isHomeTask(Lcom/android/server/am/ActivityRecord;)Z

    move-result v15

    if-eqz v15, :cond_a4

    .line 771
    move-object v4, v11

    .line 775
    :cond_a4
    and-int/lit16 v15, v10, 0x1000

    if-eqz v15, :cond_af

    .line 776
    const/4 v15, 0x0

    invoke-virtual {v12, v15, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 777
    if-ne v11, v8, :cond_af

    .line 778
    const/4 v8, 0x0

    .line 782
    :cond_af
    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v15, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v14

    .line 783
    .local v14, "winInfo":Landroid/os/Bundle;
    if-eqz v14, :cond_28

    .line 784
    const-string v15, "android.intent.extra.STAY_RESUME"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_28

    .line 785
    const/4 v15, 0x0

    invoke-virtual {v12, v15, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_28

    .line 792
    .end local v6    # "mode":I
    .end local v10    # "option":I
    .end local v11    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "winInfo":Landroid/os/Bundle;
    :cond_d3
    if-eqz v8, :cond_ed

    const/16 v15, 0xf

    if-eq v9, v15, :cond_ed

    .line 793
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ed

    .line 794
    if-eqz v9, :cond_e9

    iget v15, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v16, 0x400000

    and-int v15, v15, v16

    if-eqz v15, :cond_ed

    .line 796
    :cond_e9
    const/4 v15, 0x0

    invoke-virtual {v12, v15, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 800
    :cond_ed
    return-object v12
.end method

.method checkReadyForSleepLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1296
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1369
    :cond_a
    :goto_a
    return-void

    .line 1301
    :cond_b
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_82

    .line 1303
    :cond_15
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_45

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v3

    .line 1306
    .local v3, "resumedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1310
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_a

    .line 1313
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_31
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1334
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "resumedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_39
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_52

    .line 1338
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto :goto_a

    .line 1319
    :cond_45
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_4d

    .line 1323
    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    goto :goto_a

    .line 1326
    :cond_4d
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_39

    goto :goto_a

    .line 1342
    :cond_52
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1346
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_5e
    if-ltz v0, :cond_7a

    .line 1347
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1348
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_74

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_77

    .line 1349
    :cond_74
    invoke-virtual {v2, v6}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1346
    :cond_77
    add-int/lit8 v0, v0, -0x1

    goto :goto_5e

    .line 1353
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7a
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_a

    .line 1361
    .end local v0    # "i":I
    :cond_82
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1363
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 1364
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1366
    :cond_96
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_a

    .line 1367
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_a
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 6157
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_8

    .line 6158
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6160
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_12

    .line 6161
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6164
    :cond_12
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 6165
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 6167
    if-eqz p3, :cond_1e

    .line 6169
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6171
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 6177
    :cond_1e
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6178
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6181
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_52

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_52

    .line 6182
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 6183
    .local v0, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 6184
    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_36

    .line 6185
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v5}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_36

    .line 6188
    .end local v0    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_50
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 6191
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_52
    if-eqz p2, :cond_57

    .line 6192
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6195
    :cond_57
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_68

    .line 6199
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6203
    :cond_68
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6204
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 6243
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_21

    .line 6244
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6245
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 6247
    .local v0, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_b

    .line 6249
    .end local v0    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_1f
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 6251
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_21
    return-void
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .registers 11
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdj"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 6262
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v4

    .line 6264
    .local v4, "resumed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v2, 0x0

    .line 6265
    .local v2, "lastIsOpaque":Z
    const/4 v0, 0x0

    .line 6266
    .local v0, "activityRemoved":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_71

    .line 6267
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 6268
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1f

    .line 6266
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 6271
    :cond_1f
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v5, :cond_24

    .line 6272
    const/4 v2, 0x1

    .line 6274
    :cond_24
    if-eqz p1, :cond_2a

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, p1, :cond_1c

    .line 6277
    :cond_2a
    if-eqz v2, :cond_1c

    .line 6283
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1c

    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v5, :cond_67

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    :goto_3a
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v5, :cond_6c

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    :goto_46
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v5, :cond_1c

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_1c

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_1c

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_1c

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_1c

    .line 6292
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 6293
    const/4 v0, 0x1

    goto :goto_1c

    .line 6283
    :cond_67
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v5, :cond_1c

    goto :goto_3a

    :cond_6c
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v5, :cond_1c

    goto :goto_46

    .line 6297
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_71
    if-eqz v0, :cond_77

    .line 6298
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 6300
    :cond_77
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z
    .registers 15
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "oomAdj"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 6313
    const/16 v6, 0x7542

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6317
    const/4 v4, 0x0

    .line 6319
    .local v4, "removedFromHistory":Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 6321
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_d6

    const/4 v1, 0x1

    .line 6323
    .local v1, "hadApp":Z
    :goto_3a
    if-eqz v1, :cond_ec

    .line 6324
    if-eqz p2, :cond_7e

    .line 6325
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 6326
    .local v2, "idx":I
    if-ltz v2, :cond_4f

    .line 6327
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6329
    :cond_4f
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_6f

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_6f

    .line 6330
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 6331
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6334
    :cond_6f
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_7e

    .line 6336
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 6340
    .end local v2    # "idx":I
    :cond_7e
    const/4 v5, 0x0

    .line 6344
    .local v5, "skipDestroy":Z
    :try_start_7f
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8c} :catch_d9

    .line 6358
    :cond_8c
    :goto_8c
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 6367
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_e4

    if-nez v5, :cond_e4

    .line 6370
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6371
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x69

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 6372
    .local v3, "msg":Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6373
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6395
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "skipDestroy":Z
    :goto_aa
    const/4 v6, 0x0

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 6397
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5

    if-eqz v1, :cond_d5

    .line 6398
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " being finished, but not in LRU list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6401
    :cond_d5
    return v4

    .line 6321
    .end local v1    # "hadApp":Z
    :cond_d6
    const/4 v1, 0x0

    goto/16 :goto_3a

    .line 6346
    .restart local v1    # "hadApp":Z
    .restart local v5    # "skipDestroy":Z
    :catch_d9
    move-exception v0

    .line 6351
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_8c

    .line 6352
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6353
    const/4 v4, 0x1

    .line 6354
    const/4 v5, 0x1

    goto :goto_8c

    .line 6377
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e4
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6379
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_aa

    .line 6383
    .end local v5    # "skipDestroy":Z
    :cond_ec
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_f5

    .line 6384
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6385
    const/4 v4, 0x1

    goto :goto_aa

    .line 6389
    :cond_f5
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6391
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_aa
.end method

.method public dismissKeyguardOnNextActivityLocked()V
    .registers 2

    .prologue
    .line 7718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 7719
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .registers 6
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    const/4 v2, 0x0

    .line 2275
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2276
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_12

    .line 2279
    const/high16 v1, 0x10000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_f

    .line 2280
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2283
    :cond_f
    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 2285
    :cond_12
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 33
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "onlyThisProcess"    # Ljava/lang/String;
    .param p4, "configChanges"    # I

    .prologue
    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2000
    .local v15, "count":I
    add-int/lit8 v19, v15, -0x1

    .line 2001
    .local v19, "i":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_1b

    .line 2002
    add-int/lit8 v19, v19, -0x1

    goto :goto_a

    .line 2005
    :cond_1b
    const/4 v8, 0x0

    .line 2006
    .local v8, "homeActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    .line 2007
    .local v3, "behindFullscreen":Z
    const/4 v4, 0x0

    .line 2010
    .local v4, "behindToolkit":Z
    const/4 v5, 0x0

    .line 2011
    .local v5, "obscuredMask":I
    const/4 v6, -0x1

    .line 2013
    .local v6, "currentTaskId":I
    :goto_20
    if-ltz v19, :cond_234

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 2016
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_33

    move-object v8, v7

    .line 2021
    :cond_33
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_3a

    .line 2013
    :cond_37
    :goto_37
    add-int/lit8 v19, v19, -0x1

    goto :goto_20

    .line 2025
    :cond_3a
    if-eqz p3, :cond_46

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    :cond_46
    const/16 v16, 0x1

    .line 2031
    .local v16, "doThisProcess":Z
    :goto_48
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_d7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->shouldHideActivity(ZZIILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 2032
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_a3

    .line 2033
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_62

    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_a3

    .line 2036
    :cond_62
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2038
    :try_start_65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2039
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v26, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v26

    if-eq v2, v0, :cond_88

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v26, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v26

    if-ne v2, v0, :cond_a3

    :cond_88
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_a3

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_a3

    .line 2044
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_a3} :catch_b1

    .line 2058
    :cond_a3
    :goto_a3
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v6, v2, :cond_37

    .line 2059
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_37

    .line 2025
    .end local v16    # "doThisProcess":Z
    :cond_ae
    const/16 v16, 0x0

    goto :goto_48

    .line 2046
    .restart local v16    # "doThisProcess":Z
    :catch_b1
    move-exception v17

    .line 2049
    .local v17, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception thrown making hidden: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3

    .line 2064
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_d7
    move-object/from16 v0, p2

    if-eq v7, v0, :cond_e3

    if-eqz v16, :cond_e3

    .line 2065
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 2068
    :cond_e3
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_ed

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_29c

    .line 2069
    :cond_ed
    if-eqz p3, :cond_f9

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_139

    .line 2076
    :cond_f9
    move-object/from16 v0, p2

    if-eq v7, v0, :cond_104

    .line 2077
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move/from16 v0, p4

    invoke-virtual {v7, v2, v0}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 2079
    :cond_104
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_11b

    .line 2082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2084
    :cond_11b
    move-object/from16 v0, p2

    if-eq v7, v0, :cond_139

    .line 2086
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_290

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_290

    .line 2087
    const/4 v2, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v7, v2, v1}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2134
    :cond_139
    :goto_139
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int p4, p4, v2

    .line 2137
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v26, 0x2000000

    move/from16 v0, v26

    if-ne v2, v0, :cond_345

    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    const/high16 v26, 0x40000

    and-int v2, v2, v26

    if-eqz v2, :cond_345

    const/16 v20, 0x1

    .line 2139
    .local v20, "isForceTitleBar":Z
    :goto_157
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v2, :cond_15d

    if-eqz v20, :cond_17b

    .line 2140
    :cond_15d
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v26, 0x1000000

    move/from16 v0, v26

    if-ne v2, v0, :cond_349

    .line 2141
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_171

    .line 2142
    or-int/lit8 v5, v5, 0xf

    .line 2147
    :cond_171
    :goto_171
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v6, v2, :cond_17b

    .line 2148
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 2157
    :cond_17b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseWindowLayoutParam(Landroid/view/IApplicationToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    .line 2158
    .local v21, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v18, 0x0

    .line 2159
    .local v18, "hasFullOpaqueFlag":Z
    const/16 v23, 0x0

    .line 2160
    .local v23, "requestedFullOpaque":Z
    if-eqz v21, :cond_191

    .line 2163
    :cond_191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_1af

    if-eqz v21, :cond_1af

    move-object/from16 v0, v21

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v26, 0x10000000

    and-int v2, v2, v26

    const/high16 v26, 0x10000000

    move/from16 v0, v26

    if-ne v2, v0, :cond_1af

    .line 2166
    const/16 v18, 0x1

    .line 2170
    :cond_1af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 2171
    iget-boolean v0, v7, Lcom/android/server/am/ActivityRecord;->requestedFullOpaque:Z

    move/from16 v23, v0

    .line 2177
    :cond_1bf
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_1c6

    .line 2178
    const/4 v4, 0x1

    .line 2183
    :cond_1c6
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v2, :cond_1ce

    if-nez v18, :cond_1ce

    if-eqz v23, :cond_1da

    :cond_1ce
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v26, 0x1000000

    move/from16 v0, v26

    if-eq v2, v0, :cond_1de

    :cond_1da
    const/16 v2, 0xf

    if-ne v5, v2, :cond_37

    .line 2187
    :cond_1de
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_37

    .line 2196
    move/from16 v12, v19

    .line 2197
    .local v12, "belowIndex":I
    const/4 v10, 0x0

    .line 2198
    .local v10, "bPinupWindow":Z
    const/4 v9, 0x0

    .local v9, "bExternalWindow":Z
    move v13, v12

    .line 2199
    .end local v12    # "belowIndex":I
    .local v13, "belowIndex":I
    :goto_1e9
    add-int/lit8 v12, v13, -0x1

    .end local v13    # "belowIndex":I
    .restart local v12    # "belowIndex":I
    if-lez v13, :cond_22d

    .line 2200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 2201
    .local v11, "belowActivity":Lcom/android/server/am/ActivityRecord;
    iget v14, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 2202
    .local v14, "belowMode":I
    const/high16 v2, 0x800000

    and-int/2addr v2, v14

    if-nez v2, :cond_22c

    if-eqz v8, :cond_350

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v26

    move/from16 v0, v26

    if-le v2, v0, :cond_350

    iget-boolean v2, v11, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v2, :cond_350

    .line 2206
    :cond_22c
    const/4 v10, 0x1

    .line 2217
    .end local v11    # "belowActivity":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "belowMode":I
    :cond_22d
    :goto_22d
    const/4 v3, 0x1

    .line 2219
    if-nez v10, :cond_37

    if-nez v9, :cond_37

    .line 2220
    add-int/lit8 v19, v19, -0x1

    .line 2229
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "bExternalWindow":Z
    .end local v10    # "bPinupWindow":Z
    .end local v12    # "belowIndex":I
    .end local v16    # "doThisProcess":Z
    .end local v18    # "hasFullOpaqueFlag":Z
    .end local v20    # "isForceTitleBar":Z
    .end local v21    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v23    # "requestedFullOpaque":Z
    :cond_234
    :goto_234
    if-ltz v19, :cond_38a

    .line 2230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 2235
    .restart local v7    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_28d

    .line 2236
    if-eqz v3, :cond_383

    .line 2237
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_28d

    .line 2240
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2242
    :try_start_24f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2243
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v26, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v26

    if-eq v2, v0, :cond_272

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v26, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v26

    if-ne v2, v0, :cond_28d

    :cond_272
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_28d

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_28d

    .line 2248
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_28d
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_28d} :catch_35c

    .line 2266
    :cond_28d
    :goto_28d
    add-int/lit8 v19, v19, -0x1

    goto :goto_234

    .line 2089
    .restart local v16    # "doThisProcess":Z
    :cond_290
    const/4 v2, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v7, v2, v1}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_139

    .line 2095
    :cond_29c
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_2a6

    .line 2100
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_139

    .line 2102
    :cond_2a6
    if-nez p3, :cond_139

    .line 2107
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v22

    .line 2108
    .local v22, "mw":Lcom/android/server/am/MultiWindowManagerService;
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v25

    .line 2109
    .local v25, "winInfo":Landroid/os/Bundle;
    if-eqz v25, :cond_340

    const-string v2, "android.intent.extra.STAY_RESUME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_340

    const/16 v24, 0x1

    .line 2112
    .local v24, "stayResumedActivity":Z
    :goto_2d0
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2113
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v26, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v26

    if-eq v2, v0, :cond_343

    const/4 v2, 0x1

    :goto_2dc
    or-int v2, v2, v24

    if-eqz v2, :cond_139

    move-object/from16 v0, p2

    if-eq v7, v0, :cond_139

    .line 2119
    :try_start_2e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2120
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2121
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v26, 0x1

    move/from16 v0, v26

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2122
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 2123
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_317
    .catch Ljava/lang/Exception; {:try_start_2e4 .. :try_end_317} :catch_319

    goto/16 :goto_139

    .line 2124
    :catch_319
    move-exception v17

    .line 2127
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception thrown making visibile: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_139

    .line 2109
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v24    # "stayResumedActivity":Z
    :cond_340
    const/16 v24, 0x0

    goto :goto_2d0

    .line 2113
    .restart local v24    # "stayResumedActivity":Z
    :cond_343
    const/4 v2, 0x0

    goto :goto_2dc

    .line 2137
    .end local v22    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v24    # "stayResumedActivity":Z
    .end local v25    # "winInfo":Landroid/os/Bundle;
    :cond_345
    const/16 v20, 0x0

    goto/16 :goto_157

    .line 2145
    .restart local v20    # "isForceTitleBar":Z
    :cond_349
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v5, v2

    goto/16 :goto_171

    .line 2210
    .restart local v9    # "bExternalWindow":Z
    .restart local v10    # "bPinupWindow":Z
    .restart local v11    # "belowActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v12    # "belowIndex":I
    .restart local v14    # "belowMode":I
    .restart local v18    # "hasFullOpaqueFlag":Z
    .restart local v21    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v23    # "requestedFullOpaque":Z
    :cond_350
    iget v2, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_359

    .line 2211
    const/4 v9, 0x1

    .line 2212
    goto/16 :goto_22d

    :cond_359
    move v13, v12

    .line 2214
    .end local v12    # "belowIndex":I
    .restart local v13    # "belowIndex":I
    goto/16 :goto_1e9

    .line 2250
    .end local v9    # "bExternalWindow":Z
    .end local v10    # "bPinupWindow":Z
    .end local v11    # "belowActivity":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "belowIndex":I
    .end local v14    # "belowMode":I
    .end local v16    # "doThisProcess":Z
    .end local v18    # "hasFullOpaqueFlag":Z
    .end local v20    # "isForceTitleBar":Z
    .end local v21    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v23    # "requestedFullOpaque":Z
    :catch_35c
    move-exception v17

    .line 2253
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception thrown making hidden: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28d

    .line 2260
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_383
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_28d

    .line 2263
    const/4 v3, 0x1

    goto/16 :goto_28d

    .line 2268
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_38a
    return-void
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "globalChanges"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 7201
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v6, :cond_7

    .line 7328
    :cond_6
    :goto_6
    return v4

    .line 7212
    :cond_7
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 7213
    .local v1, "newConfig":Landroid/content/res/Configuration;
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v6, v1, :cond_13

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v6, :cond_6

    .line 7220
    :cond_13
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1b

    .line 7223
    invoke-virtual {p1, v5}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_6

    .line 7229
    :cond_1b
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 7230
    .local v2, "oldConfig":Landroid/content/res/Configuration;
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 7236
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 7238
    .local v0, "changes":I
    const/4 v3, 0x0

    .line 7239
    .local v3, "packname":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_36

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_36

    .line 7241
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7243
    :cond_36
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v6, :cond_5b

    .line 7244
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v6, v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPortraitLayoutOnlyPackage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-nez v6, :cond_4c

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPortraitLayoutOnlyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5b

    :cond_4c
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    const/high16 v7, 0x2000000

    if-ne v6, v7, :cond_5b

    const/16 v6, 0x80

    if-ne v0, v6, :cond_5b

    .line 7248
    const/4 v0, 0x0

    .line 7252
    :cond_5b
    if-nez v0, :cond_61

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v6, :cond_6

    .line 7260
    :cond_61
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_6b

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v6, :cond_71

    .line 7263
    :cond_6b
    invoke-virtual {p1, v5}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 7264
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    goto :goto_6

    .line 7275
    :cond_71
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v6

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v0

    if-nez v6, :cond_80

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v6, :cond_be

    .line 7277
    :cond_80
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v6, v0

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 7278
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v6, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 7279
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 7280
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_96

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v6, :cond_9e

    .line 7283
    :cond_96
    const-string v6, "config"

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    :goto_9b
    move v4, v5

    .line 7310
    goto/16 :goto_6

    .line 7284
    :cond_9e
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_a8

    .line 7290
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    goto/16 :goto_6

    .line 7292
    :cond_a8
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_b6

    .line 7299
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v6, v4}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 7300
    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_9b

    .line 7304
    :cond_b6
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 7305
    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_9b

    .line 7318
    :cond_be
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_d1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_d1

    .line 7321
    :try_start_c8
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v6, v7}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_d1} :catch_d6

    .line 7326
    :cond_d1
    :goto_d1
    invoke-virtual {p1, v5}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_6

    .line 7322
    :catch_d6
    move-exception v6

    goto :goto_d1
.end method

.method final finishActivityAffinityLocked(Landroid/os/IBinder;)Z
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 5914
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 5917
    .local v2, "index":I
    if-gez v2, :cond_9

    .line 5940
    :goto_8
    return v3

    .line 5920
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 5922
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    :goto_11
    if-ltz v2, :cond_21

    .line 5923
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5924
    .local v1, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, v4, :cond_23

    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_21
    move v3, v6

    .line 5940
    goto :goto_8

    .line 5928
    .restart local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_23
    iget v0, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x2000000

    and-int/2addr v0, v4

    if-nez v0, :cond_40

    .line 5929
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_32

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 5932
    :cond_32
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5936
    :cond_40
    const/4 v4, 0x0

    const-string v5, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5938
    add-int/lit8 v2, v2, -0x1

    .line 5939
    goto :goto_11
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 15
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "index"    # I
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "oomAdj"    # Z

    .prologue
    .line 5976
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "index"    # I
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "immediate"    # Z
    .param p7, "oomAdj"    # Z

    .prologue
    .line 5985
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1e

    .line 5986
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate finish request for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 5987
    const/4 v2, 0x0

    .line 6058
    :goto_1d
    return v2

    .line 5990
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 5991
    const/16 v2, 0x7531

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5994
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_83

    .line 5995
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5996
    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v3, :cond_83

    .line 5997
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_71

    .line 5999
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 6001
    :cond_71
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_83

    .line 6005
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6010
    .end local v1    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_83
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 6011
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_9a

    .line 6012
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_9a

    .line 6013
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6017
    :cond_9a
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 6019
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_ae

    .line 6023
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6026
    :cond_ae
    if-eqz p6, :cond_bd

    .line 6027
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, p7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_ba

    const/4 v2, 0x1

    goto/16 :goto_1d

    :cond_ba
    const/4 v2, 0x0

    goto/16 :goto_1d

    .line 6029
    :cond_bd
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_104

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_108

    .line 6030
    :cond_c7
    if-lez p2, :cond_d9

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v3, :cond_118

    :cond_d9
    const/4 v0, 0x1

    .line 6034
    .local v0, "endTask":Z
    :goto_da
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_11a

    const/16 v2, 0x2009

    :goto_e2
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 6039
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 6042
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_11d

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_101

    .line 6045
    :goto_fc
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 6058
    .end local v0    # "endTask":Z
    :cond_101
    const/4 v2, 0x0

    goto/16 :goto_1d

    .line 6029
    :cond_104
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_c7

    .line 6048
    :cond_108
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_101

    .line 6052
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2, p7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_122

    const/4 v2, 0x1

    goto/16 :goto_1d

    .line 6030
    :cond_118
    const/4 v0, 0x0

    goto :goto_da

    .line 6034
    .restart local v0    # "endTask":Z
    :cond_11a
    const/16 v2, 0x2007

    goto :goto_e2

    .line 6042
    :cond_11d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_101

    goto :goto_fc

    .line 6052
    .end local v0    # "endTask":Z
    :cond_122
    const/4 v2, 0x0

    goto/16 :goto_1d
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 5945
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 5946
    .local v0, "resultTo":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2a

    .line 5950
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v1, :cond_1e

    .line 5951
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 5955
    :cond_1e
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5957
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 5964
    :cond_2a
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 5965
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 5966
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 5967
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 5968
    return-void
.end method

.method final finishSubActivityLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 5894
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 5895
    .local v7, "self":Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_8

    .line 5911
    :goto_7
    return-void

    .line 5900
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_3f

    .line 5901
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5902
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v7, :cond_3c

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_3c

    .line 5903
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_28

    if-eqz p2, :cond_34

    :cond_28
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 5905
    :cond_34
    const/4 v4, 0x0

    const-string v5, "request-sub"

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5900
    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 5910
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3f
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    goto :goto_7
.end method

.method public getFrontActivityPosition()Landroid/graphics/Rect;
    .registers 12

    .prologue
    .line 5304
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 5305
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 5306
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_38

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    const/high16 v8, 0x2000000

    if-ne v6, v8, :cond_38

    .line 5307
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    .line 5308
    .local v3, "mw":Lcom/android/server/am/MultiWindowManagerService;
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v6, v8}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    .line 5310
    .local v5, "winInfo":Landroid/os/Bundle;
    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 5311
    .local v2, "lastSize":Landroid/graphics/Rect;
    if-nez v2, :cond_36

    .line 5312
    const-string v6, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "lastSize":Landroid/graphics/Rect;
    check-cast v2, Landroid/graphics/Rect;

    .line 5314
    .restart local v2    # "lastSize":Landroid/graphics/Rect;
    :cond_36
    monitor-exit v7

    .line 5321
    .end local v2    # "lastSize":Landroid/graphics/Rect;
    .end local v3    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v5    # "winInfo":Landroid/os/Bundle;
    :goto_37
    return-object v2

    .line 5317
    :cond_38
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 5318
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 5319
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 5321
    new-instance v2, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v6, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    monitor-exit v7

    goto :goto_37

    .line 5322
    .end local v0    # "d":Landroid/view/Display;
    .end local v1    # "fullscreen":Landroid/graphics/Point;
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_56
    move-exception v6

    monitor-exit v7
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_56

    throw v6
.end method

.method public getFrontResumedActivities(ZZ)Ljava/util/ArrayList;
    .registers 4
    .param p1, "includePinup"    # Z
    .param p2, "onlyResumed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5327
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;
    .registers 12
    .param p1, "taskId"    # I
    .param p2, "inclThumbs"    # Z

    .prologue
    .line 7091
    new-instance v7, Lcom/android/server/am/TaskAccessInfo;

    invoke-direct {v7}, Lcom/android/server/am/TaskAccessInfo;-><init>()V

    .line 7093
    .local v7, "thumbs":Lcom/android/server/am/TaskAccessInfo;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7094
    .local v0, "NA":I
    const/4 v3, 0x0

    .line 7095
    .local v3, "j":I
    const/4 v2, 0x0

    .line 7096
    .local v2, "holder":Lcom/android/server/am/ThumbnailHolder;
    :goto_d
    if-ge v3, v0, :cond_2f

    .line 7097
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 7098
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_32

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v8, p1, :cond_32

    .line 7099
    iput-object v1, v7, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    .line 7100
    iput v3, v7, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    .line 7101
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 7102
    if-eqz v2, :cond_2d

    .line 7103
    iget-object v8, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v8, v7, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 7108
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    .line 7114
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_2f
    if-lt v3, v0, :cond_35

    .line 7167
    :cond_31
    :goto_31
    return-object v7

    .line 7111
    .restart local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    .line 7112
    goto :goto_d

    .line 7118
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7119
    .local v6, "subtasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskAccessInfo$SubTask;>;"
    iput-object v6, v7, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    .line 7120
    const/4 v4, 0x0

    .line 7121
    .local v4, "lastActivity":Lcom/android/server/am/ActivityRecord;
    :cond_3d
    :goto_3d
    if-ge v3, v0, :cond_53

    .line 7122
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 7123
    .restart local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, 0x1

    .line 7124
    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_3d

    .line 7127
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v8, p1, :cond_5f

    .line 7141
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_53
    iget v8, v7, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    if-lez v8, :cond_31

    .line 7142
    new-instance v8, Lcom/android/server/am/ActivityStack$3;

    invoke-direct {v8, p0, v7}, Lcom/android/server/am/ActivityStack$3;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskAccessInfo;)V

    iput-object v8, v7, Lcom/android/server/am/TaskAccessInfo;->retriever:Landroid/app/IThumbnailRetriever;

    goto :goto_31

    .line 7130
    .restart local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_5f
    move-object v4, v1

    .line 7131
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eq v8, v2, :cond_3d

    if-eqz v2, :cond_3d

    .line 7132
    iget v8, v7, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    .line 7133
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 7134
    new-instance v5, Lcom/android/server/am/TaskAccessInfo$SubTask;

    invoke-direct {v5}, Lcom/android/server/am/TaskAccessInfo$SubTask;-><init>()V

    .line 7135
    .local v5, "sub":Lcom/android/server/am/TaskAccessInfo$SubTask;
    iput-object v2, v5, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    .line 7136
    iput-object v1, v5, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    .line 7137
    add-int/lit8 v8, v3, -0x1

    iput v8, v5, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    .line 7138
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d
.end method

.method public getTaskThumbnailsLocked(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$TaskThumbnails;
    .registers 8
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 6985
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v1

    .line 6987
    .local v1, "info":Lcom/android/server/am/TaskAccessInfo;
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_2e

    .line 6988
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v3

    .line 6989
    .local v3, "resumedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 6990
    .local v2, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_13

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v4, p1, :cond_13

    .line 6991
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 7004
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "resumedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_2d
    :goto_2d
    return-object v1

    .line 6997
    .end local v2    # "resumed":Lcom/android/server/am/ActivityRecord;
    :cond_2e
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6998
    .restart local v2    # "resumed":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-nez v4, :cond_42

    if-eqz v2, :cond_42

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v4, p1, :cond_42

    .line 6999
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 7001
    :cond_42
    iget-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2d

    .line 7002
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_2d
.end method

.method public getTaskTopThumbnailLocked(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 7009
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_25

    .line 7010
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v3

    .line 7011
    .local v3, "resumedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 7012
    .local v2, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_c

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v4, p1, :cond_c

    .line 7013
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 7049
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "resumedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :goto_24
    return-object v4

    .line 7019
    .end local v2    # "resumed":Lcom/android/server/am/ActivityRecord;
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 7020
    .restart local v2    # "resumed":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-nez v4, :cond_38

    if-eqz v2, :cond_38

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, p1, :cond_38

    .line 7023
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_24

    .line 7027
    :cond_38
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v1

    .line 7046
    .local v1, "info":Lcom/android/server/am/TaskAccessInfo;
    iget v4, v1, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    if-gtz v4, :cond_4d

    .line 7047
    iget-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4a

    iget-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_24

    :cond_4a
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->lastThumbnail:Landroid/graphics/Bitmap;

    goto :goto_24

    .line 7049
    :cond_4d
    iget-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    iget v5, v1, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskAccessInfo$SubTask;

    iget-object v4, v4, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v4, v4, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    goto :goto_24
.end method

.method public getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 5252
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 5253
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 5254
    .local v0, "index":I
    if-gez v0, :cond_10

    .line 5255
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    monitor-exit v3

    .line 5258
    :goto_f
    return-object v2

    .line 5257
    :cond_10
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5258
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    new-instance v2, Landroid/os/Bundle;

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v3

    goto :goto_f

    .line 5259
    .end local v0    # "index":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public getWindowMode(Landroid/os/IBinder;)I
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 5235
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 5236
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 5237
    .local v0, "index":I
    if-gez v0, :cond_d

    .line 5238
    const/high16 v2, 0x1000000

    monitor-exit v3

    .line 5241
    :goto_c
    return v2

    .line 5240
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5241
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    monitor-exit v3

    goto :goto_c

    .line 5242
    .end local v0    # "index":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method final indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final indexOfTokenLocked(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isHomeTask(Lcom/android/server/am/ActivityRecord;)Z
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    .line 804
    if-nez p1, :cond_4

    .line 815
    :cond_3
    :goto_3
    return v2

    .line 807
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 808
    .local v1, "rd":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, v4, :cond_a

    .line 809
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_3

    .line 810
    const/4 v2, 0x1

    goto :goto_3
.end method

.method final isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 830
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 831
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 834
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_c
    return-object v0

    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method final isTaskExist(I)Z
    .registers 7
    .param p1, "taskID"    # I

    .prologue
    .line 3152
    const/4 v1, 0x0

    .line 3153
    .local v1, "exist":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3155
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_1a

    .line 3156
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3157
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, p1, :cond_1b

    .line 3158
    const/4 v1, 0x1

    .line 3163
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    return v1

    .line 3155
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1b
    add-int/lit8 v2, v2, -0x1

    goto :goto_9
.end method

.method final isTaskResumed(I)Z
    .registers 8
    .param p1, "taskID"    # I

    .prologue
    .line 3137
    const/4 v3, 0x0

    .line 3138
    .local v3, "resumed":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3140
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_20

    .line 3141
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3142
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, p1, :cond_21

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_21

    .line 3143
    const/4 v3, 0x1

    .line 3148
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_20
    return v3

    .line 3140
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method final moveHomeToFrontFromLaunchLocked(I)V
    .registers 3
    .param p1, "launchFlags"    # I

    .prologue
    .line 4245
    const/high16 v0, 0x1000000

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(II)V

    .line 4246
    return-void
.end method

.method final moveHomeToFrontFromLaunchLocked(II)V
    .registers 11
    .param p1, "launchFlags"    # I
    .param p2, "currentWindowMode"    # I

    .prologue
    const v7, 0x10004000

    .line 4279
    and-int v6, p1, v7

    if-ne v6, v7, :cond_44

    .line 4286
    const/4 v0, 0x0

    .line 4287
    .local v0, "belowHomeTask":Z
    const/4 v4, 0x0

    .line 4288
    .local v4, "oppositeZoneTask":Lcom/android/server/am/TaskRecord;
    invoke-static {p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    const/high16 v7, 0x2000000

    if-ne v6, v7, :cond_38

    .line 4290
    and-int/lit8 v5, p2, 0xf

    .line 4291
    .local v5, "zone":I
    const/4 v3, 0x0

    .line 4293
    .local v3, "oppositeZone":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_45

    .line 4294
    const/16 v3, 0xc

    .line 4299
    :cond_19
    :goto_19
    if-eqz v3, :cond_1f

    .line 4300
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->findTaskWithZone(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 4303
    :cond_1f
    if-eqz v4, :cond_38

    .line 4304
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_29
    if-ltz v2, :cond_38

    .line 4305
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4306
    .local v1, "hr":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v6, v4, :cond_4b

    .line 4307
    const/4 v0, 0x1

    .line 4318
    .end local v1    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "i":I
    .end local v3    # "oppositeZone":I
    .end local v5    # "zone":I
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontLocked()V

    .line 4319
    if-eqz v0, :cond_44

    if-eqz v4, :cond_44

    .line 4320
    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 4324
    .end local v0    # "belowHomeTask":Z
    .end local v4    # "oppositeZoneTask":Lcom/android/server/am/TaskRecord;
    :cond_44
    return-void

    .line 4295
    .restart local v0    # "belowHomeTask":Z
    .restart local v3    # "oppositeZone":I
    .restart local v4    # "oppositeZoneTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "zone":I
    :cond_45
    const/16 v6, 0xc

    if-ne v5, v6, :cond_19

    .line 4296
    const/4 v3, 0x3

    goto :goto_19

    .line 4310
    .restart local v1    # "hr":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "i":I
    :cond_4b
    iget-boolean v6, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v6, :cond_51

    .line 4311
    const/4 v0, 0x0

    .line 4312
    goto :goto_38

    .line 4304
    :cond_51
    add-int/lit8 v2, v2, -0x1

    goto :goto_29
.end method

.method final moveHomeToFrontLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 6572
    const/4 v0, 0x0

    .line 6573
    .local v0, "homeTask":Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_1a

    .line 6574
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 6575
    .local v1, "hr":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_20

    .line 6576
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 6580
    .end local v1    # "hr":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    if-eqz v0, :cond_1f

    .line 6581
    invoke-virtual {p0, v0, v4, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 6583
    :cond_1f
    return-void

    .line 6573
    .restart local v1    # "hr":Lcom/android/server/am/ActivityRecord;
    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_a
.end method

.method public moveMwAppTokensToTopLocked()V
    .registers 9

    .prologue
    .line 6538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6542
    .local v0, "moved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 6543
    .local v4, "top":I
    move v2, v4

    .line 6544
    .local v2, "pos":I
    if-gez v4, :cond_11

    .line 6565
    :cond_10
    :goto_10
    return-void

    .line 6549
    :cond_11
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 6550
    .local v5, "topRecord":Lcom/android/server/am/ActivityRecord;
    :goto_19
    if-ltz v2, :cond_42

    .line 6551
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 6552
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget v6, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 6553
    .local v1, "option":I
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 6554
    const/high16 v6, 0x800000

    and-int/2addr v6, v1

    if-eqz v6, :cond_3f

    const/high16 v6, 0x100000

    and-int/2addr v6, v1

    if-nez v6, :cond_3f

    .line 6556
    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6559
    :cond_3f
    add-int/lit8 v2, v2, -0x1

    .line 6560
    goto :goto_19

    .line 6562
    .end local v1    # "option":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_10

    .line 6563
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    goto :goto_10
.end method

.method final moveTaskToBackLocked(ILcom/android/server/am/ActivityRecord;)Z
    .registers 20
    .param p1, "task"    # I
    .param p2, "reason"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 6877
    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "moveTaskToBack: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6882
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v14, :cond_57

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v14, :cond_57

    .line 6883
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 6884
    .local v10, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v10, :cond_3b

    .line 6885
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 6887
    :cond_3b
    if-eqz v10, :cond_57

    .line 6889
    const/4 v8, 0x1

    .line 6891
    .local v8, "moveOK":Z
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v15, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v14, v15}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_49} :catch_4e

    move-result v8

    .line 6895
    :goto_4a
    if-nez v8, :cond_57

    .line 6896
    const/4 v14, 0x0

    .line 6981
    .end local v8    # "moveOK":Z
    .end local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :goto_4d
    return v14

    .line 6892
    .restart local v8    # "moveOK":Z
    .restart local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :catch_4e
    move-exception v6

    .line 6893
    .local v6, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_4a

    .line 6901
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v8    # "moveOK":Z
    .end local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_57
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6906
    .local v9, "moved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6907
    .local v2, "N":I
    const/4 v4, 0x0

    .line 6908
    .local v4, "bottom":I
    const/4 v11, 0x0

    .line 6910
    .local v11, "pos":I
    const/4 v13, 0x0

    .line 6913
    .local v13, "topChanged":Z
    const/4 v3, 0x1

    .line 6914
    .local v3, "belowHomeTask":Z
    const/4 v5, 0x0

    .line 6915
    .local v5, "currentTask":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v7, v2, -0x1

    .local v7, "i":I
    :goto_6b
    if-ltz v7, :cond_81

    .line 6916
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 6917
    .local v12, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_d1

    .line 6918
    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 6925
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_81
    :goto_81
    if-ge v11, v2, :cond_f3

    .line 6926
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 6930
    .restart local v12    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v14, v12, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v14, :cond_92

    .line 6931
    const/4 v3, 0x0

    .line 6934
    :cond_92
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_d6

    .line 6943
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_ac

    add-int/lit8 v14, v2, -0x1

    if-ne v11, v14, :cond_d4

    const/4 v13, 0x1

    .line 6945
    :cond_ac
    :goto_ac
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6946
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v4, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6947
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6949
    iget v14, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v15, 0x100000

    or-int/2addr v14, v15

    iput v14, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6950
    iget v14, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, -0x1001

    iput v14, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6952
    add-int/lit8 v4, v4, 0x1

    .line 6960
    :cond_ce
    :goto_ce
    add-int/lit8 v11, v11, 0x1

    .line 6961
    goto :goto_81

    .line 6915
    :cond_d1
    add-int/lit8 v7, v7, -0x1

    goto :goto_6b

    .line 6943
    :cond_d4
    const/4 v13, 0x0

    goto :goto_ac

    .line 6954
    :cond_d6
    if-eqz v3, :cond_ce

    iget-boolean v14, v12, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v14, :cond_ce

    .line 6955
    if-eqz v5, :cond_ce

    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v14, :cond_ce

    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v15, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ce

    .line 6956
    add-int/lit8 v4, v11, 0x1

    goto :goto_ce

    .line 6963
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_f3
    if-eqz p2, :cond_12d

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v14

    const/high16 v15, 0x10000

    and-int/2addr v14, v15

    if-eqz v14, :cond_12d

    .line 6965
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 6967
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 6968
    .restart local v12    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_11e

    .line 6969
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6975
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_11e
    :goto_11e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v14, v9}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 6980
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 6981
    const/4 v14, 0x1

    goto/16 :goto_4d

    .line 6972
    :cond_12d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v15, 0x200b

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_11e
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 6620
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V

    .line 6621
    return-void
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V
    .registers 33
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "flags"    # I

    .prologue
    .line 6626
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    .line 6627
    .local v18, "task":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v19, v24, -0x1

    .line 6629
    .local v19, "top":I
    const/4 v5, 0x0

    .line 6630
    .local v5, "hasMetHome":Z
    const/4 v6, 0x0

    .line 6631
    .local v6, "homeActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v7, -0x1

    .line 6634
    .local v7, "homeTask":I
    if-ltz v19, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v18

    if-ne v0, v1, :cond_7b

    .line 6636
    :cond_39
    if-eqz p2, :cond_6f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getFlags()I

    move-result v24

    const/high16 v25, 0x10000

    and-int v24, v24, v25

    if-eqz v24, :cond_6f

    .line 6638
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 6644
    :goto_4e
    if-ltz v19, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;I)Z

    move-result v24

    if-nez v24, :cond_7b

    .line 6859
    :goto_6e
    return-void

    .line 6640
    :cond_6f
    const/16 v24, 0x100a

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_4e

    .line 6650
    :cond_7b
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 6654
    .local v11, "moved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v19, v24, -0x1

    .line 6655
    move/from16 v14, v19

    .line 6658
    .local v14, "pos":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6659
    .local v9, "listMoveToTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v4, 0x0

    .line 6660
    .local v4, "bMoveTask":Z
    const/high16 v16, 0x1000000

    .line 6661
    .local v16, "reasonCurrentWindowMode":I
    if-eqz p2, :cond_9e

    .line 6662
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v16, v0

    .line 6665
    :cond_9e
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9f
    move/from16 v0, v19

    if-ge v8, v0, :cond_c0

    .line 6666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityRecord;

    .line 6667
    .local v15, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2ad

    .line 6668
    move-object v6, v15

    .line 6669
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 6677
    .end local v15    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_c0
    :goto_c0
    if-ltz v14, :cond_3a4

    .line 6678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityRecord;

    .line 6681
    .restart local v15    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v18

    if-ne v0, v1, :cond_359

    .line 6688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6690
    const/16 v24, 0x0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6691
    add-int/lit8 v19, v19, -0x1

    .line 6694
    iget v13, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6695
    .local v13, "oldWindowMode":I
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v10

    .line 6696
    .local v10, "mode":I
    const/16 v21, 0x0

    .line 6697
    .local v21, "windowPosition":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v12

    .line 6699
    .local v12, "mw":Lcom/android/server/am/MultiWindowManagerService;
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    .line 6700
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v7, :cond_12c

    .line 6701
    const/4 v5, 0x1

    .line 6704
    :cond_12c
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x100000

    and-int v24, v24, v25

    if-eqz v24, :cond_143

    .line 6705
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const v25, -0x100001

    and-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6708
    :cond_143
    const/16 v24, 0x2

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_162

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x200000

    and-int v24, v24, v25

    if-eqz v24, :cond_162

    .line 6710
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const v25, -0x200001

    and-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6713
    :cond_162
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x400000

    and-int v24, v24, v25

    if-nez v24, :cond_178

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v24

    if-eqz v24, :cond_2e1

    :cond_178
    const/high16 v24, 0x2000000

    and-int v24, v24, v16

    if-eqz v24, :cond_2e1

    .line 6715
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    if-eqz v24, :cond_192

    .line 6716
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x400000

    or-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6719
    :cond_192
    const/high16 v24, 0x400000

    and-int v24, v24, v16

    if-eqz v24, :cond_206

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x400000

    and-int v24, v24, v25

    if-eqz v24, :cond_206

    .line 6721
    and-int/lit8 v24, v16, 0xf

    if-nez v24, :cond_1aa

    .line 6722
    const/high16 v24, 0x800000

    or-int v16, v16, v24

    .line 6725
    :cond_1aa
    const/high16 v24, 0x1000000

    move/from16 v0, v24

    if-ne v10, v0, :cond_2b1

    .line 6726
    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6737
    :goto_1b4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1f9

    .line 6738
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v21

    .line 6739
    if-eqz v21, :cond_1f9

    .line 6740
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0xf

    if-nez v24, :cond_1f9

    .line 6741
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v20

    .line 6742
    .local v20, "windowInfo":Landroid/os/Bundle;
    if-eqz v20, :cond_1f9

    .line 6743
    const-string v24, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6749
    .end local v20    # "windowInfo":Landroid/os/Bundle;
    :cond_1f9
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0xf

    if-eqz v24, :cond_206

    .line 6750
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityStack;->updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6782
    :cond_206
    :goto_206
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v13, v0, :cond_210

    if-eqz v21, :cond_238

    .line 6783
    :cond_210
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 6784
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 6788
    :cond_238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMultiWindow(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_29e

    .line 6789
    if-nez p2, :cond_29e

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x2000000

    and-int v24, v24, v25

    if-eqz v24, :cond_29e

    .line 6790
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    and-int/lit8 v22, v24, 0xf

    .line 6791
    .local v22, "zoneInfo":I
    if-eqz v22, :cond_29e

    .line 6792
    xor-int/lit8 v24, v22, -0x1

    and-int/lit8 v17, v24, 0xf

    .line 6793
    .local v17, "reverseZone":I
    if-eqz v17, :cond_29e

    .line 6794
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v24

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/am/ActivityStack;->getFrontZoneActivity(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 6795
    .local v23, "zoneRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v23, :cond_29e

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_29e

    .line 6796
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 6797
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 6804
    .end local v17    # "reverseZone":I
    .end local v22    # "zoneInfo":I
    .end local v23    # "zoneRecord":Lcom/android/server/am/ActivityRecord;
    :cond_29e
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x800000

    and-int v24, v24, v25

    if-nez v24, :cond_2a9

    .line 6805
    const/4 v4, 0x1

    .line 6821
    .end local v10    # "mode":I
    .end local v12    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v13    # "oldWindowMode":I
    .end local v21    # "windowPosition":Landroid/graphics/Rect;
    :cond_2a9
    :goto_2a9
    add-int/lit8 v14, v14, -0x1

    .line 6822
    goto/16 :goto_c0

    .line 6665
    :cond_2ad
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9f

    .line 6728
    .restart local v10    # "mode":I
    .restart local v12    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .restart local v13    # "oldWindowMode":I
    .restart local v21    # "windowPosition":Landroid/graphics/Rect;
    :cond_2b1
    and-int/lit8 v24, v16, 0xf

    if-eqz v24, :cond_2db

    .line 6729
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x4c0000

    and-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6730
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x2000000

    or-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6731
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    and-int/lit8 v25, v16, 0xf

    or-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_1b4

    .line 6733
    :cond_2db
    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_1b4

    .line 6753
    :cond_2e1
    const/high16 v24, 0x2000000

    move/from16 v0, v24

    if-ne v10, v0, :cond_34b

    .line 6762
    if-eqz p2, :cond_318

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getFlags()I

    move-result v24

    const/high16 v25, 0x400000

    and-int v24, v24, v25

    if-eqz v24, :cond_318

    const/high16 v24, 0x1000000

    and-int v24, v24, v16

    if-eqz v24, :cond_318

    .line 6765
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x4c0000

    and-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6766
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x1000000

    or-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6767
    const/4 v4, 0x1

    .line 6770
    :cond_318
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    if-eqz v24, :cond_206

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    if-nez v24, :cond_206

    .line 6772
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v24

    if-nez v24, :cond_206

    .line 6773
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const v25, -0x400001

    and-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_206

    .line 6777
    :cond_34b
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x1000

    move/from16 v24, v0

    if-eqz v24, :cond_206

    .line 6778
    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_206

    .line 6810
    .end local v10    # "mode":I
    .end local v12    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v13    # "oldWindowMode":I
    .end local v21    # "windowPosition":Landroid/graphics/Rect;
    :cond_359
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x800000

    and-int v24, v24, v25

    if-eqz v24, :cond_37c

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x100000

    and-int v24, v24, v25

    if-nez v24, :cond_37c

    .line 6812
    const/16 v24, 0x0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2a9

    .line 6813
    :cond_37c
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v24

    const/high16 v25, 0x2000000

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2a9

    .line 6814
    move/from16 v0, v18

    if-ne v0, v7, :cond_2a9

    and-int/lit8 v24, p4, 0x2

    if-eqz v24, :cond_2a9

    .line 6815
    if-eqz v5, :cond_39c

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2a9

    .line 6816
    :cond_39c
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    goto/16 :goto_2a9

    .line 6826
    .end local v15    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3a4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3b9

    .line 6827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 6833
    :cond_3b9
    if-eqz p2, :cond_44e

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getFlags()I

    move-result v24

    const/high16 v25, 0x10000

    and-int v24, v24, v25

    if-eqz v24, :cond_44e

    .line 6835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 6837
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 6838
    .restart local v15    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v15, :cond_3f5

    .line 6839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6841
    :cond_3f5
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 6846
    .end local v15    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_3f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 6848
    if-eqz v4, :cond_422

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_422

    .line 6849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 6857
    :cond_422
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 6858
    const/16 v24, 0x7532

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_6e

    .line 6843
    :cond_44e
    const/16 v24, 0x100a

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_3f8
.end method

.method needPendingNotify()Z
    .registers 6

    .prologue
    .line 5218
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5219
    .local v0, "canResume":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v3, 0x0

    .line 5220
    .local v3, "res":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5221
    .local v1, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_21

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_b

    .line 5222
    :cond_21
    const/4 v3, 0x1

    .line 5227
    .end local v1    # "cr":Lcom/android/server/am/ActivityRecord;
    :cond_22
    return v3
.end method

.method final needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;I)Z
    .registers 9
    .param p1, "reason"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "topRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "flag"    # I

    .prologue
    const v4, -0x4c0001

    const/4 v2, 0x1

    .line 6599
    if-eqz p1, :cond_1b

    .line 6600
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 6616
    :cond_e
    :goto_e
    return v2

    .line 6603
    :cond_f
    iget v3, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int v0, v3, v4

    .line 6604
    .local v0, "currentWindowMode":I
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int v1, v3, v4

    .line 6605
    .local v1, "reasonWindowMode":I
    if-ne v0, v1, :cond_e

    .line 6616
    .end local v0    # "currentWindowMode":I
    .end local v1    # "reasonWindowMode":I
    :cond_19
    const/4 v2, 0x0

    goto :goto_e

    .line 6610
    :cond_1b
    iget v3, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_19

    .line 6611
    const/4 v3, 0x2

    if-eq p3, v3, :cond_19

    goto :goto_e
.end method

.method final notifyMultiWindowStatusChangedLocked(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2290
    .local p1, "resumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 2291
    .local v4, "startMultiwindowMode":Z
    const/4 v1, 0x0

    .line 2293
    .local v1, "isFreeStyle":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2294
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v5

    const/high16 v6, 0x2000000

    if-ne v5, v6, :cond_6

    .line 2295
    const/4 v4, 0x1

    .line 2296
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2b

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v5, 0x800

    if-nez v5, :cond_2b

    .line 2298
    const/4 v1, 0x1

    .line 2304
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2b
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowMode:Z

    if-ne v4, v5, :cond_33

    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsFreeStyle:Z

    if-eq v1, v5, :cond_56

    .line 2305
    :cond_33
    const-string v6, "sys.multiwindow.running"

    if-eqz v4, :cond_57

    const-string v5, "1"

    :goto_39
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2307
    .local v2, "multiWindowModeIntent":Landroid/content/Intent;
    const-string v5, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2308
    const-string v5, "com.sec.android.extra.MULTIWINDOW_FREESTYLE"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2309
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2310
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowMode:Z

    .line 2311
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mIsFreeStyle:Z

    .line 2313
    .end local v2    # "multiWindowModeIntent":Landroid/content/Intent;
    :cond_56
    return-void

    .line 2305
    :cond_57
    const-string v5, "0"

    goto :goto_39
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
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5646
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5647
    .local v0, "N":I
    if-gtz v0, :cond_c

    const/4 v4, 0x0

    .line 5690
    :cond_b
    return-object v4

    .line 5649
    :cond_c
    const/4 v4, 0x0

    .line 5652
    .local v4, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_76

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v7, :cond_76

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v7, :cond_76

    move v2, v5

    .line 5655
    .local v2, "nowVisible":Z
    :goto_1e
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v7, :cond_2d

    .line 5657
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_78

    move v2, v5

    .line 5660
    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, v0, :cond_b

    .line 5661
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5665
    .local v3, "s":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_52

    if-eqz v2, :cond_52

    .line 5666
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5667
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 5668
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_52

    .line 5675
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 5678
    :cond_52
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_5e

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v5

    if-eqz v5, :cond_73

    :cond_5e
    if-eqz p1, :cond_73

    .line 5680
    if-nez v4, :cond_67

    .line 5681
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5683
    .restart local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_67
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5684
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5685
    add-int/lit8 v0, v0, -0x1

    .line 5686
    add-int/lit8 v1, v1, -0x1

    .line 5660
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .end local v1    # "i":I
    .end local v2    # "nowVisible":Z
    .end local v3    # "s":Lcom/android/server/am/ActivityRecord;
    :cond_76
    move v2, v6

    .line 5652
    goto :goto_1e

    .restart local v2    # "nowVisible":Z
    :cond_78
    move v2, v6

    .line 5657
    goto :goto_2d
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    .registers 35
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .param p5, "pauseJIT"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 995
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 999
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1007
    if-eqz p4, :cond_42

    .line 1008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_e3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_31
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v24

    .line 1011
    .local v24, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 1014
    .end local v24    # "config":Landroid/content/res/Configuration;
    :cond_42
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1015
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1016
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1017
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 1021
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v27

    .line 1022
    .local v27, "idx":I
    if-gez v27, :cond_74

    .line 1023
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    :cond_74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1028
    :try_start_7e
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_e6

    .line 1029
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_8a} :catch_8a

    .line 1137
    :catch_8a
    move-exception v25

    .line 1138
    .local v25, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v2, :cond_377

    .line 1141
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

    move-object/from16 v0, v25

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 1145
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "2nd-crash"

    const/16 v22, 0x0

    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1147
    const/4 v2, 0x0

    .line 1198
    .end local v25    # "e":Landroid/os/RemoteException;
    :goto_e2
    return v2

    .line 1008
    .end local v27    # "idx":I
    :cond_e3
    const/4 v2, 0x0

    goto/16 :goto_31

    .line 1031
    .restart local v27    # "idx":I
    :cond_e6
    const/4 v10, 0x0

    .line 1032
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v11, 0x0

    .line 1033
    .local v11, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_f2

    .line 1034
    :try_start_ea
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1035
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1042
    :cond_f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v2, :cond_122

    .line 1044
    new-instance v23, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTIVITY_STATE"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1045
    .local v23, "activityStateIntent":Landroid/content/Intent;
    const-string v2, "activityPackageName"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const-string v2, "activityState"

    const-string v3, "create"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.activitymanager.permission.GET_ACTIVITY_STATE"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1049
    .end local v23    # "activityStateIntent":Landroid/content/Intent;
    :cond_122
    if-eqz p3, :cond_156

    .line 1050
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

    .line 1054
    :cond_156
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_164

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1057
    :cond_164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 1058
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1059
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 1060
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 1062
    const/4 v14, 0x0

    .line 1063
    .local v14, "profileFile":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1064
    .local v15, "profileFd":Landroid/os/ParcelFileDescriptor;
    const/16 v16, 0x0

    .line 1065
    .local v16, "profileAutoStop":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v2, :cond_1e0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1c4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_1e0

    .line 1067
    :cond_1c4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move/from16 v16, v0

    .line 1073
    :cond_1e0
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1074
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_1ea
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_1ea} :catch_8a

    .line 1075
    if-eqz v15, :cond_1f0

    .line 1077
    :try_start_1ec
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_1ef
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1ef} :catch_370
    .catch Landroid/os/RemoteException; {:try_start_1ec .. :try_end_1ef} :catch_8a

    move-result-object v15

    .line 1083
    :cond_1f0
    :goto_1f0
    if-eqz p5, :cond_1fb

    .line 1084
    :try_start_1f2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const-wide/16 v3, 0x3

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->requestDelayJITCompilation(J)V

    .line 1087
    :cond_1fb
    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v7, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1088
    .local v7, "copyConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_22c

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v2, v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPortraitLayoutOnlyPackage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_22c

    .line 1090
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v3, 0x2000000

    if-ne v2, v3, :cond_229

    .line 1091
    const/4 v2, 0x1

    iput v2, v7, Landroid/content/res/Configuration;->orientation:I

    .line 1093
    :cond_229
    const/4 v2, 0x0

    iput v2, v7, Landroid/content/res/Configuration;->seq:I

    .line 1099
    :cond_22c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_259

    .line 1100
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v3, Landroid/content/pm/ActivityInfo;->FORCED_LOCAL_ORIENTATION:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 1102
    .local v26, "forcedLocalOrientation":I
    if-eqz v26, :cond_259

    iget v2, v7, Landroid/content/res/Configuration;->orientation:I

    move/from16 v0, v26

    if-eq v0, v2, :cond_259

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getConfigurationForRotation(I)Landroid/content/res/Configuration;

    move-result-object v7

    .line 1110
    .end local v26    # "forcedLocalOrientation":I
    :cond_259
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

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    if-nez p3, :cond_374

    const/4 v12, 0x1

    :goto_27d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v13

    invoke-interface/range {v2 .. v16}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 1117
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_304

    .line 1122
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_304

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2df

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_2df

    .line 1125
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

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_2df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1132
    .local v28, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_304
    .catch Landroid/os/RemoteException; {:try_start_1f2 .. :try_end_304} :catch_8a

    .line 1158
    .end local v28    # "msg":Landroid/os/Message;
    :cond_304
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1159
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_32f

    .line 1160
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

    .line 1164
    :cond_32f
    if-eqz p3, :cond_38b

    .line 1167
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1170
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1171
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1172
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1173
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_35a

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 1176
    :cond_35a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1194
    :goto_360
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_36d

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 1198
    :cond_36d
    const/4 v2, 0x1

    goto/16 :goto_e2

    .line 1078
    .end local v7    # "copyConfig":Landroid/content/res/Configuration;
    :catch_370
    move-exception v25

    .line 1079
    .local v25, "e":Ljava/io/IOException;
    const/4 v15, 0x0

    goto/16 :goto_1f0

    .line 1110
    .end local v25    # "e":Ljava/io/IOException;
    .restart local v7    # "copyConfig":Landroid/content/res/Configuration;
    :cond_374
    const/4 v12, 0x0

    goto/16 :goto_27d

    .line 1152
    .end local v7    # "copyConfig":Landroid/content/res/Configuration;
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "profileAutoStop":Z
    .local v25, "e":Landroid/os/RemoteException;
    :cond_377
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1153
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1154
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1155
    throw v25

    .line 1186
    .end local v25    # "e":Landroid/os/RemoteException;
    .restart local v7    # "copyConfig":Landroid/content/res/Configuration;
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v14    # "profileFile":Ljava/lang/String;
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "profileAutoStop":Z
    :cond_38b
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1187
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_360
.end method

.method public relaunchAllExternalActivityLocked()V
    .registers 7

    .prologue
    .line 7694
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 7695
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7697
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_3c

    .line 7698
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 7700
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_1c

    .line 7697
    :cond_19
    :goto_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 7704
    :cond_1c
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_19

    .line 7705
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, -0x1001

    iput v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7706
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x400000

    or-int/2addr v3, v5

    iput v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7707
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iput v3, v2, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    .line 7709
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    goto :goto_19

    .line 7713
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v3

    .line 7712
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_3c
    const/4 v3, 0x0

    :try_start_3d
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 7713
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_39

    .line 7714
    return-void
.end method

.method public relaunchExternalActivityLocked(Z)V
    .registers 16
    .param p1, "topLaunchExternal"    # Z

    .prologue
    const/high16 v13, 0x1000000

    const/high16 v12, 0x4c0000

    const v11, -0x400001

    .line 7644
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 7645
    const/4 v4, 0x0

    .line 7646
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    .line 7647
    .local v6, "zoneInfo":I
    :try_start_c
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7648
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_14
    if-ltz v2, :cond_3b

    .line 7649
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v4, v0

    .line 7650
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_45

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_45

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, 0xf

    if-eqz v7, :cond_45

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v9, 0x100000

    and-int/2addr v7, v9

    if-nez v7, :cond_45

    .line 7653
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v6, v7, 0xf

    .line 7658
    :cond_3b
    if-eqz v4, :cond_43

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, 0xf

    if-nez v7, :cond_48

    .line 7659
    :cond_43
    monitor-exit v8

    .line 7691
    :goto_44
    return-void

    .line 7648
    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 7662
    :cond_48
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v7, v12

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7663
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/2addr v7, v13

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7664
    if-eqz p1, :cond_5f

    .line 7665
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7666
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v7, v11

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7668
    :cond_5f
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v10, 0x0

    invoke-direct {p0, v7, v9, v10}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 7669
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v4, v7, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 7671
    if-eqz v6, :cond_aa

    .line 7672
    xor-int/lit8 v7, v6, -0x1

    and-int/lit8 v5, v7, 0xf

    .line 7673
    .local v5, "reverseZone":I
    const/4 v7, 0x1

    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/am/ActivityStack;->getFrontZoneActivity(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 7674
    if-eqz v4, :cond_aa

    .line 7675
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v7, v12

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7676
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/2addr v7, v13

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7677
    if-nez p1, :cond_92

    .line 7678
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7679
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v7, v11

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 7682
    :cond_92
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v10, 0x0

    invoke-direct {p0, v7, v9, v10}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 7683
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v4, v7, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 7686
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    .line 7687
    .local v3, "mw":Lcom/android/server/am/MultiWindowManagerService;
    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiDisplayState(ZZ)Z

    .line 7690
    .end local v3    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v5    # "reverseZone":I
    :cond_aa
    monitor-exit v8

    goto :goto_44

    .end local v1    # "N":I
    .end local v2    # "i":I
    :catchall_ac
    move-exception v7

    monitor-exit v8
    :try_end_ae
    .catchall {:try_start_c .. :try_end_ae} :catchall_ac

    throw v7
.end method

.method final removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    .line 6215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 6216
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 6222
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6223
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 6224
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6227
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6229
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 6230
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 6234
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6235
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 6236
    return-void
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 6448
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v6, "mLRUActivities"

    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 6449
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v6, "mStoppingActivities"

    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 6450
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v6, "mGoingToSleepActivities"

    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 6451
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v6, "mWaitingVisibleActivities"

    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 6453
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v6, "mFinishingActivities"

    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 6455
    const/4 v1, 0x0

    .line 6458
    .local v1, "hasVisibleActivities":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6461
    .local v2, "i":I
    :cond_2a
    :goto_2a
    if-lez v2, :cond_fa

    .line 6462
    add-int/lit8 v2, v2, -0x1

    .line 6463
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 6466
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, p1, :cond_2a

    .line 6468
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v5, :cond_42

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v5, :cond_46

    :cond_42
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_ce

    .line 6471
    :cond_46
    const/4 v4, 0x1

    .line 6481
    .local v4, "remove":Z
    :goto_47
    if-eqz v4, :cond_e7

    .line 6491
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_be

    .line 6493
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v5, :cond_6f

    .line 6495
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTIVITY_STATE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6496
    .local v0, "activityStateIntent":Landroid/content/Intent;
    const-string v5, "activityPackageName"

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6497
    const-string v5, "activityState"

    const-string v6, "pause"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6498
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.activitymanager.permission.GET_ACTIVITY_STATE"

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 6500
    .end local v0    # "activityStateIntent":Landroid/content/Intent;
    :cond_6f
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": app died, no saved state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6501
    const/16 v5, 0x7531

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "proc died without state saved"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6507
    :cond_be
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-nez v5, :cond_c5

    .line 6508
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6529
    :cond_c5
    :goto_c5
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_2a

    .line 6472
    .end local v4    # "remove":Z
    :cond_ce
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_e4

    iget-wide v5, v3, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    sub-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_e4

    .line 6476
    const/4 v4, 0x1

    .restart local v4    # "remove":Z
    goto/16 :goto_47

    .line 6479
    .end local v4    # "remove":Z
    :cond_e4
    const/4 v4, 0x0

    .restart local v4    # "remove":Z
    goto/16 :goto_47

    .line 6515
    :cond_e7
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_ec

    .line 6516
    const/4 v1, 0x1

    .line 6520
    :cond_ec
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 6521
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 6522
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v5, :cond_c5

    .line 6525
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    goto :goto_c5

    .line 6533
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "remove":Z
    :cond_fa
    return v1
.end method

.method public removeTaskActivitiesLocked(IIZ)Lcom/android/server/am/ActivityRecord;
    .registers 11
    .param p1, "taskId"    # I
    .param p2, "subTaskIndex"    # I
    .param p3, "taskRequired"    # Z

    .prologue
    const/4 v3, 0x0

    .line 7056
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 7057
    .local v0, "info":Lcom/android/server/am/TaskAccessInfo;
    iget-object v4, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_25

    .line 7058
    if-eqz p3, :cond_24

    .line 7059
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTaskLocked: unknown taskId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7087
    :cond_24
    :goto_24
    return-object v3

    .line 7064
    :cond_25
    if-gez p2, :cond_3a

    .line 7066
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_32

    .line 7067
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 7068
    .local v1, "mw":Lcom/android/server/am/MultiWindowManagerService;
    invoke-virtual {v1, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeWindowInfo(I)V

    .line 7073
    .end local v1    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    :cond_32
    iget v3, v0, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 7074
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    goto :goto_24

    .line 7077
    :cond_3a
    iget-object v4, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p2, v4, :cond_5d

    .line 7078
    if-eqz p3, :cond_24

    .line 7079
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTaskLocked: unknown subTaskIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 7085
    :cond_5d
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 7086
    .local v2, "subtask":Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget v3, v2, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 7087
    iget-object v3, v2, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    goto :goto_24
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .registers 12
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .prologue
    .line 5044
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2c

    .line 5045
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 5046
    .local v1, "w":Landroid/app/IActivityManager$WaitResult;
    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 5047
    if-eqz p2, :cond_25

    .line 5048
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 5050
    :cond_25
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 5051
    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 5044
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5053
    .end local v1    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2c
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 5054
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v6, 0x0

    .line 5057
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_36

    .line 5058
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 5059
    .local v1, "w":Landroid/app/IActivityManager$WaitResult;
    iput-boolean v6, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 5060
    if-eqz p1, :cond_26

    .line 5061
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 5063
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 5064
    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 5057
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 5066
    .end local v1    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_36
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 5068
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v2, :cond_48

    .line 5069
    iput-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 5070
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 5072
    :cond_48
    return-void
.end method

.method public requestDelayedRotation(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "delayMillis"    # I

    .prologue
    .line 7830
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 7832
    :try_start_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 7833
    .local v0, "caller":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v2

    .line 7834
    .local v2, "index":I
    if-lez v2, :cond_34

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_34

    .line 7835
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 7836
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_34

    if-eqz v3, :cond_34

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, v6, :cond_34

    .line 7838
    new-instance v4, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    invoke-direct {v4, p0, v0, v3, p2}, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;I)V

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_34} :catch_36
    .catchall {:try_start_3 .. :try_end_34} :catchall_3f

    .line 7844
    .end local v0    # "caller":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "index":I
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v5

    .line 7845
    return-void

    .line 7841
    :catch_36
    move-exception v1

    .line 7842
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    const-string v6, "requestDelayedRotation() catched exception."

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 7844
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3f
    move-exception v4

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_3f

    throw v4
.end method

.method public requestFakeOpaqueFull(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestFullOpaque"    # Z

    .prologue
    .line 7815
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 7816
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 7817
    .local v0, "index":I
    if-gez v0, :cond_b

    .line 7818
    monitor-exit v3

    .line 7824
    :goto_a
    return-void

    .line 7820
    :cond_b
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 7821
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iput-boolean p2, v1, Lcom/android/server/am/ActivityRecord;->requestedFullOpaque:Z

    .line 7822
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 7823
    monitor-exit v3

    goto :goto_a

    .end local v0    # "index":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    .line 5879
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 5884
    .local v2, "index":I
    if-gez v2, :cond_8

    .line 5885
    const/4 v0, 0x0

    .line 5890
    :goto_7
    return v0

    .line 5887
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 5889
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5890
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public resizeArrangedWindow(ILandroid/graphics/Point;)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 5530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5532
    .local v3, "origId":J
    const/16 v7, 0xf

    if-ne p1, v7, :cond_33

    .line 5533
    const/4 v7, 0x0

    :try_start_9
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 5534
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v8, 0xfffff0

    and-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5535
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v8, 0x1000000

    or-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5536
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 5537
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v5, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 5538
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_6b

    .line 5581
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5583
    return-void

    .line 5539
    :cond_33
    and-int/lit8 v7, p1, 0xf

    if-eqz v7, :cond_c7

    .line 5540
    :try_start_37
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v2

    .line 5541
    .local v2, "mw":Lcom/android/server/am/MultiWindowManagerService;
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v6

    .line 5542
    .local v6, "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2f

    .line 5543
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4b
    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5544
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x3

    if-ne v7, v8, :cond_70

    .line 5545
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, -0x10

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5546
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v7, v7, 0xc

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I
    :try_end_6a
    .catchall {:try_start_37 .. :try_end_6a} :catchall_6b

    goto :goto_4b

    .line 5581
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_6b
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 5547
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_70
    :try_start_70
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0xc

    if-ne v7, v8, :cond_4b

    .line 5548
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, -0x10

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5549
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v7, v7, 0x3

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_4b

    .line 5553
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_85
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->arrange:I

    invoke-virtual {v2, v7, v8, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    .line 5555
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5556
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 5557
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v5, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    goto :goto_93

    .line 5561
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_af
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_b5
    if-ltz v0, :cond_2f

    .line 5562
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {p0, v7}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 5561
    add-int/lit8 v0, v0, -0x1

    goto :goto_b5

    .line 5566
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v6    # "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_c7
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v2

    .line 5567
    .restart local v2    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    if-eqz p2, :cond_d0

    .line 5568
    invoke-virtual {v2, p2}, Lcom/android/server/am/MultiWindowManagerService;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 5571
    :cond_d0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZZ)Ljava/util/ArrayList;

    move-result-object v6

    .line 5572
    .restart local v6    # "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2f

    .line 5573
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->arrange:I

    invoke-virtual {v2, v7, v8, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    .line 5574
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_eb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5575
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v5, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V
    :try_end_fe
    .catchall {:try_start_70 .. :try_end_fe} :catchall_6b

    goto :goto_eb
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

    .line 4759
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10480

    invoke-interface {v0, p1, p2, v1, p6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 4767
    .local v8, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_69

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_6b

    .line 4772
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_11
    if-eqz v6, :cond_68

    .line 4777
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4781
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_36

    .line 4782
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 4783
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 4787
    :cond_36
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_4d

    .line 4788
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 4789
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 4793
    :cond_4d
    if-eqz p4, :cond_68

    .line 4794
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 4795
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_6e

    :goto_63
    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 4801
    :cond_68
    return-object v6

    .line 4767
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_69
    const/4 v6, 0x0

    goto :goto_11

    .line 4768
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_6b
    move-exception v7

    .line 4769
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_11

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_6e
    move v5, v3

    .line 4795
    goto :goto_63
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .registers 14
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2332
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPendingResumeTopActivity:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2334
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v7, :cond_91

    .line 2337
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v4

    .line 2338
    .local v4, "resumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v3, 0x0

    .line 2339
    .local v3, "resumed":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8c

    .line 2340
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->arrangedWindowStateLocked(Ljava/util/List;)V

    .line 2341
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStatusChangedLocked(Ljava/util/List;)V

    .line 2342
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 2343
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, p1, p2, v2, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 2344
    iget v7, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v7}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v7

    const/high16 v8, 0x2000000

    if-ne v7, v8, :cond_48

    .line 2345
    iget v7, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x1

    invoke-direct {p0, v2, v7, v10, v8}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 2348
    :cond_48
    const/4 v3, 0x1

    goto :goto_26

    .line 2351
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_4a
    if-nez v3, :cond_7b

    .line 2352
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->updatePinupHiddenFlag()V

    .line 2353
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2354
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_7c

    .line 2355
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 2356
    .local v1, "mw":Lcom/android/server/am/MultiWindowManagerService;
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    .line 2357
    .local v6, "winInfo":Landroid/os/Bundle;
    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v7, :cond_76

    if-eqz v6, :cond_76

    const-string v7, "android.intent.extra.STAY_RESUME"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 2358
    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2360
    :cond_76
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2375
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v3    # "resumed":Z
    .end local v4    # "resumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "winInfo":Landroid/os/Bundle;
    :cond_7b
    :goto_7b
    return v3

    .line 2364
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "resumed":Z
    .restart local v4    # "resumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v5    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_7c
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v7, :cond_7b

    .line 2365
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2366
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v3

    goto :goto_7b

    .line 2371
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_8c
    invoke-virtual {p0, p1, p2, v9, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v3

    goto :goto_7b

    .line 2375
    .end local v3    # "resumed":Z
    .end local v4    # "resumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_91
    invoke-virtual {p0, p1, p2, v9, v9}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v3

    goto :goto_7b
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z
    .registers 41
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "next"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2381
    .local p4, "resumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    if-nez p3, :cond_9

    .line 2382
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object p3

    .line 2388
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    move/from16 v35, v0

    .line 2389
    .local v35, "userLeaving":Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 2391
    if-nez p3, :cond_2c

    .line 2394
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_2c

    .line 2395
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v3

    .line 2896
    :goto_2b
    return v3

    .line 2400
    :cond_2c
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2403
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_70

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    :cond_41
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_78

    .line 2409
    const/16 v17, 0x1

    .line 2410
    .local v17, "bExecuteTransition":Z
    const/16 v18, 0x0

    .line 2411
    .local v18, "bNormalResumed":Z
    const/16 v31, 0x0

    .line 2412
    .local v31, "resumedZoneMask":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_d5

    .line 2413
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_59
    :goto_59
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/am/ActivityRecord;

    .line 2414
    .local v29, "resume":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_be

    .line 2415
    const/16 v17, 0x0

    goto :goto_59

    .line 2403
    .end local v17    # "bExecuteTransition":Z
    .end local v18    # "bNormalResumed":Z
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v29    # "resume":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "resumedZoneMask":I
    :cond_70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p3

    if-eq v3, v0, :cond_41

    .line 2465
    :cond_78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_88

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v3, :cond_155

    :cond_88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p3

    if-ne v3, v0, :cond_155

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_a8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_a8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_155

    .line 2472
    :cond_a8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2474
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2475
    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 2417
    .restart local v17    # "bExecuteTransition":Z
    .restart local v18    # "bNormalResumed":Z
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v29    # "resume":Lcom/android/server/am/ActivityRecord;
    .restart local v31    # "resumedZoneMask":I
    :cond_be
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    or-int v31, v31, v3

    .line 2418
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_59

    .line 2419
    const/16 v18, 0x1

    goto :goto_59

    .line 2427
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v29    # "resume":Lcom/android/server/am/ActivityRecord;
    :cond_d5
    if-eqz v17, :cond_d9

    if-nez v31, :cond_db

    :cond_d9
    if-eqz v18, :cond_ee

    .line 2429
    :cond_db
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2431
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2436
    :cond_ee
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_131

    .line 2437
    const/16 v33, 0x0

    .line 2438
    .local v33, "startPausing":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v30

    .line 2439
    .local v30, "resumedActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_fe
    :goto_fe
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_121

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    .line 2440
    .local v32, "rs":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p4

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fe

    .line 2442
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2443
    const/16 v33, 0x1

    goto :goto_fe

    .line 2448
    .end local v32    # "rs":Lcom/android/server/am/ActivityRecord;
    :cond_121
    if-nez v33, :cond_131

    .line 2449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_131

    .line 2450
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    .line 2456
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v30    # "resumedActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v33    # "startPausing":Z
    :cond_131
    if-eqz p1, :cond_152

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_152

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_152

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_152

    .line 2457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2460
    :cond_152
    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 2481
    .end local v17    # "bExecuteTransition":Z
    .end local v18    # "bNormalResumed":Z
    .end local v31    # "resumedZoneMask":I
    :cond_155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_196

    .line 2482
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping resume of top activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is stopped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 2489
    :cond_196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2491
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2493
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 2494
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2499
    const-string v3, "qcom"

    sget-object v4, Lcom/android/server/am/ActivityStack;->hardwareInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d5

    .line 2500
    sget-object v3, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;)V

    .line 2505
    :cond_1d5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_1e8

    .line 2506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f1

    .line 2508
    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 2511
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_1f1

    .line 2514
    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 2551
    :cond_1f1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_229

    .line 2552
    const/16 v33, 0x0

    .line 2553
    .restart local v33    # "startPausing":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v30

    .line 2554
    .restart local v30    # "resumedActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_201
    :goto_201
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_224

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    .line 2555
    .restart local v32    # "rs":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p4

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_201

    .line 2558
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2559
    const/16 v33, 0x1

    goto :goto_201

    .line 2562
    .end local v32    # "rs":Lcom/android/server/am/ActivityRecord;
    :cond_224
    if-eqz v33, :cond_254

    .line 2563
    const/4 v3, 0x1

    goto/16 :goto_2b

    .line 2566
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v30    # "resumedActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v33    # "startPausing":Z
    :cond_229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_254

    .line 2572
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_249

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_249

    .line 2575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 2577
    :cond_249
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 2578
    const/4 v3, 0x1

    goto/16 :goto_2b

    .line 2585
    :cond_254
    :try_start_254
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v3, :cond_444

    .line 2586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_268} :catch_454

    .line 2598
    :goto_268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v22, v0

    .line 2599
    .local v22, "last":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-eqz v3, :cond_2a3

    if-eqz v22, :cond_2a3

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_2a3

    .line 2600
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x40000000

    and-int/2addr v3, v4

    if-nez v3, :cond_295

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2a3

    .line 2605
    :cond_295
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "no-history"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2610
    :cond_2a3
    if-eqz p1, :cond_2c7

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_2c7

    .line 2611
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v3, :cond_457

    if-eqz p3, :cond_457

    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_457

    .line 2612
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 2613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2643
    :cond_2c7
    :goto_2c7
    :try_start_2c7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_2d7
    .catch Landroid/os/RemoteException; {:try_start_2c7 .. :try_end_2d7} :catch_732
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c7 .. :try_end_2d7} :catch_46d

    .line 2654
    :goto_2d7
    const/16 v27, 0x0

    .line 2655
    .local v27, "noAnim":Z
    if-eqz p1, :cond_4e9

    .line 2656
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_4b3

    .line 2659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_498

    .line 2660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2667
    :goto_2f8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 2668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2698
    :cond_313
    :goto_313
    if-nez v27, :cond_51d

    .line 2699
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .line 2706
    :goto_318
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->IS_TYPE_MRVL:Z

    if-eqz v3, :cond_34e

    .line 2707
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 2708
    .local v28, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/ActivityStack;->lastPackageName:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34e

    .line 2709
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 2710
    .local v25, "mIntent":Landroid/content/Intent;
    const-string v3, "com.marvell.cpugadget.TASK_MONITOR"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2711
    const-string v3, "taskName"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2714
    sput-object v28, Lcom/android/server/am/ActivityStack;->lastPackageName:Ljava/lang/String;

    .line 2718
    .end local v25    # "mIntent":Landroid/content/Intent;
    .end local v28    # "packageName":Ljava/lang/String;
    :cond_34e
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_6c8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_6c8

    .line 2722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2725
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, v0

    .line 2728
    .local v23, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v24, v0

    .line 2730
    .local v24, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2733
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2734
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2735
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 2736
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_3a4

    .line 2737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2739
    :cond_3a4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 2740
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2744
    const/16 v34, 0x0

    .line 2745
    .local v34, "updated":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_3fa

    .line 2746
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2747
    :try_start_3c4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_522

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_3e0
    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v19

    .line 2750
    .local v19, "config":Landroid/content/res/Configuration;
    if-eqz v19, :cond_3eb

    .line 2751
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2753
    :cond_3eb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v34

    .line 2754
    monitor-exit v4
    :try_end_3fa
    .catchall {:try_start_3c4 .. :try_end_3fa} :catchall_525

    .line 2757
    .end local v19    # "config":Landroid/content/res/Configuration;
    :cond_3fa
    if-nez v34, :cond_531

    .line 2764
    const/16 v26, 0x0

    .line 2765
    .local v26, "nextNext":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_528

    .line 2766
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNextActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 2774
    :goto_40c
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_41b

    .line 2776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2780
    :cond_41b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_42a

    .line 2781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2784
    :cond_42a
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2787
    const/4 v3, 0x1

    goto/16 :goto_2b

    .line 2588
    .end local v22    # "last":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v24    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v26    # "nextNext":Lcom/android/server/am/ActivityRecord;
    .end local v27    # "noAnim":Z
    .end local v34    # "updated":Z
    :cond_444
    :try_start_444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V
    :try_end_452
    .catch Ljava/lang/Exception; {:try_start_444 .. :try_end_452} :catch_454

    goto/16 :goto_268

    .line 2590
    :catch_454
    move-exception v3

    goto/16 :goto_268

    .line 2625
    .restart local v22    # "last":Lcom/android/server/am/ActivityRecord;
    :cond_457
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_2c7

    .line 2626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_2c7

    .line 2646
    :catch_46d
    move-exception v20

    .line 2647
    .local v20, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d7

    .line 2663
    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v27    # "noAnim":Z
    :cond_498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_4b0

    const/16 v3, 0x2007

    :goto_4aa
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_2f8

    :cond_4b0
    const/16 v3, 0x2009

    goto :goto_4aa

    .line 2672
    :cond_4b3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4ce

    .line 2673
    const/16 v27, 0x1

    .line 2674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_313

    .line 2677
    :cond_4ce
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_4e6

    const/16 v3, 0x1006

    :goto_4e0
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_313

    :cond_4e6
    const/16 v3, 0x1008

    goto :goto_4e0

    .line 2686
    :cond_4e9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_313

    .line 2689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50f

    .line 2690
    const/16 v27, 0x1

    .line 2691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_313

    .line 2694
    :cond_50f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x1006

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_313

    .line 2701
    :cond_51d
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_318

    .line 2747
    .restart local v23    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v24    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v34    # "updated":Z
    :cond_522
    const/4 v3, 0x0

    goto/16 :goto_3e0

    .line 2754
    :catchall_525
    move-exception v3

    :try_start_526
    monitor-exit v4
    :try_end_527
    .catchall {:try_start_526 .. :try_end_527} :catchall_525

    throw v3

    .line 2768
    .restart local v26    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_528
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    goto/16 :goto_40c

    .line 2792
    .end local v26    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_531
    :try_start_531
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2793
    .local v15, "a":Ljava/util/ArrayList;
    if-eqz v15, :cond_550

    .line 2794
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2795
    .local v14, "N":I
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_550

    if-lez v14, :cond_550

    .line 2799
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v15}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2803
    .end local v14    # "N":I
    :cond_550
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_567

    .line 2804
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 2807
    :cond_567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v3, :cond_597

    .line 2809
    new-instance v16, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTIVITY_STATE"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2810
    .local v16, "activityStateIntent":Landroid/content/Intent;
    const-string v3, "activityPackageName"

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2811
    const-string v3, "activityState"

    const-string v4, "resume"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.activitymanager.permission.GET_ACTIVITY_STATE"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2814
    .end local v16    # "activityStateIntent":Landroid/content/Intent;
    :cond_597
    const/16 v3, 0x7537

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2818
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2819
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2820
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2821
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 2824
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V
    :try_end_5f4
    .catch Ljava/lang/Exception; {:try_start_531 .. :try_end_5f4} :catch_620

    .line 2853
    const/4 v3, 0x1

    :try_start_5f5
    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2854
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_600
    .catch Ljava/lang/Exception; {:try_start_5f5 .. :try_end_600} :catch_69a

    .line 2863
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2884
    .end local v15    # "a":Ljava/util/ArrayList;
    .end local v23    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v24    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v34    # "updated":Z
    :goto_605
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_61d

    .line 2885
    if-nez p1, :cond_714

    if-eqz p3, :cond_714

    .line 2888
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusGain(Ljava/lang/String;)V

    .line 2896
    :cond_61d
    :goto_61d
    const/4 v3, 0x1

    goto/16 :goto_2b

    .line 2826
    .restart local v23    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v24    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v34    # "updated":Z
    :catch_620
    move-exception v20

    .line 2830
    .local v20, "e":Ljava/lang/Exception;
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2831
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2832
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_65e

    .line 2834
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2846
    :cond_652
    :goto_652
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2847
    const/4 v3, 0x1

    goto/16 :goto_2b

    .line 2836
    :cond_65e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_652

    .line 2837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_652

    .line 2855
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v15    # "a":Ljava/util/ArrayList;
    :catch_69a
    move-exception v20

    .line 2858
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2859
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "resume-exception"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2861
    const/4 v3, 0x1

    goto/16 :goto_2b

    .line 2867
    .end local v15    # "a":Ljava/util/ArrayList;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v23    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v24    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v34    # "updated":Z
    :cond_6c8
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_6de

    .line 2868
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2881
    :goto_6d3
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_605

    .line 2871
    :cond_6de
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_6d3

    .line 2889
    :cond_714
    if-eqz p1, :cond_61d

    if-eqz p3, :cond_61d

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eq v3, v4, :cond_61d

    .line 2890
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusLoss(Ljava/lang/String;)V

    .line 2891
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusGain(Ljava/lang/String;)V

    goto/16 :goto_61d

    .line 2645
    .end local v27    # "noAnim":Z
    :catch_732
    move-exception v3

    goto/16 :goto_2d7
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .registers 7
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdj"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 6254
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6255
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6256
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6257
    return-void
.end method

.method final scheduleIdleLocked()V
    .registers 3

    .prologue
    .line 5694
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5695
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5696
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5697
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "who"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 1372
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v4, :cond_6

    .line 1401
    :cond_5
    :goto_5
    return-object v3

    .line 1376
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1377
    .local v1, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 1378
    .local v2, "w":I
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 1379
    .local v0, "h":I
    if-gez v2, :cond_26

    .line 1380
    const v4, 0x1050002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 1382
    const v4, 0x1050001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 1386
    :cond_26
    if-lez v2, :cond_5

    .line 1387
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v4, :cond_40

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_40

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_4f

    .line 1390
    :cond_40
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    .line 1391
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 1394
    :cond_4f
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 1398
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_5
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 15
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .prologue
    .line 5077
    if-lez p1, :cond_d

    .line 5078
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p6, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 5085
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_32

    :cond_11
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_36

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_36

    .line 5087
    :try_start_1b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5088
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5090
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_31} :catch_40

    .line 5098
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_31
    return-void

    .line 5085
    :cond_32
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p2, :cond_11

    .line 5097
    :cond_36
    :goto_36
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_31

    .line 5092
    :catch_40
    move-exception v6

    .line 5093
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "winInfo"    # Landroid/os/Bundle;

    .prologue
    .line 5263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 5264
    :try_start_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v4

    .line 5265
    .local v4, "index":I
    if-gez v4, :cond_f

    .line 5266
    monitor-exit v16

    .line 5301
    :goto_e
    return-void

    .line 5268
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 5270
    .local v12, "r":Lcom/android/server/am/ActivityRecord;
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v5

    .line 5271
    .local v5, "mw":Lcom/android/server/am/MultiWindowManagerService;
    iget-object v15, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v15, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v15, v0}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v9

    .line 5272
    .local v9, "oldWinInfo":Landroid/os/Bundle;
    const-string v15, "android.intent.extra.STAY_RESUME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    const-string v17, "android.intent.extra.STAY_RESUME"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_b7

    const/4 v6, 0x1

    .line 5274
    .local v6, "needsResumeTop":Z
    :goto_46
    iget-object v15, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v15, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v5, v15, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 5276
    const-string v15, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 5277
    .local v7, "oldLastSize":Landroid/graphics/Rect;
    const-string v15, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 5279
    .local v8, "oldPrevSize":Landroid/graphics/Rect;
    const/4 v14, 0x0

    .line 5280
    .local v14, "winSizeChanged":Z
    if-eqz v8, :cond_91

    if-eqz v7, :cond_91

    .line 5281
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_b9

    const/4 v13, 0x1

    .line 5282
    .local v13, "widthdiff":Z
    :goto_7f
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_bb

    const/4 v3, 0x1

    .line 5283
    .local v3, "heightdiff":Z
    :goto_8c
    if-nez v13, :cond_90

    if-eqz v3, :cond_bd

    :cond_90
    const/4 v14, 0x1

    .line 5285
    .end local v3    # "heightdiff":Z
    .end local v13    # "widthdiff":Z
    :cond_91
    :goto_91
    if-eqz v14, :cond_bf

    .line 5286
    iget v15, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v12, v15, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 5292
    :goto_a2
    if-eqz v6, :cond_b1

    .line 5293
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a7
    .catchall {:try_start_7 .. :try_end_a7} :catchall_b4

    move-result-wide v10

    .line 5295
    .local v10, "origId":J
    const/4 v15, 0x0

    :try_start_a9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_ae
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_cf

    .line 5297
    :try_start_ae
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5300
    .end local v10    # "origId":J
    :cond_b1
    monitor-exit v16

    goto/16 :goto_e

    .end local v4    # "index":I
    .end local v5    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v6    # "needsResumeTop":Z
    .end local v7    # "oldLastSize":Landroid/graphics/Rect;
    .end local v8    # "oldPrevSize":Landroid/graphics/Rect;
    .end local v9    # "oldWinInfo":Landroid/os/Bundle;
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "winSizeChanged":Z
    :catchall_b4
    move-exception v15

    monitor-exit v16
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_b4

    throw v15

    .line 5272
    .restart local v4    # "index":I
    .restart local v5    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .restart local v9    # "oldWinInfo":Landroid/os/Bundle;
    .restart local v12    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_b7
    const/4 v6, 0x0

    goto :goto_46

    .line 5281
    .restart local v6    # "needsResumeTop":Z
    .restart local v7    # "oldLastSize":Landroid/graphics/Rect;
    .restart local v8    # "oldPrevSize":Landroid/graphics/Rect;
    .restart local v14    # "winSizeChanged":Z
    :cond_b9
    const/4 v13, 0x0

    goto :goto_7f

    .line 5282
    .restart local v13    # "widthdiff":Z
    :cond_bb
    const/4 v3, 0x0

    goto :goto_8c

    .line 5283
    .restart local v3    # "heightdiff":Z
    :cond_bd
    const/4 v14, 0x0

    goto :goto_91

    .line 5288
    .end local v3    # "heightdiff":Z
    .end local v13    # "widthdiff":Z
    :cond_bf
    :try_start_bf
    iget v15, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v12, v15, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    goto :goto_a2

    .line 5297
    .restart local v10    # "origId":J
    :catchall_cf
    move-exception v15

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
    :try_end_d4
    .catchall {:try_start_bf .. :try_end_d4} :catchall_b4
.end method

.method public setWindowMode(Landroid/os/IBinder;IZZ)V
    .registers 30
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowMode"    # I
    .param p3, "allInTask"    # Z
    .param p4, "bResume"    # Z

    .prologue
    .line 5110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 5111
    :try_start_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v9

    .line 5112
    .local v9, "index":I
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v11

    .line 5113
    .local v11, "mw":Lcom/android/server/am/MultiWindowManagerService;
    if-gez v9, :cond_13

    .line 5114
    monitor-exit v22

    .line 5199
    :goto_12
    return-void

    .line 5117
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 5118
    .local v17, "origId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActivityRecord;

    .line 5120
    .local v19, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v15

    .line 5121
    .local v15, "oldMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v12

    .line 5122
    .local v12, "newMode":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v16

    .line 5123
    .local v16, "oldZone":I
    invoke-static/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v13

    .line 5127
    .local v13, "newZone":I
    const/4 v7, 0x1

    .line 5128
    .local v7, "bUpdateWindowInfo":Z
    const/high16 v21, 0x2000000

    move/from16 v0, v21

    if-ne v15, v0, :cond_6d

    const/high16 v21, 0x2000000

    move/from16 v0, v21

    if-ne v12, v0, :cond_6d

    .line 5130
    if-nez v16, :cond_11b

    if-eqz v13, :cond_11b

    .line 5131
    new-instance v14, Landroid/content/Intent;

    const-string v21, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5133
    .local v14, "notifyFocusIntent":Landroid/content/Intent;
    const-string v21, "com.sec.android.extra.ARRAGE_TYPE"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5140
    .end local v14    # "notifyFocusIntent":Landroid/content/Intent;
    :cond_6d
    :goto_6d
    const/high16 v21, 0x1000000

    move/from16 v0, v21

    if-ne v12, v0, :cond_8d

    .line 5141
    const/high16 v21, 0x4c0000

    and-int p2, p2, v21

    .line 5142
    const/high16 v21, 0x1000000

    or-int p2, p2, v21

    .line 5143
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, -0x801

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    .line 5147
    :cond_8d
    if-eqz p3, :cond_122

    .line 5148
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 5154
    :goto_a2
    if-eqz v7, :cond_ab

    .line 5155
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5158
    :cond_ab
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 5161
    if-eqz p4, :cond_cf

    .line 5162
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5165
    if-eq v15, v12, :cond_cf

    .line 5166
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    .line 5170
    :cond_cf
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5171
    .local v10, "movedPinupAppTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 5172
    .local v5, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_df
    if-ge v8, v5, :cond_14e

    .line 5173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 5174
    .local v6, "ar":Lcom/android/server/am/ActivityRecord;
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    const/high16 v23, 0x800000

    and-int v21, v21, v23

    if-eqz v21, :cond_118

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    const/high16 v23, 0x100000

    and-int v21, v21, v23

    if-nez v21, :cond_118

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x4000

    move/from16 v21, v0

    if-nez v21, :cond_118

    .line 5177
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5172
    :cond_118
    add-int/lit8 v8, v8, 0x1

    goto :goto_df

    .line 5135
    .end local v5    # "N":I
    .end local v6    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "i":I
    .end local v10    # "movedPinupAppTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_11b
    if-nez v13, :cond_6d

    if-eqz v16, :cond_6d

    .line 5136
    const/4 v7, 0x0

    goto/16 :goto_6d

    .line 5150
    :cond_122
    move/from16 v0, p2

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V

    goto/16 :goto_a2

    .line 5198
    .end local v7    # "bUpdateWindowInfo":Z
    .end local v9    # "index":I
    .end local v11    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v12    # "newMode":I
    .end local v13    # "newZone":I
    .end local v15    # "oldMode":I
    .end local v16    # "oldZone":I
    .end local v17    # "origId":J
    .end local v19    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_14b
    move-exception v21

    monitor-exit v22
    :try_end_14d
    .catchall {:try_start_7 .. :try_end_14d} :catchall_14b

    throw v21

    .line 5180
    .restart local v5    # "N":I
    .restart local v7    # "bUpdateWindowInfo":Z
    .restart local v8    # "i":I
    .restart local v9    # "index":I
    .restart local v10    # "movedPinupAppTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v11    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .restart local v12    # "newMode":I
    .restart local v13    # "newZone":I
    .restart local v15    # "oldMode":I
    .restart local v16    # "oldZone":I
    .restart local v17    # "origId":J
    .restart local v19    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_14e
    :try_start_14e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_165

    .line 5181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 5184
    :cond_165
    const/high16 v21, 0x1000000

    move/from16 v0, v21

    if-ne v12, v0, :cond_186

    .line 5185
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v21

    if-nez v21, :cond_186

    .line 5186
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V

    .line 5191
    :cond_186
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1bf

    .line 5192
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v20

    .line 5193
    .local v20, "windowModeForRecent":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x800

    move/from16 v21, v0

    or-int v20, v20, v21

    .line 5194
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setWindowMode(I)V

    .line 5197
    .end local v20    # "windowModeForRecent":I
    :cond_1bf
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5198
    monitor-exit v22
    :try_end_1c3
    .catchall {:try_start_14e .. :try_end_1c3} :catchall_14b

    goto/16 :goto_12
.end method

.method final showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 937
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 938
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 939
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v1, v1, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v1, :cond_f

    const/4 p1, 0x0

    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_f
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 940
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 941
    return-void
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
    .line 4966
    if-nez p4, :cond_a

    .line 4967
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "intents is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4969
    :cond_a
    if-nez p5, :cond_14

    .line 4970
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "resolvedTypes is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4972
    :cond_14
    move-object/from16 v0, p4

    array-length v1, v0

    move-object/from16 v0, p5

    array-length v3, v0

    if-eq v1, v3, :cond_24

    .line 4973
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "intents are length different than resolvedTypes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4976
    :cond_24
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    .line 4979
    .local v17, "outActivity":[Lcom/android/server/am/ActivityRecord;
    if-ltz p2, :cond_49

    .line 4980
    const/4 v11, -0x1

    .line 4987
    .local v11, "callingPid":I
    :goto_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 4989
    .local v20, "origId":J
    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_6c

    .line 4991
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_39
    :try_start_39
    move-object/from16 v0, p4

    array-length v1, v0

    move/from16 v0, v18

    if-ge v0, v1, :cond_ee

    .line 4992
    aget-object v19, p4, v18
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_69

    .line 4993
    .local v19, "intent":Landroid/content/Intent;
    if-nez v19, :cond_59

    move-object/from16 v2, v19

    .line 4991
    .end local v19    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :goto_46
    add-int/lit8 v18, v18, 0x1

    goto :goto_39

    .line 4981
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v11    # "callingPid":I
    .end local v18    # "i":I
    .end local v20    # "origId":J
    :cond_49
    if-nez p1, :cond_54

    .line 4982
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 4983
    .restart local v11    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_2c

    .line 4985
    .end local v11    # "callingPid":I
    :cond_54
    const/16 p2, -0x1

    move/from16 v11, p2

    .restart local v11    # "callingPid":I
    goto :goto_2c

    .line 4998
    .restart local v18    # "i":I
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v20    # "origId":J
    :cond_59
    if-eqz v19, :cond_71

    :try_start_5b
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 4999
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5034
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

    .line 5036
    .end local v18    # "i":I
    :catchall_6c
    move-exception v1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 5002
    .restart local v18    # "i":I
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_71
    :try_start_71
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_b0

    const/16 v16, 0x1

    .line 5005
    .local v16, "componentSpecified":Z
    :goto_79
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5008
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    aget-object v3, p5, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 5011
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 5013
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_b3

    if-eqz v7, :cond_b3

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_b3

    .line 5015
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5002
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "componentSpecified":Z
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_b0
    const/16 v16, 0x0

    goto :goto_79

    .line 5020
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "componentSpecified":Z
    :cond_b3
    if-eqz p7, :cond_db

    move-object/from16 v0, p4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_db

    .line 5021
    move-object/from16 v15, p7

    .line 5025
    .local v15, "theseOptions":Landroid/os/Bundle;
    :goto_c0
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

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    .line 5028
    .local v22, "res":I
    if-gez v22, :cond_dd

    .line 5029
    monitor-exit v23
    :try_end_d7
    .catchall {:try_start_71 .. :try_end_d7} :catchall_69

    .line 5036
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5039
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "theseOptions":Landroid/os/Bundle;
    .end local v16    # "componentSpecified":Z
    .end local v22    # "res":I
    :goto_da
    return v22

    .line 5023
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "componentSpecified":Z
    :cond_db
    const/4 v15, 0x0

    .restart local v15    # "theseOptions":Landroid/os/Bundle;
    goto :goto_c0

    .line 5032
    .restart local v22    # "res":I
    :cond_dd
    const/4 v1, 0x0

    :try_start_de
    aget-object v1, v17, v1

    if-eqz v1, :cond_eb

    const/4 v1, 0x0

    aget-object v1, v17, v1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0

    :goto_e9
    goto/16 :goto_46

    :cond_eb
    const/16 p6, 0x0

    goto :goto_e9

    .line 5034
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "theseOptions":Landroid/os/Bundle;
    .end local v16    # "componentSpecified":Z
    .end local v22    # "res":I
    :cond_ee
    monitor-exit v23
    :try_end_ef
    .catchall {:try_start_de .. :try_end_ef} :catchall_69

    .line 5036
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5039
    const/16 v22, 0x0

    goto :goto_da
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .registers 86
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
    .line 3705
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, 0x10104000

    and-int/2addr v3, v4

    if-eqz v3, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowMode()I

    move-result v3

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x2000000

    if-ne v3, v4, :cond_21

    .line 3708
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x4001

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3712
    :cond_21
    const/16 v33, 0x0

    .line 3713
    .local v33, "cmp":Landroid/content/ComponentName;
    const-string v32, ""

    .line 3716
    .local v32, "className":Ljava/lang/String;
    :try_start_25
    new-instance v49, Landroid/content/Intent;

    move-object/from16 v0, v49

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3717
    .local v49, "mEdmIntent":Landroid/content/Intent;
    invoke-virtual/range {v49 .. v49}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v33

    .line 3718
    const-string v3, ":android:show_fragment"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3719
    if-nez v32, :cond_42

    if-eqz v33, :cond_42

    .line 3720
    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_41} :catch_199

    move-result-object v32

    .line 3727
    .end local v49    # "mEdmIntent":Landroid/content/Intent;
    :cond_42
    :goto_42
    const/16 v38, 0x0

    .line 3728
    .local v38, "err":I
    const/16 v17, 0x0

    .line 3730
    .local v17, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_62

    .line 3731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v17

    .line 3732
    if-eqz v17, :cond_19e

    .line 3733
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p8, v0

    .line 3734
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p9, v0

    .line 3747
    :cond_62
    :goto_62
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v52

    .line 3748
    .local v52, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v52

    invoke-direct {v3, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3751
    if-eqz v33, :cond_218

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_218

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_218

    .line 3753
    :try_start_8c
    const-string v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v62

    .line 3754
    .local v62, "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v62, :cond_d7

    const/4 v3, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_d7

    .line 3755
    const/16 v42, 0x0

    .line 3756
    .local v42, "isActivityAllowed":Z
    const-string v3, ":android:show_fragment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3757
    .local v30, "activity":Ljava/lang/String;
    if-nez v30, :cond_b1

    .line 3758
    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    .line 3760
    :cond_b1
    sget-object v31, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .local v31, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v47, v0

    .local v47, "len$":I
    const/16 v40, 0x0

    .local v40, "i$":I
    :goto_ba
    move/from16 v0, v40

    move/from16 v1, v47

    if-ge v0, v1, :cond_ce

    aget-object v39, v31, v40

    .line 3761
    .local v39, "exception":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d6

    .line 3762
    const/16 v42, 0x1

    .line 3766
    .end local v39    # "exception":Ljava/lang/String;
    :cond_ce
    if-eqz v42, :cond_1da

    .line 3767
    const/high16 v3, 0x800000

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_d7} :catch_212

    .line 3824
    .end local v30    # "activity":Ljava/lang/String;
    .end local v31    # "arr$":[Ljava/lang/String;
    .end local v40    # "i$":I
    .end local v42    # "isActivityAllowed":Z
    .end local v47    # "len$":I
    .end local v62    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :cond_d7
    :goto_d7
    if-eqz v33, :cond_338

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_338

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_338

    .line 3826
    :try_start_e5
    const-string v3, "password_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v59

    .line 3827
    .local v59, "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    const-string v3, "security_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;

    move-result-object v63

    .line 3828
    .local v63, "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    if-eqz v59, :cond_104

    const/4 v3, 0x0

    move-object/from16 v0, v59

    invoke-interface {v0, v3}, Landroid/app/enterprise/IPasswordPolicy;->isChangeRequestedEx(I)I

    move-result v3

    if-gtz v3, :cond_10c

    :cond_104
    if-eqz v63, :cond_2ff

    invoke-interface/range {v63 .. v63}, Landroid/app/enterprise/ISecurityPolicy;->isDodBannerVisible()Z

    move-result v3

    if-eqz v3, :cond_2ff

    .line 3830
    :cond_10c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v48

    .line 3831
    .local v48, "list":Ljava/util/List;
    if-eqz v48, :cond_2ff

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2ff

    .line 3832
    const/4 v3, 0x0

    move-object/from16 v0, v48

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v66

    .line 3833
    .local v66, "topActivity":Ljava/lang/String;
    const/16 v42, 0x0

    .line 3834
    .restart local v42    # "isActivityAllowed":Z
    const/16 v43, 0x0

    .line 3835
    .local v43, "isTopActivityException":Z
    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    .line 3836
    .restart local v30    # "activity":Ljava/lang/String;
    sget-object v31, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .restart local v31    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v47, v0

    .restart local v47    # "len$":I
    const/16 v40, 0x0

    .restart local v40    # "i$":I
    :goto_13f
    move/from16 v0, v40

    move/from16 v1, v47

    if-ge v0, v1, :cond_163

    aget-object v39, v31, v40

    .line 3837
    .restart local v39    # "exception":Ljava/lang/String;
    if-eqz v66, :cond_155

    move-object/from16 v0, v66

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_155

    .line 3838
    const/16 v43, 0x1

    .line 3840
    :cond_155
    if-eqz v30, :cond_2f7

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f7

    .line 3841
    const/16 v42, 0x1

    .line 3845
    .end local v39    # "exception":Ljava/lang/String;
    :cond_163
    if-eqz v43, :cond_2ff

    if-nez v42, :cond_2ff

    .line 3846
    invoke-static/range {v52 .. v52}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3848
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed. Blocked due to password change enforcement."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_197} :catch_2fb

    .line 3852
    const/4 v3, 0x0

    .line 4240
    .end local v30    # "activity":Ljava/lang/String;
    .end local v31    # "arr$":[Ljava/lang/String;
    .end local v40    # "i$":I
    .end local v42    # "isActivityAllowed":Z
    .end local v43    # "isTopActivityException":Z
    .end local v47    # "len$":I
    .end local v48    # "list":Ljava/util/List;
    .end local v59    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v63    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v66    # "topActivity":Ljava/lang/String;
    :goto_198
    return v3

    .line 3722
    .end local v17    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "err":I
    .end local v52    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catch_199
    move-exception v37

    .line 3723
    .local v37, "e":Ljava/lang/Exception;
    const-string v32, "unknown"

    goto/16 :goto_42

    .line 3736
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v17    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "err":I
    :cond_19e
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (pid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") when starting: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    const/16 v38, -0x4

    goto/16 :goto_62

    .line 3760
    .restart local v30    # "activity":Ljava/lang/String;
    .restart local v31    # "arr$":[Ljava/lang/String;
    .restart local v39    # "exception":Ljava/lang/String;
    .restart local v40    # "i$":I
    .restart local v42    # "isActivityAllowed":Z
    .restart local v47    # "len$":I
    .restart local v52    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v62    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :cond_1d6
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_ba

    .line 3769
    .end local v39    # "exception":Ljava/lang/String;
    :cond_1da
    const/4 v3, 0x1

    :try_start_1db
    move-object/from16 v0, v62

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    .line 3770
    invoke-static/range {v52 .. v52}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3772
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed. Blocked due to settings changes not allowed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_210} :catch_212

    .line 3776
    const/4 v3, 0x0

    goto :goto_198

    .line 3779
    .end local v30    # "activity":Ljava/lang/String;
    .end local v31    # "arr$":[Ljava/lang/String;
    .end local v40    # "i$":I
    .end local v42    # "isActivityAllowed":Z
    .end local v47    # "len$":I
    .end local v62    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_212
    move-exception v37

    .line 3780
    .restart local v37    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d7

    .line 3783
    .end local v37    # "e":Ljava/lang/Exception;
    :cond_218
    if-eqz v33, :cond_27e

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27e

    sget-object v3, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27e

    .line 3786
    :try_start_22c
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v44

    .line 3788
    .local v44, "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v44, :cond_d7

    const/4 v3, 0x1

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Landroid/app/enterprise/kioskmode/IKioskMode;->isTaskManagerAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_d7

    .line 3789
    invoke-static/range {v52 .. v52}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3791
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed. Task manager is not allowed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_271} :catch_274

    .line 3795
    const/4 v3, 0x0

    goto/16 :goto_198

    .line 3797
    .end local v44    # "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    :catch_274
    move-exception v37

    .line 3798
    .restart local v37    # "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v4, "Is edm running?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d7

    .line 3803
    .end local v37    # "e":Ljava/lang/Exception;
    :cond_27e
    if-eqz v33, :cond_d7

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d7

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.vlingo.midas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 3805
    :try_start_292
    const-string v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v62

    .line 3806
    .restart local v62    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v62, :cond_d7

    const/4 v3, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_2b0

    const/4 v3, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_d7

    .line 3807
    :cond_2b0
    const-string v3, ":android:show_fragment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3808
    .restart local v30    # "activity":Ljava/lang/String;
    if-nez v30, :cond_2be

    .line 3809
    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    .line 3811
    :cond_2be
    invoke-static/range {v52 .. v52}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3813
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed. Blocked due to S Voice not allowed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_2ee} :catch_2f1

    .line 3817
    const/4 v3, 0x0

    goto/16 :goto_198

    .line 3819
    .end local v30    # "activity":Ljava/lang/String;
    .end local v62    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_2f1
    move-exception v37

    .line 3820
    .restart local v37    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d7

    .line 3836
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v30    # "activity":Ljava/lang/String;
    .restart local v31    # "arr$":[Ljava/lang/String;
    .restart local v39    # "exception":Ljava/lang/String;
    .restart local v40    # "i$":I
    .restart local v42    # "isActivityAllowed":Z
    .restart local v43    # "isTopActivityException":Z
    .restart local v47    # "len$":I
    .restart local v48    # "list":Ljava/util/List;
    .restart local v59    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .restart local v63    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .restart local v66    # "topActivity":Ljava/lang/String;
    :cond_2f7
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_13f

    .line 3856
    .end local v30    # "activity":Ljava/lang/String;
    .end local v31    # "arr$":[Ljava/lang/String;
    .end local v39    # "exception":Ljava/lang/String;
    .end local v40    # "i$":I
    .end local v42    # "isActivityAllowed":Z
    .end local v43    # "isTopActivityException":Z
    .end local v47    # "len$":I
    .end local v48    # "list":Ljava/util/List;
    .end local v59    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v63    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v66    # "topActivity":Ljava/lang/String;
    :catch_2fb
    move-exception v37

    .line 3857
    .restart local v37    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->printStackTrace()V

    .line 3862
    .end local v37    # "e":Ljava/lang/Exception;
    :cond_2ff
    :try_start_2ff
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v3

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_338

    .line 3864
    const-string v3, "ActivityStack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    invoke-static/range {v52 .. v52}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_331
    .catch Ljava/lang/Exception; {:try_start_2ff .. :try_end_331} :catch_334

    .line 3866
    const/4 v3, 0x0

    goto/16 :goto_198

    .line 3868
    :catch_334
    move-exception v37

    .line 3869
    .restart local v37    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->printStackTrace()V

    .line 3872
    .end local v37    # "e":Ljava/lang/Exception;
    :cond_338
    invoke-static/range {v52 .. v52}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3875
    if-nez v38, :cond_398

    .line 3876
    if-eqz p4, :cond_41e

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v67

    .line 3877
    .local v67, "userId":I
    :goto_349
    const-string v4, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "START u"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " {"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "} from pid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v17, :cond_422

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_37c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    const-string v3, "qcom"

    sget-object v4, Lcom/android/server/am/ActivityStack;->hardwareInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_398

    .line 3881
    sget-object v3, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/app/ActivityTrigger;->activityStartTrigger(Landroid/content/Intent;)V

    .line 3888
    .end local v67    # "userId":I
    :cond_398
    const/16 v58, 0x0

    .line 3889
    .local v58, "pkgName":Ljava/lang/String;
    if-eqz v33, :cond_3a0

    .line 3890
    :try_start_39c
    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v58

    .line 3892
    :cond_3a0
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_426

    const-string v3, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_426

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_426

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_426

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_426

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_426

    const/4 v3, 0x1

    :goto_3d7
    if-nez v3, :cond_428

    .line 3898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v3, v4, v6, v7, v0}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V
    :try_end_3e5
    .catch Ljava/lang/Exception; {:try_start_39c .. :try_end_3e5} :catch_435

    .line 3907
    :goto_3e5
    const/16 v64, 0x0

    .line 3908
    .local v64, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v5, 0x0

    .line 3909
    .local v5, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p5, :cond_40a

    .line 3910
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v41

    .line 3913
    .local v41, "index":I
    if-ltz v41, :cond_40a

    .line 3914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    .end local v64    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    check-cast v64, Lcom/android/server/am/ActivityRecord;

    .line 3915
    .restart local v64    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    if-ltz p7, :cond_40a

    move-object/from16 v0, v64

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_40a

    .line 3916
    move-object/from16 v5, v64

    .line 3921
    .end local v41    # "index":I
    :cond_40a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v46

    .line 3923
    .local v46, "launchFlags":I
    const/high16 v3, 0x2000000

    and-int v3, v3, v46

    if-eqz v3, :cond_457

    if-eqz v64, :cond_457

    .line 3927
    if-ltz p7, :cond_437

    .line 3928
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3929
    const/4 v3, -0x3

    goto/16 :goto_198

    .line 3876
    .end local v5    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v46    # "launchFlags":I
    .end local v58    # "pkgName":Ljava/lang/String;
    .end local v64    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_41e
    const/16 v67, 0x0

    goto/16 :goto_349

    .restart local v67    # "userId":I
    :cond_422
    move/from16 v3, p8

    .line 3877
    goto/16 :goto_37c

    .line 3892
    .end local v67    # "userId":I
    .restart local v58    # "pkgName":Ljava/lang/String;
    :cond_426
    const/4 v3, 0x0

    goto :goto_3d7

    .line 3900
    :cond_428
    :try_start_428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v58

    invoke-virtual {v3, v4, v6, v7, v0}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V
    :try_end_434
    .catch Ljava/lang/Exception; {:try_start_428 .. :try_end_434} :catch_435

    goto :goto_3e5

    .line 3902
    :catch_435
    move-exception v3

    goto :goto_3e5

    .line 3931
    .restart local v5    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v46    # "launchFlags":I
    .restart local v64    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_437
    move-object/from16 v0, v64

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3932
    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p6, v0

    .line 3933
    move-object/from16 v0, v64

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p7, v0

    .line 3934
    const/4 v3, 0x0

    move-object/from16 v0, v64

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3935
    if-eqz v5, :cond_457

    .line 3936
    move-object/from16 v0, v64

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 3941
    :cond_457
    if-nez v38, :cond_461

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_461

    .line 3944
    const/16 v38, -0x1

    .line 3947
    :cond_461
    if-nez v38, :cond_467

    if-nez p4, :cond_467

    .line 3950
    const/16 v38, -0x2

    .line 3953
    :cond_467
    if-eqz v38, :cond_4b0

    .line 3954
    if-eqz v5, :cond_477

    .line 3955
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3959
    :cond_477
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3960
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3962
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v38

    .line 3965
    goto/16 :goto_198

    .line 3967
    :cond_4b0
    const/4 v13, 0x0

    .line 3968
    .local v13, "allowLaunchIntent":Z
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a3

    const-string v3, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a3

    const/4 v3, 0x1

    :goto_4c8
    if-eqz v3, :cond_4cb

    .line 3970
    const/4 v13, 0x1

    .line 3973
    :cond_4cb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v65

    .line 3975
    .local v65, "startAnyPerm":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-boolean v12, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v34

    .line 3977
    .local v34, "componentPerm":I
    if-eqz v65, :cond_5f7

    if-eqz v34, :cond_5f7

    .line 3978
    if-eqz v5, :cond_50b

    .line 3979
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3983
    :cond_50b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3985
    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_5a6

    .line 3986
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not exported from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 3996
    .local v50, "msg":Ljava/lang/String;
    :goto_567
    const-string v3, "ActivityManager"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 4001
    new-instance v3, Ljava/lang/SecurityException;

    move-object/from16 v0, v50

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3968
    .end local v34    # "componentPerm":I
    .end local v50    # "msg":Ljava/lang/String;
    .end local v65    # "startAnyPerm":I
    :cond_5a3
    const/4 v3, 0x0

    goto/16 :goto_4c8

    .line 3991
    .restart local v34    # "componentPerm":I
    .restart local v65    # "startAnyPerm":I
    :cond_5a6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .restart local v50    # "msg":Ljava/lang/String;
    goto/16 :goto_567

    .line 4004
    .end local v50    # "msg":Ljava/lang/String;
    :cond_5f7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    if-nez v17, :cond_683

    const/4 v8, 0x0

    :goto_600
    move-object/from16 v7, p2

    move/from16 v9, p9

    move/from16 v10, p8

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;IILjava/lang/String;Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_689

    const/16 v29, 0x1

    .line 4007
    .local v29, "abort":Z
    :goto_612
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_63b

    .line 4008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v3, :cond_63b

    .line 4012
    :try_start_620
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v68

    .line 4013
    .local v68, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v68

    invoke-interface {v3, v0, v4}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_635
    .catch Landroid/os/RemoteException; {:try_start_620 .. :try_end_635} :catch_68e

    move-result v3

    if-nez v3, :cond_68c

    const/4 v3, 0x1

    :goto_639
    or-int v29, v29, v3

    .line 4022
    .end local v68    # "watchIntent":Landroid/content/Intent;
    :cond_63b
    :goto_63b
    if-eqz v29, :cond_697

    .line 4023
    if-eqz v5, :cond_64b

    .line 4024
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4030
    :cond_64b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 4031
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4033
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " succeeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 4036
    const/4 v3, 0x0

    goto/16 :goto_198

    .line 4004
    .end local v29    # "abort":Z
    :cond_683
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto/16 :goto_600

    :cond_689
    const/16 v29, 0x0

    goto :goto_612

    .line 4013
    .restart local v29    # "abort":Z
    .restart local v68    # "watchIntent":Landroid/content/Intent;
    :cond_68c
    const/4 v3, 0x0

    goto :goto_639

    .line 4015
    .end local v68    # "watchIntent":Landroid/content/Intent;
    :catch_68e
    move-exception v37

    .line 4016
    .local v37, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_63b

    .line 4043
    .end local v37    # "e":Landroid/os/RemoteException;
    :cond_697
    const/16 v55, 0x0

    .line 4044
    .local v55, "parentActivityRecord":Lcom/android/server/am/ActivityRecord;
    const/16 v35, 0x0

    .line 4047
    .local v35, "curTop":Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v35

    .line 4048
    if-eqz v35, :cond_837

    move-object/from16 v0, v35

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_837

    .line 4049
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_6b5

    const-string v3, "ActivityManager"

    const-string v4, "Setting parentActivityRecord from HomeActivity"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4050
    :cond_6b5
    move-object/from16 v55, v35

    .line 4063
    :cond_6b7
    :goto_6b7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowMode()I

    move-result v28

    .line 4064
    .local v28, "windowMode":I
    if-nez v28, :cond_703

    .line 4065
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 4066
    .local v14, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v55, :cond_875

    move-object/from16 v0, v55

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_875

    .line 4068
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-eqz v3, :cond_703

    .line 4069
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v28

    .line 4070
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x800

    or-int v28, v28, v3

    .line 4071
    if-eqz v14, :cond_703

    iget-boolean v3, v14, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_703

    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v3

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v4}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v4

    if-eq v3, v4, :cond_703

    .line 4073
    const/high16 v3, 0x20000

    or-int v28, v28, v3

    .line 4088
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_703
    :goto_703
    invoke-static/range {v28 .. v28}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    if-nez v3, :cond_70b

    .line 4089
    const/high16 v28, 0x1000000

    .line 4092
    :cond_70b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/am/CompatModePackages;->getPackageScreenCompatModeLocked(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_71e

    .line 4093
    const/high16 v28, 0x1000000

    .line 4096
    :cond_71e
    const/high16 v3, 0x2000000

    and-int v3, v3, v28

    if-eqz v3, :cond_763

    .line 4097
    if-eqz v55, :cond_763

    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_763

    .line 4098
    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x800

    move/from16 v28, v0

    .line 4099
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v56

    .line 4100
    .local v56, "parentWindowInfo":Landroid/os/Bundle;
    if-eqz v56, :cond_763

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_763

    .line 4101
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v57

    check-cast v57, Landroid/graphics/Rect;

    .line 4102
    .local v57, "parentWindowLastSize":Landroid/graphics/Rect;
    if-eqz v57, :cond_763

    .line 4103
    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setWindowPosition(Landroid/graphics/Rect;)V

    .line 4110
    .end local v56    # "parentWindowInfo":Landroid/os/Bundle;
    .end local v57    # "parentWindowLastSize":Landroid/graphics/Rect;
    :cond_763
    new-instance v14, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v23, v0

    move-object/from16 v16, p0

    move/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v24, v5

    move-object/from16 v25, p6

    move/from16 v26, p7

    move/from16 v27, p13

    invoke-direct/range {v14 .. v28}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZI)V

    .line 4115
    .restart local v14    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p14, :cond_78d

    .line 4116
    const/4 v3, 0x0

    aput-object v14, p14, v3

    .line 4119
    :cond_78d
    if-nez v55, :cond_791

    .line 4120
    move-object/from16 v55, v35

    .line 4123
    :cond_791
    if-eqz v55, :cond_7ef

    .line 4124
    const-string v3, "android"

    iget-object v4, v14, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b1

    .line 4125
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4126
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x400000

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    iput v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4129
    :cond_7b1
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x2000000

    if-ne v3, v4, :cond_7ef

    .line 4130
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v51

    .line 4131
    .local v51, "mw":Lcom/android/server/am/MultiWindowManagerService;
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zonePolicy(I)I

    move-result v70

    .line 4132
    .local v70, "zonePolicy":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7d9

    .line 4133
    if-nez v70, :cond_7d9

    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_7d9

    .line 4135
    const/16 v70, 0x1

    .line 4139
    :cond_7d9
    const/4 v3, 0x1

    move/from16 v0, v70

    if-ne v0, v3, :cond_8e0

    .line 4140
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_8a1

    .line 4142
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    iput v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4163
    .end local v51    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v70    # "zonePolicy":I
    :cond_7ef
    :goto_7ef
    if-eqz v64, :cond_804

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMultiWindowLaunch(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_804

    .line 4164
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v3, v0, v14}, Lcom/android/server/am/MultiWindowManagerService;->applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 4167
    :cond_804
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_987

    .line 4170
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v60

    .line 4171
    .local v60, "resumedActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {v60 .. v60}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_901

    const/16 v36, 0x1

    .line 4172
    .local v36, "doPending":Z
    :goto_816
    if-nez v36, :cond_905

    .line 4173
    invoke-interface/range {v60 .. v60}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .local v40, "i$":Ljava/util/Iterator;
    :cond_81c
    :goto_81c
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_905

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/server/am/ActivityRecord;

    .line 4174
    .local v61, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v61

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p9

    if-eq v3, v0, :cond_81c

    .line 4175
    const/16 v36, 0x1

    goto :goto_81c

    .line 4052
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v28    # "windowMode":I
    .end local v36    # "doPending":Z
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v60    # "resumedActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v61    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_837
    if-eqz v64, :cond_848

    .line 4053
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_844

    const-string v3, "ActivityManager"

    const-string v4, "Setting parentActivityRecord from sourceRecord"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    :cond_844
    move-object/from16 v55, v64

    goto/16 :goto_6b7

    .line 4055
    :cond_848
    if-eqz v17, :cond_6b7

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6b7

    .line 4057
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_85f

    const-string v3, "ActivityManager"

    const-string v4, "Setting parentActivityRecord from callerApp"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    :cond_85f
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    .end local v55    # "parentActivityRecord":Lcom/android/server/am/ActivityRecord;
    check-cast v55, Lcom/android/server/am/ActivityRecord;

    .restart local v55    # "parentActivityRecord":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_6b7

    .line 4077
    .restart local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "windowMode":I
    :cond_875
    if-eqz v14, :cond_703

    iget-boolean v3, v14, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_703

    .line 4078
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-nez v3, :cond_703

    .line 4079
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x4001

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4080
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v28

    .line 4081
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x800

    or-int v28, v28, v3

    .line 4082
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    or-int v28, v28, v3

    goto/16 :goto_703

    .line 4145
    .restart local v51    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .restart local v70    # "zonePolicy":I
    :cond_8a1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v53

    .line 4146
    .local v53, "overridePosition":Landroid/graphics/Rect;
    if-eqz v53, :cond_8ad

    invoke-virtual/range {v53 .. v53}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7ef

    .line 4147
    :cond_8ad
    move-object/from16 v0, v55

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v69

    .line 4148
    .local v69, "winInfo":Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v69

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v45

    check-cast v45, Landroid/graphics/Rect;

    .line 4149
    .local v45, "lastSize":Landroid/graphics/Rect;
    if-nez v45, :cond_8d5

    .line 4150
    const-string v3, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v69

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v45

    .end local v45    # "lastSize":Landroid/graphics/Rect;
    check-cast v45, Landroid/graphics/Rect;

    .line 4152
    .restart local v45    # "lastSize":Landroid/graphics/Rect;
    :cond_8d5
    const-string v3, "android.intent.extra.WINDOW_POSITION"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_7ef

    .line 4155
    .end local v45    # "lastSize":Landroid/graphics/Rect;
    .end local v53    # "overridePosition":Landroid/graphics/Rect;
    .end local v69    # "winInfo":Landroid/os/Bundle;
    :cond_8e0
    const/4 v3, 0x2

    move/from16 v0, v70

    if-ne v0, v3, :cond_7ef

    .line 4156
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_7ef

    .line 4157
    iget v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_7ef

    .line 4171
    .end local v51    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v70    # "zonePolicy":I
    .restart local v60    # "resumedActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_901
    const/16 v36, 0x0

    goto/16 :goto_816

    .line 4181
    .restart local v36    # "doPending":Z
    :cond_905
    if-eqz v36, :cond_96f

    .line 4183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "Activity start"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_96f

    .line 4184
    new-instance v54, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    invoke-direct/range {v54 .. v54}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>()V

    .line 4185
    .local v54, "pal":Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    move-object/from16 v0, v54

    iput-object v14, v0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 4186
    move-object/from16 v0, v64

    move-object/from16 v1, v54

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 4187
    move/from16 v0, p11

    move-object/from16 v1, v54

    iput v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->startFlags:I

    .line 4188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4189
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 4190
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4192
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 4195
    const/4 v3, 0x4

    goto/16 :goto_198

    .line 4199
    .end local v54    # "pal":Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    :cond_96f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v3, :cond_9fb

    .line 4205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 4210
    :goto_97f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 4213
    .end local v36    # "doPending":Z
    .end local v60    # "resumedActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_987
    const/4 v10, 0x1

    move-object/from16 v6, p0

    move-object v7, v14

    move-object/from16 v8, v64

    move/from16 v9, p11

    move-object/from16 v11, p12

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I

    move-result v38

    .line 4217
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v3, :cond_9c8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_a04

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9c8

    .line 4224
    :goto_9ab
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v66

    .line 4225
    .local v66, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v66, :cond_9c8

    move-object/from16 v0, v66

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_9c8

    .line 4226
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 4227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 4232
    .end local v66    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_9c8
    if-ltz v38, :cond_a0b

    .line 4233
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " succeeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_9f7
    move/from16 v3, v38

    .line 4240
    goto/16 :goto_198

    .line 4207
    .restart local v36    # "doPending":Z
    .restart local v60    # "resumedActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_9fb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto/16 :goto_97f

    .line 4217
    .end local v36    # "doPending":Z
    .end local v60    # "resumedActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_a04
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_9c8

    goto :goto_9ab

    .line 4236
    :cond_a0b
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9f7
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
    .line 4810
    if-eqz p4, :cond_10

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4811
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4813
    :cond_10
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1f1

    const/16 v21, 0x1

    .line 4816
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

    .line 4819
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v23

    .line 4822
    .local v23, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 4824
    if-ltz p2, :cond_1f5

    .line 4825
    const/16 v16, -0x1

    .line 4833
    .local v16, "callingPid":I
    :goto_3a
    if-eqz p13, :cond_207

    :try_start_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_207

    const/4 v2, 0x1

    :goto_4b
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 4838
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 4840
    .local v28, "origId":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_2c6

    if-eqz v23, :cond_2c6

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_2c6

    .line 4844
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c6

    .line 4845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2c6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c6

    .line 4848
    :cond_a2
    move/from16 v32, v16

    .line 4849
    .local v32, "realCallingPid":I
    move/from16 v7, p2

    .line 4850
    .local v7, "realCallingUid":I
    if-eqz p1, :cond_c0

    .line 4851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v24

    .line 4852
    .local v24, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v24, :cond_20a

    .line 4853
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v32, v0

    .line 4854
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4864
    .end local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_c0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

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

    .line 4870
    .local v34, "target":Landroid/content/IIntentSender;
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 4871
    .local v27, "newIntent":Landroid/content/Intent;
    if-ltz p8, :cond_ee

    .line 4873
    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4875
    :cond_ee
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_131

    .line 4878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ActivityRecord;

    .line 4879
    .local v26, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4881
    const-string v2, "cur_task"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4884
    .end local v26    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_131
    const-string v2, "new_app"

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4886
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4887
    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_152
    .catchall {:try_start_3c .. :try_end_152} :catchall_2b5

    .line 4889
    move-object/from16 p4, v27

    .line 4890
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 4891
    const/16 p1, 0x0

    .line 4892
    :try_start_158
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 4893
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_15f
    .catchall {:try_start_158 .. :try_end_15f} :catchall_2bb

    move-result v16

    .line 4894
    const/16 v21, 0x1

    .line 4896
    :try_start_162
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10400

    move-object/from16 v0, p4

    move/from16 v1, p15

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v31

    .line 4901
    .local v31, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v31, :cond_249

    move-object/from16 v0, v31

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_178
    .catch Landroid/os/RemoteException; {:try_start_162 .. :try_end_178} :catch_24c
    .catchall {:try_start_162 .. :try_end_178} :catchall_2bb

    .line 4902
    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_178
    :try_start_178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p15

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_181
    .catch Landroid/os/RemoteException; {:try_start_178 .. :try_end_181} :catch_2c4
    .catchall {:try_start_178 .. :try_end_181} :catchall_28c

    move-result-object v12

    .line 4910
    .end local v7    # "realCallingUid":I
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v32    # "realCallingPid":I
    .end local v34    # "target":Landroid/content/IIntentSender;
    :goto_182
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

    :try_start_19a
    invoke-virtual/range {v8 .. v22}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v33

    .line 4914
    .local v33, "res":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_1c6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_1c6

    .line 4919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4921
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 4924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p13

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 4927
    :cond_1c6
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4929
    if-eqz p12, :cond_1ef

    .line 4930
    move/from16 v0, v33

    move-object/from16 v1, p12

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 4931
    if-nez v33, :cond_252

    .line 4932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1dc
    .catchall {:try_start_19a .. :try_end_1dc} :catchall_28c

    .line 4935
    :cond_1dc
    :try_start_1dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1e3
    .catch Ljava/lang/InterruptedException; {:try_start_1dc .. :try_end_1e3} :catch_2c1
    .catchall {:try_start_1dc .. :try_end_1e3} :catchall_28c

    .line 4938
    :goto_1e3
    :try_start_1e3
    move-object/from16 v0, p12

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_1ef

    move-object/from16 v0, p12

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_1dc

    .line 4959
    :cond_1ef
    :goto_1ef
    monitor-exit v35
    :try_end_1f0
    .catchall {:try_start_1e3 .. :try_end_1f0} :catchall_28c

    .end local v33    # "res":I
    :goto_1f0
    return v33

    .line 4813
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "callingPid":I
    .end local v21    # "componentSpecified":Z
    .end local v28    # "origId":J
    :cond_1f1
    const/16 v21, 0x0

    goto/16 :goto_18

    .line 4826
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v21    # "componentSpecified":Z
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_1f5
    if-nez p1, :cond_201

    .line 4827
    :try_start_1f7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 4828
    .restart local v16    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto/16 :goto_3a

    .line 4830
    .end local v16    # "callingPid":I
    :cond_201
    const/16 p2, -0x1

    move/from16 v16, p2

    .restart local v16    # "callingPid":I
    goto/16 :goto_3a

    .line 4833
    :cond_207
    const/4 v2, 0x0

    goto/16 :goto_4b

    .line 4856
    .restart local v7    # "realCallingUid":I
    .restart local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "origId":J
    .restart local v32    # "realCallingPid":I
    :cond_20a
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

    move/from16 v0, v32

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

    .line 4859
    invoke-static/range {p14 .. p14}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4860
    const/16 v33, -0x4

    monitor-exit v35
    :try_end_244
    .catchall {:try_start_1f7 .. :try_end_244} :catchall_2b5

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_1f0

    .line 4901
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :cond_249
    const/4 v12, 0x0

    goto/16 :goto_178

    .line 4903
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_24c
    move-exception v25

    move-object/from16 v12, v23

    .line 4904
    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v25, "e":Landroid/os/RemoteException;
    :goto_24f
    const/4 v12, 0x0

    goto/16 :goto_182

    .line 4939
    .end local v7    # "realCallingUid":I
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v32    # "realCallingPid":I
    .end local v34    # "target":Landroid/content/IIntentSender;
    .restart local v33    # "res":I
    :cond_252
    const/4 v2, 0x2

    move/from16 v0, v33

    if-ne v0, v2, :cond_1ef

    .line 4940
    const/4 v2, 0x0

    :try_start_258
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v30

    .line 4941
    .local v30, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v30

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_28f

    .line 4942
    const/4 v2, 0x0

    move-object/from16 v0, p12

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 4943
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

    .line 4944
    const-wide/16 v4, 0x0

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 4945
    const-wide/16 v4, 0x0

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_1ef

    .line 4960
    .end local v16    # "callingPid":I
    .end local v28    # "origId":J
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v33    # "res":I
    :catchall_28c
    move-exception v2

    :goto_28d
    monitor-exit v35
    :try_end_28e
    .catchall {:try_start_258 .. :try_end_28e} :catchall_28c

    throw v2

    .line 4947
    .restart local v16    # "callingPid":I
    .restart local v28    # "origId":J
    .restart local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v33    # "res":I
    :cond_28f
    :try_start_28f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 4948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a0
    .catchall {:try_start_28f .. :try_end_2a0} :catchall_28c

    .line 4951
    :cond_2a0
    :try_start_2a0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2a7
    .catch Ljava/lang/InterruptedException; {:try_start_2a0 .. :try_end_2a7} :catch_2bf
    .catchall {:try_start_2a0 .. :try_end_2a7} :catchall_28c

    .line 4954
    :goto_2a7
    :try_start_2a7
    move-object/from16 v0, p12

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_1ef

    move-object/from16 v0, p12

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_2b1
    .catchall {:try_start_2a7 .. :try_end_2b1} :catchall_28c

    if-eqz v2, :cond_2a0

    goto/16 :goto_1ef

    .line 4960
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "callingPid":I
    .end local v28    # "origId":J
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v33    # "res":I
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_2b5
    move-exception v2

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_28d

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "realCallingUid":I
    .restart local v16    # "callingPid":I
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v28    # "origId":J
    .restart local v32    # "realCallingPid":I
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :catchall_2bb
    move-exception v2

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_28d

    .line 4952
    .end local v7    # "realCallingUid":I
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v32    # "realCallingPid":I
    .end local v34    # "target":Landroid/content/IIntentSender;
    .restart local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v33    # "res":I
    :catch_2bf
    move-exception v2

    goto :goto_2a7

    .line 4936
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_2c1
    move-exception v2

    goto/16 :goto_1e3

    .line 4903
    .end local v33    # "res":I
    .restart local v7    # "realCallingUid":I
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v32    # "realCallingPid":I
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :catch_2c4
    move-exception v25

    goto :goto_24f

    .end local v7    # "realCallingUid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v32    # "realCallingPid":I
    .end local v34    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_2c6
    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_182
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    .registers 36
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "startFlags"    # I
    .param p4, "doResume"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4330
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_f

    .line 4331
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/MultiWindowManagerService;->applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;)V

    .line 4333
    :cond_f
    if-eqz p2, :cond_19

    .line 4334
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    .line 4338
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    .line 4339
    .local v20, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 4341
    .local v15, "callingUid":I
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getFlags()I

    move-result v21

    .line 4345
    .local v21, "launchFlags":I
    const/high16 v3, 0x40000

    and-int v3, v3, v21

    if-nez v3, :cond_183

    const/4 v3, 0x1

    :goto_2e
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 4352
    if-nez p4, :cond_39

    .line 4353
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 4356
    :cond_39
    const/high16 v3, 0x1000000

    and-int v3, v3, v21

    if-eqz v3, :cond_186

    move-object/from16 v23, p1

    .line 4363
    .local v23, "notTop":Lcom/android/server/am/ActivityRecord;
    :goto_41
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_61

    .line 4364
    move-object/from16 v16, p2

    .line 4365
    .local v16, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v16, :cond_51

    .line 4366
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 4368
    :cond_51
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 4370
    and-int/lit8 p3, p3, -0x2

    .line 4374
    .end local v16    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_61
    if-nez p2, :cond_18a

    .line 4377
    const/high16 v3, 0x10000000

    and-int v3, v3, v21

    if-nez v3, :cond_87

    .line 4378
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 4380
    const/high16 v3, 0x10000000

    or-int v21, v21, v3

    .line 4394
    :cond_87
    :goto_87
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_b3

    const/high16 v3, 0x10000000

    and-int v3, v3, v21

    if-eqz v3, :cond_b3

    .line 4400
    const-string v3, "ActivityManager"

    const-string v4, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4404
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4407
    :cond_b3
    const/4 v11, 0x0

    .line 4408
    .local v11, "addingToTask":Z
    const/16 v22, 0x0

    .line 4409
    .local v22, "movedHome":Z
    const/16 v25, 0x0

    .line 4410
    .local v25, "reuseTask":Lcom/android/server/am/TaskRecord;
    const/high16 v3, 0x10000000

    and-int v3, v3, v21

    if-eqz v3, :cond_c4

    const/high16 v3, 0x8000000

    and-int v3, v3, v21

    if-eqz v3, :cond_d8

    :cond_c4
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d1

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v3, :cond_d8

    :cond_d1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_34c

    .line 4417
    :cond_d8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_34c

    .line 4422
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1ab

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 4425
    .local v27, "taskTop":Lcom/android/server/am/ActivityRecord;
    :goto_f1
    if-eqz v27, :cond_34c

    .line 4426
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v3, :cond_108

    .line 4431
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 4439
    :cond_108
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    .line 4440
    .local v17, "curTop":Lcom/android/server/am/ActivityRecord;
    if-eqz v17, :cond_11c

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_129

    :cond_11c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;I)Z

    move-result v3

    if-eqz v3, :cond_163

    .line 4444
    :cond_129
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x400000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4445
    if-eqz p2, :cond_13e

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_1b9

    :cond_13e
    const/4 v14, 0x1

    .line 4447
    .local v14, "callerAtFront":Z
    :goto_13f
    if-eqz v14, :cond_163

    .line 4450
    const/16 v22, 0x1

    .line 4451
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityStack;->getTaskWindowModeLocked(Lcom/android/server/am/TaskRecord;)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(II)V

    .line 4452
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 4453
    const/16 p5, 0x0

    .line 4458
    .end local v14    # "callerAtFront":Z
    :cond_163
    const/high16 v3, 0x200000

    and-int v3, v3, v21

    if-eqz v3, :cond_173

    .line 4459
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 4461
    :cond_173
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_1bf

    .line 4466
    if-eqz p4, :cond_1bb

    .line 4467
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 4471
    :goto_181
    const/4 v3, 0x1

    .line 4751
    .end local v17    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v27    # "taskTop":Lcom/android/server/am/ActivityRecord;
    :goto_182
    return v3

    .line 4345
    .end local v11    # "addingToTask":Z
    .end local v22    # "movedHome":Z
    .end local v23    # "notTop":Lcom/android/server/am/ActivityRecord;
    .end local v25    # "reuseTask":Lcom/android/server/am/TaskRecord;
    :cond_183
    const/4 v3, 0x0

    goto/16 :goto_2e

    .line 4356
    :cond_186
    const/16 v23, 0x0

    goto/16 :goto_41

    .line 4382
    .restart local v23    # "notTop":Lcom/android/server/am/ActivityRecord;
    :cond_18a
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_197

    .line 4386
    const/high16 v3, 0x10000000

    or-int v21, v21, v3

    goto/16 :goto_87

    .line 4387
    :cond_197
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1a5

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_87

    .line 4391
    :cond_1a5
    const/high16 v3, 0x10000000

    or-int v21, v21, v3

    goto/16 :goto_87

    .line 4422
    .restart local v11    # "addingToTask":Z
    .restart local v22    # "movedHome":Z
    .restart local v25    # "reuseTask":Lcom/android/server/am/TaskRecord;
    :cond_1ab
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    goto/16 :goto_f1

    .line 4445
    .restart local v17    # "curTop":Lcom/android/server/am/ActivityRecord;
    .restart local v27    # "taskTop":Lcom/android/server/am/ActivityRecord;
    :cond_1b9
    const/4 v14, 0x0

    goto :goto_13f

    .line 4469
    :cond_1bb
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_181

    .line 4473
    :cond_1bf
    const v3, 0x10008000

    and-int v3, v3, v21

    const v4, 0x10008000

    if-ne v3, v4, :cond_217

    .line 4479
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    .line 4480
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(I)V

    .line 4481
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 4558
    :cond_1e7
    :goto_1e7
    if-nez v11, :cond_34c

    if-nez v25, :cond_34c

    .line 4562
    if-eqz p4, :cond_348

    .line 4564
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_33d

    .line 4565
    const/16 v26, -0x1

    .line 4566
    .local v26, "taskId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4567
    .local v10, "N":I
    add-int/lit8 v18, v10, -0x1

    .local v18, "i":I
    :goto_1ff
    if-ltz v18, :cond_33d

    .line 4568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 4569
    .local v12, "ar":Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    iput-boolean v3, v12, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    .line 4570
    iget-boolean v3, v12, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_31c

    .line 4567
    :cond_214
    :goto_214
    add-int/lit8 v18, v18, -0x1

    goto :goto_1ff

    .line 4482
    .end local v10    # "N":I
    .end local v12    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "i":I
    .end local v26    # "taskId":I
    :cond_217
    const/high16 v3, 0x4000000

    and-int v3, v3, v21

    if-nez v3, :cond_22b

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_22b

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_26f

    .line 4489
    :cond_22b
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    .line 4491
    .local v28, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v28, :cond_26a

    .line 4492
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_252

    .line 4497
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 4499
    :cond_252
    const/16 v3, 0x7533

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4500
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_1e7

    .line 4506
    :cond_26a
    const/4 v11, 0x1

    .line 4510
    move-object/from16 p2, v27

    goto/16 :goto_1e7

    .line 4512
    .end local v28    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_26f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f8

    .line 4519
    const/4 v13, 0x0

    .line 4520
    .local v13, "bNeedDeliverNewIntent":Z
    if-eqz p2, :cond_299

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_299

    .line 4521
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.providers.applications"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_299

    .line 4522
    const/4 v13, 0x1

    .line 4525
    :cond_299
    const/high16 v3, 0x20000000

    and-int v3, v3, v21

    if-nez v3, :cond_2a8

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a8

    if-eqz v13, :cond_2e3

    :cond_2a8
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e3

    .line 4528
    const/16 v3, 0x7533

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4529
    move-object/from16 v0, v27

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_2d8

    .line 4530
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 4532
    :cond_2d8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_1e7

    .line 4533
    :cond_2e3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1e7

    .line 4537
    const/4 v11, 0x1

    .line 4538
    move-object/from16 p2, v27

    goto/16 :goto_1e7

    .line 4540
    .end local v13    # "bNeedDeliverNewIntent":Z
    :cond_2f8
    const/high16 v3, 0x200000

    and-int v3, v3, v21

    if-nez v3, :cond_303

    .line 4546
    const/4 v11, 0x1

    .line 4547
    move-object/from16 p2, v27

    goto/16 :goto_1e7

    .line 4548
    :cond_303
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v3, :cond_1e7

    .line 4556
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_1e7

    .line 4573
    .restart local v10    # "N":I
    .restart local v12    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "i":I
    .restart local v26    # "taskId":I
    :cond_31c
    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, v26

    if-eq v0, v3, :cond_214

    .line 4574
    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    .line 4575
    iget v3, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v3

    if-eqz v3, :cond_214

    .line 4576
    iget v3, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v4, v6}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    goto/16 :goto_214

    .line 4582
    .end local v10    # "N":I
    .end local v12    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "i":I
    .end local v26    # "taskId":I
    :cond_33d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 4586
    :goto_345
    const/4 v3, 0x2

    goto/16 :goto_182

    .line 4584
    :cond_348
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_345

    .line 4598
    .end local v17    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v27    # "taskTop":Lcom/android/server/am/ActivityRecord;
    :cond_34c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_3d3

    .line 4602
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    .line 4603
    .restart local v28    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v28, :cond_3f3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_3f3

    .line 4604
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f3

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_3f3

    .line 4605
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_3f3

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_3f3

    .line 4606
    const/high16 v3, 0x20000000

    and-int v3, v3, v21

    if-nez v3, :cond_3a2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3a2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3f3

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v3, :cond_3f3

    .line 4609
    :cond_3a2
    const/high16 v3, 0x8000000

    and-int v3, v3, v21

    if-nez v3, :cond_3f3

    .line 4610
    const/16 v3, 0x7533

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4613
    if-eqz p4, :cond_3bd

    .line 4614
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4616
    :cond_3bd
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4617
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_3c7

    .line 4621
    const/4 v3, 0x1

    goto/16 :goto_182

    .line 4623
    :cond_3c7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 4624
    const/4 v3, 0x3

    goto/16 :goto_182

    .line 4631
    .end local v28    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_3d3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_3ed

    .line 4632
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4636
    :cond_3ed
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4637
    const/4 v3, -0x2

    goto/16 :goto_182

    .line 4640
    .restart local v28    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_3f3
    const-string v3, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_441

    .line 4641
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_47b

    const-string v3, "CU_Flag"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_47b

    .line 4642
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.CHECK_CU_VAS"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4643
    .local v19, "in":Landroid/content/Intent;
    const/high16 v3, 0x50000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4644
    const-string v3, "CU_Vas"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4646
    const/4 v3, 0x4

    goto/16 :goto_182

    .line 4648
    .end local v19    # "in":Landroid/content/Intent;
    :cond_441
    const-string v3, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47b

    .line 4649
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_47b

    .line 4650
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.CHECK_CMCC_VAS"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4651
    .restart local v19    # "in":Landroid/content/Intent;
    const/high16 v3, 0x50000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4653
    const/4 v3, 0x4

    goto/16 :goto_182

    .line 4657
    .end local v19    # "in":Landroid/content/Intent;
    :cond_47b
    const/4 v5, 0x0

    .line 4658
    .local v5, "newTask":Z
    const/4 v7, 0x0

    .line 4661
    .local v7, "keepCurTransition":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_545

    if-nez v11, :cond_545

    const/high16 v3, 0x10000000

    and-int v3, v3, v21

    if-eqz v3, :cond_545

    .line 4663
    if-nez v25, :cond_539

    .line 4665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 4666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v3, :cond_4a6

    .line 4667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 4669
    :cond_4a6
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 4675
    :goto_4be
    const/4 v5, 0x1

    .line 4676
    if-nez v22, :cond_4cc

    .line 4677
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(II)V

    .line 4738
    :cond_4cc
    :goto_4cc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v3, v15, v4, v0, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 4741
    if-eqz v5, :cond_4ff

    .line 4742
    const/16 v3, 0x7534

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4745
    :cond_4ff
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_51e

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v3, :cond_51e

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_51e

    .line 4746
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4749
    :cond_51e
    const/16 v3, 0x7535

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v8, p5

    .line 4750
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 4751
    const/4 v3, 0x0

    goto/16 :goto_182

    .line 4673
    :cond_539
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_4be

    .line 4680
    :cond_545
    if-eqz p2, :cond_5de

    .line 4681
    if-nez v11, :cond_586

    const/high16 v3, 0x4000000

    and-int v3, v3, v21

    if-eqz v3, :cond_586

    .line 4686
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    .line 4688
    const/4 v7, 0x1

    .line 4689
    if-eqz v28, :cond_5ce

    .line 4690
    const/16 v3, 0x7533

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4691
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 4694
    if-eqz p4, :cond_580

    .line 4695
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4697
    :cond_580
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4698
    const/4 v3, 0x3

    goto/16 :goto_182

    .line 4700
    :cond_586
    if-nez v11, :cond_5ce

    const/high16 v3, 0x20000

    and-int v3, v3, v21

    if-eqz v3, :cond_5ce

    .line 4705
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I

    move-result v29

    .line 4706
    .local v29, "where":I
    if-ltz v29, :cond_5ce

    .line 4707
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    .line 4708
    const/16 v3, 0x7533

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4709
    move-object/from16 v0, v28

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 4710
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 4711
    if-eqz p4, :cond_5cb

    .line 4712
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4714
    :cond_5cb
    const/4 v3, 0x3

    goto/16 :goto_182

    .line 4720
    .end local v29    # "where":I
    :cond_5ce
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_4cc

    .line 4728
    :cond_5de
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4729
    .restart local v10    # "N":I
    if-lez v10, :cond_605

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v24, v3

    .line 4731
    .local v24, "prev":Lcom/android/server/am/ActivityRecord;
    :goto_5f6
    if-eqz v24, :cond_608

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_5fc
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_4cc

    .line 4729
    .end local v24    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_605
    const/16 v24, 0x0

    goto :goto_5f6

    .line 4731
    .restart local v24    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_608
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    goto :goto_5fc
.end method

.method stopIfSleepingLocked()V
    .registers 5

    .prologue
    const/16 v3, 0x64

    .line 1261
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1262
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1263
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1264
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1265
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1266
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1269
    :cond_2d
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1270
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1271
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1272
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1274
    .end local v0    # "msg":Landroid/os/Message;
    :cond_42
    return-void
.end method

.method final switchUserLocked(ILcom/android/server/am/UserStartedState;)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserStartedState;

    .prologue
    const/4 v6, 0x1

    .line 948
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 949
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_13

    .line 953
    const/4 v1, 0x0

    .line 988
    :goto_12
    return v1

    .line 955
    :cond_13
    const/4 v1, 0x0

    .line 957
    .local v1, "haveActivities":Z
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 958
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v7, p1, :cond_2a

    move v1, v6

    goto :goto_12

    .line 961
    :cond_2a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v6, :cond_3b

    .line 963
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusLoss(Ljava/lang/String;)V

    .line 966
    :cond_3b
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 967
    .local v0, "N":I
    const/4 v2, 0x0

    .line 968
    .local v2, "i":I
    :goto_42
    if-ge v2, v0, :cond_77

    .line 969
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 970
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v7, p1, :cond_74

    .line 971
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 972
    .local v3, "moveToTop":Lcom/android/server/am/ActivityRecord;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v6, :cond_70

    if-nez v1, :cond_70

    .line 976
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusGain(Ljava/lang/String;)V

    .line 980
    :cond_70
    add-int/lit8 v0, v0, -0x1

    .line 981
    const/4 v1, 0x1

    .line 982
    goto :goto_42

    .line 983
    .end local v3    # "moveToTop":Lcom/android/server/am/ActivityRecord;
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 987
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_77
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_12
.end method

.method final topResumedActivitiesLocked()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 714
    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_23

    .line 715
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 716
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_20

    .line 717
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_20
    add-int/lit8 v0, v0, -0x1

    .line 720
    goto :goto_d

    .line 721
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_23
    return-object v2
.end method

.method final topRunningActivityLocked(I)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p1, "taskId"    # I

    .prologue
    .line 5476
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 5477
    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 5478
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5480
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1d

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne p1, v2, :cond_1d

    .line 5485
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1c
    return-object v1

    .line 5483
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 5484
    goto :goto_8

    .line 5485
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_20
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .prologue
    .line 663
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 664
    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_41

    .line 665
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 666
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1f

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_26

    :cond_1f
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_29

    .line 669
    :cond_26
    add-int/lit8 v0, v0, -0x1

    .line 670
    goto :goto_8

    .line 674
    :cond_29
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_3e

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v2, :cond_3e

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p2, v2, :cond_3e

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 680
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_3d
    return-object v1

    .line 678
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    .line 679
    goto :goto_8

    .line 680
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_41
    const/4 v1, 0x0

    goto :goto_3d
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 565
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 566
    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_39

    .line 567
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 570
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 571
    .local v1, "options":I
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_21

    const/high16 v3, 0x800000

    and-int/2addr v3, v1

    if-nez v3, :cond_26

    :cond_21
    const/high16 v3, 0x200000

    and-int/2addr v3, v1

    if-eqz v3, :cond_29

    .line 574
    :cond_26
    add-int/lit8 v0, v0, -0x1

    .line 575
    goto :goto_8

    .line 579
    :cond_29
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_36

    if-eq v2, p1, :cond_36

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 584
    .end local v1    # "options":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_35
    return-object v2

    .line 582
    .restart local v1    # "options":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v0, v0, -0x1

    .line 583
    goto :goto_8

    .line 584
    .end local v1    # "options":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_39
    const/4 v2, 0x0

    goto :goto_35
.end method

.method final topRunningNextActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "baseTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 688
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 689
    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_2f

    .line 690
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 692
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1d

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_24

    :cond_1d
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_27

    .line 695
    :cond_24
    add-int/lit8 v0, v0, -0x1

    .line 696
    goto :goto_6

    .line 699
    :cond_27
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_2c

    .line 704
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_2b
    return-object v1

    .line 702
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    .line 703
    goto :goto_6

    .line 704
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2f
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 635
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 636
    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3d

    .line 637
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 638
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1f

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_26

    :cond_1f
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_29

    .line 641
    :cond_26
    add-int/lit8 v0, v0, -0x1

    .line 642
    goto :goto_8

    .line 645
    :cond_29
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_3a

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v2, :cond_3a

    if-eq v1, p1, :cond_3a

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 650
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_39
    return-object v1

    .line 648
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3a
    add-int/lit8 v0, v0, -0x1

    .line 649
    goto :goto_8

    .line 650
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3d
    const/4 v1, 0x0

    goto :goto_39
.end method

.method public updateTaskOrderLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x1

    .line 5521
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 5522
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 5524
    :cond_10
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v0, :cond_1b

    .line 5525
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/am/ActivityStack;->setWindowMode(Landroid/os/IBinder;IZZ)V

    .line 5527
    :cond_1b
    return-void
.end method

.method public updateTasksOrderLocked(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v10, 0x0

    .line 5489
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5490
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_2c

    .line 5491
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5492
    .local v3, "r":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 5493
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 5494
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_29

    iget-boolean v6, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v6, :cond_29

    .line 5497
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->setWindowMode(Landroid/os/IBinder;IZZ)V

    .line 5490
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 5500
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "r":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 5502
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5504
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 5505
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_4a

    .line 5506
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v6, 0xf

    .line 5507
    .local v5, "zoneInfo":I
    if-eqz v5, :cond_4a

    .line 5508
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/am/ActivityStack$1;

    invoke-direct {v7, p0, v5}, Lcom/android/server/am/ActivityStack$1;-><init>(Lcom/android/server/am/ActivityStack;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5518
    .end local v5    # "zoneInfo":I
    :cond_4a
    return-void
.end method

.method public updateThumbNail(Landroid/os/IBinder;)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 5202
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 5203
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 5204
    .local v0, "index":I
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 5205
    .local v1, "mw":Lcom/android/server/am/MultiWindowManagerService;
    if-gez v0, :cond_f

    .line 5206
    monitor-exit v6

    .line 5214
    :goto_e
    return-void

    .line 5209
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5210
    .local v2, "origId":J
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5211
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 5212
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5213
    monitor-exit v6

    goto :goto_e

    .end local v0    # "index":I
    .end local v1    # "mw":Lcom/android/server/am/MultiWindowManagerService;
    .end local v2    # "origId":J
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_28
    move-exception v5

    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v5
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 6586
    if-eqz p2, :cond_12

    .line 6587
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 6588
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1b

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1b

    .line 6589
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 6594
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 6595
    return-void

    .line 6591
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1b
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_12
.end method

.method public updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 5448
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v0

    .line 5449
    .local v0, "mw":Lcom/android/server/am/MultiWindowManagerService;
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfo(ILandroid/os/Bundle;)V

    .line 5450
    return-void
.end method

.method public updateWindowInfosLocked(Landroid/content/res/Configuration;I)V
    .registers 19
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "changes"    # I

    .prologue
    .line 5397
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v5

    .line 5400
    .local v5, "mw":Lcom/android/server/am/MultiWindowManagerService;
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZZ)Ljava/util/ArrayList;

    move-result-object v11

    .line 5402
    .local v11, "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/Configuration;->arrange:I

    move/from16 v0, p2

    invoke-virtual {v5, v0, v13, v11}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    .line 5404
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v11

    .line 5405
    const/high16 v13, 0x10000000

    and-int v13, v13, p2

    if-eqz v13, :cond_4b

    .line 5406
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5407
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_2a
    if-ltz v2, :cond_3a

    .line 5408
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 5409
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityStack;->updateTaskOrderLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5407
    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    .line 5412
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 5413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v13, :cond_4b

    .line 5414
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5417
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_4b
    move/from16 v0, p2

    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_6a

    .line 5418
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v13, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v13, v13, 0x478

    if-eqz v13, :cond_6b

    const/4 v4, 0x1

    .line 5419
    .local v4, "isSplitedModes":Z
    :goto_5e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMultiWindow(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_6a

    if-eqz v4, :cond_6d

    .line 5445
    .end local v4    # "isSplitedModes":Z
    :cond_6a
    return-void

    .line 5418
    :cond_6b
    const/4 v4, 0x0

    goto :goto_5e

    .line 5422
    .restart local v4    # "isSplitedModes":Z
    :cond_6d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_75
    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 5423
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    iget v13, v10, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v13}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isNormalWindow(I)Z

    move-result v13

    if-eqz v13, :cond_75

    iget v13, v10, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v13}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isResizable(I)Z

    move-result v13

    if-eqz v13, :cond_75

    .line 5425
    iget-object v13, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v13, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v13, v14}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v12

    .line 5426
    .local v12, "winInfo":Landroid/os/Bundle;
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 5427
    .local v9, "oldLastSize":Landroid/graphics/Rect;
    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 5429
    .local v8, "oldDefaultSize":Landroid/graphics/Rect;
    if-eqz v9, :cond_75

    if-eqz v8, :cond_75

    .line 5430
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_75

    .line 5431
    iget-object v13, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v14, v15}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 5432
    .local v7, "newDefaultWinInfo":Landroid/os/Bundle;
    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 5434
    .local v6, "newDefaultSize":Landroid/graphics/Rect;
    if-eqz v6, :cond_75

    .line 5435
    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_75

    .line 5436
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v12, v13, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5437
    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v12, v13, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_75
.end method

.method final validateAppTokensLocked()V
    .registers 4

    .prologue
    .line 3168
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3169
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 3170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 3171
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3170
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 3173
    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(Ljava/util/List;)V

    .line 3174
    return-void
.end method
