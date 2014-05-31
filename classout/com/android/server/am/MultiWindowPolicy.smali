.class public Lcom/android/server/am/MultiWindowPolicy;
.super Ljava/lang/Object;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowPolicy$H;
    }
.end annotation


# static fields
.field public static final KGUI_PREVIEW_SCALE:F = 0.7f

.field public static LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I = 0x0

.field public static LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I = 0x0

.field private static final SAFE_DEBUG:Z

.field public static final SPLIT_MAX_WEIGHT:F = 0.8f

.field public static final SPLIT_MIN_WEIGHT:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "MultiWindowPolicy"

.field public static sPreviewNormalAppZone:I

.field public static sPreviewScaleEnabled:Z


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmStateListener:Landroid/content/BroadcastReceiver;

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mContext:Landroid/content/Context;

.field final mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

.field private mKidsModeContentObserver:Landroid/database/ContentObserver;

.field private mMultiInstanceMaxCnt:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    .line 69
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I

    .line 70
    const/4 v0, 0x4

    sput v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I

    .line 84
    sput-boolean v1, Lcom/android/server/am/MultiWindowPolicy;->sPreviewScaleEnabled:Z

    .line 85
    sput v1, Lcom/android/server/am/MultiWindowPolicy;->sPreviewNormalAppZone:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 79
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 81
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    .line 89
    new-instance v0, Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowPolicy$H;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    .line 90
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 91
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Lcom/android/server/am/MultiWindowPolicy$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MultiWindowPolicy$3;-><init>(Lcom/android/server/am/MultiWindowPolicy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mKidsModeContentObserver:Landroid/database/ContentObserver;

    .line 94
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 96
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 98
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 99
    sget v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    .line 104
    :goto_3a
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 105
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    .line 107
    :cond_4f
    return-void

    .line 101
    :cond_50
    sget v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    goto :goto_3a
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    return v0
.end method

.method private getIsolatedSplitCenterPoint()Landroid/graphics/Point;
    .registers 7

    .prologue
    .line 618
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v2

    .line 619
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_56

    .line 620
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 621
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 619
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 624
    :cond_2b
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isFrontStack(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 625
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 626
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v5, 0x1000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 627
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getIsolatedCenterPoint()Landroid/graphics/Point;

    move-result-object v4

    .line 631
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "top":Lcom/android/server/am/ActivityRecord;
    :goto_55
    return-object v4

    :cond_56
    const/4 v4, 0x0

    goto :goto_55
.end method


# virtual methods
.method public applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x0

    const v4, -0x8000001

    .line 722
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v1, :cond_51

    .line 723
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_52

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 727
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    :goto_15
    if-eqz v0, :cond_5f

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne v0, v1, :cond_5f

    .line 729
    :cond_39
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MultiWindowPolicy;->getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v1

    iget v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    if-lt v1, v2, :cond_51

    .line 730
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 731
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    .line 738
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_51
    :goto_51
    return-void

    .line 723
    :cond_52
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_15

    .line 734
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_5f
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 735
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    goto :goto_51
.end method

.method public applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 12
    .param p1, "callerRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "calleeRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/high16 v8, 0x10000000

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 647
    iget-boolean v1, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v1, :cond_4b

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v8

    if-eqz v1, :cond_4b

    const-string v1, "android"

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 651
    :cond_27
    if-eqz p1, :cond_4e

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eqz v1, :cond_4e

    .line 652
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x10000001

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 653
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 661
    :cond_4b
    :goto_4b
    if-nez p1, :cond_59

    .line 719
    :cond_4d
    :goto_4d
    return-void

    .line 656
    :cond_4e
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 657
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v6, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_4b

    .line 665
    :cond_59
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "open_multi_window_view"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4d

    .line 675
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidLaunchStyleApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 679
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v1, :cond_4d

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_4d

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 682
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_4d

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 684
    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e9

    const-string v1, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e9

    const-string v1, "com.android.gallery.action.SEARCH_VIEW"

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e9

    const-string v1, "com.sec.android.app.music.intent.action.PLAY_VIA"

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 689
    :cond_e9
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-nez v1, :cond_138

    .line 690
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 691
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 703
    :cond_fd
    :goto_fd
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v5, :cond_4d

    .line 704
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 705
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v1, :cond_118

    .line 706
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    :cond_118
    if-eqz p1, :cond_131

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eqz v1, :cond_131

    .line 709
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 713
    :cond_131
    const/high16 v1, 0x3f000000

    invoke-virtual {p0, v7, v1}, Lcom/android/server/am/MultiWindowPolicy;->checkCenterBarPosition(IF)F

    goto/16 :goto_4d

    .line 693
    :cond_138
    iget v1, p2, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-eq v1, v7, :cond_165

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 696
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_144
    if-eqz v0, :cond_fd

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_fd

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v5, :cond_fd

    .line 698
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 699
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_fd

    .line 693
    .end local v0    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_165
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_144
.end method

.method public applyMultiWindowStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 16
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "sourceToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v0, 0x0

    .line 206
    .local v0, "callerMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v5, :cond_148

    .line 207
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 208
    if-nez v2, :cond_26

    .line 209
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getWindowMode()I

    move-result v4

    .line 210
    .local v4, "windowMode":I
    if-eqz v4, :cond_26

    .line 211
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 212
    .restart local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 215
    .end local v4    # "windowMode":I
    :cond_26
    const/4 v1, 0x0

    .line 217
    .local v1, "callerRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p3, :cond_99

    .line 218
    move-object v1, p3

    .line 225
    :cond_2a
    :goto_2a
    if-eqz v1, :cond_d8

    .line 226
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 227
    if-eqz v2, :cond_c8

    .line 228
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v8, :cond_3f

    .line 229
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_bd

    .line 230
    invoke-virtual {v2, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 245
    :cond_3f
    :goto_3f
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_68

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_68

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v7, :cond_68

    .line 249
    const/16 v5, 0x2000

    invoke-virtual {v2, v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 267
    :cond_68
    :goto_68
    if-nez v2, :cond_6f

    .line 268
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 271
    .restart local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_6f
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v8, :cond_7e

    .line 272
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isInValidZone()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 273
    invoke-virtual {v2, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 277
    :cond_7e
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v5}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 278
    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 295
    :cond_89
    :goto_89
    invoke-virtual {v2, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 296
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 302
    .end local v1    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    :cond_98
    :goto_98
    return-object v2

    .line 219
    .restart local v1    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    :cond_99
    if-eqz p2, :cond_b5

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b5

    .line 220
    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    iget-object v6, p2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .restart local v1    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_2a

    .line 221
    :cond_b5
    if-eqz p4, :cond_2a

    .line 222
    invoke-static {p4}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto/16 :goto_2a

    .line 231
    :cond_bd
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-nez v5, :cond_3f

    .line 232
    invoke-virtual {v2, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_3f

    .line 236
    :cond_c8
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 237
    .restart local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v5, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 238
    const/4 v5, 0x4

    invoke-virtual {v2, v5, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_3f

    .line 252
    :cond_d8
    if-eqz v2, :cond_68

    .line 253
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    iget-object v3, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 254
    .local v3, "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_68

    .line 255
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v8, :cond_68

    .line 256
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 257
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_f9

    .line 258
    invoke-virtual {v2, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto/16 :goto_68

    .line 259
    :cond_f9
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-nez v5, :cond_68

    .line 260
    invoke-virtual {v2, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_68

    .line 279
    .end local v3    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    :cond_104
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v5}, Lcom/android/server/am/MultiWindowPolicy;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_11f

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v7, :cond_11f

    const/16 v5, 0x800

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_11f

    .line 282
    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_89

    .line 283
    :cond_11f
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v5}, Lcom/android/server/am/MultiWindowPolicy;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_132

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v7, :cond_132

    .line 285
    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_89

    .line 286
    :cond_132
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v5, :cond_143

    .line 287
    if-eqz v0, :cond_89

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 289
    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_89

    .line 292
    :cond_143
    invoke-virtual {v2, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto/16 :goto_89

    .line 299
    .end local v1    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    :cond_148
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .restart local v2    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto/16 :goto_98
.end method

.method public arrangeMultiWindowStyle()V
    .registers 15

    .prologue
    .line 372
    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStackOrder(Z)Ljava/util/ArrayList;

    move-result-object v11

    .line 373
    .local v11, "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v10, "recordOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v9, 0x0

    .line 378
    .local v9, "obscuredZone":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 379
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_14
    if-ge v6, v0, :cond_44

    .line 380
    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 381
    .local v4, "currStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_41

    .line 382
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 383
    .local v3, "currRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_41

    .line 384
    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneByType()I

    move-result v12

    or-int/2addr v9, v12

    .line 385
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v12

    if-nez v12, :cond_41

    .line 386
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v3    # "currRecord":Lcom/android/server/am/ActivityRecord;
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 392
    .end local v4    # "currStack":Lcom/android/server/am/ActivityStack;
    :cond_44
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 393
    .local v5, "frontStackSize":I
    if-lez v5, :cond_98

    .line 394
    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v12

    if-nez v12, :cond_5f

    .line 395
    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 398
    :cond_5f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 399
    const/4 v8, 0x0

    .line 400
    .local v8, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-lez v5, :cond_98

    .line 401
    const/4 v12, 0x1

    if-ne v5, v12, :cond_99

    .line 402
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v12

    if-eqz v12, :cond_98

    .line 403
    new-instance v8, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v8, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 404
    .restart local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 405
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v12, v8}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 446
    .end local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_98
    :goto_98
    return-void

    .line 408
    .restart local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_99
    const/4 v9, 0x0

    .line 409
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_9e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 410
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneByType()I

    move-result v12

    or-int/2addr v9, v12

    goto :goto_9e

    .line 413
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_b2
    const/16 v12, 0xf

    if-eq v9, v12, :cond_98

    .line 414
    const/4 v2, 0x0

    .line 415
    .local v2, "arrangeZone":I
    packed-switch v5, :pswitch_data_154

    goto :goto_98

    .line 417
    :pswitch_bb
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v13

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v12

    if-ge v13, v12, :cond_11c

    .line 418
    const/4 v2, 0x3

    .line 422
    :goto_d8
    new-instance v8, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v8, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 423
    .restart local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v8, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 424
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v12, v8}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 425
    new-instance v8, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v8, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 426
    .restart local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    xor-int/lit8 v12, v2, -0x1

    and-int/lit8 v12, v12, 0xf

    invoke-virtual {v8, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 427
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v12, v8}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_98

    .line 420
    :cond_11c
    const/16 v2, 0xc

    goto :goto_d8

    .line 431
    :pswitch_11f
    xor-int/lit8 v12, v9, -0x1

    and-int/lit8 v12, v12, 0xf

    invoke-virtual {p0, v12}, Lcom/android/server/am/MultiWindowPolicy;->findBaseZone(I)I

    move-result v2

    .line 432
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_98

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 433
    .restart local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v12

    and-int/2addr v12, v2

    if-eqz v12, :cond_12b

    .line 434
    new-instance v8, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v8, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 435
    .restart local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v8, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 436
    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v12, v8}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_98

    .line 415
    nop

    :pswitch_data_154
    .packed-switch 0x2
        :pswitch_bb
        :pswitch_11f
    .end packed-switch
.end method

.method public arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;IZ)V
    .registers 9
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "requestZone"    # I
    .param p3, "bSplit"    # Z

    .prologue
    const/4 v4, 0x1

    .line 327
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 349
    :cond_f
    :goto_f
    return-void

    .line 331
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiWindowPolicy;->findBaseZone(I)I

    move-result v0

    .line 332
    .local v0, "baseZone":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 333
    .local v2, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_f

    .line 334
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 335
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz p3, :cond_31

    .line 336
    invoke-virtual {v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 337
    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 347
    :cond_2d
    :goto_2d
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_f

    .line 339
    :cond_31
    const/16 v3, 0xf

    if-ne v0, v3, :cond_3a

    .line 340
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto :goto_2d

    .line 342
    :cond_3a
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v4, :cond_2d

    .line 343
    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_2d
.end method

.method public checkCenterBarPosition(IF)F
    .registers 11
    .param p1, "position"    # I
    .param p2, "weight"    # F

    .prologue
    const/high16 v7, 0x3f800000

    const v6, 0x3dcccccd

    .line 581
    packed-switch p1, :pswitch_data_44

    .line 600
    .end local p2    # "weight":F
    :cond_8
    :goto_8
    return p2

    .line 586
    .restart local p2    # "weight":F
    :pswitch_9
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getStackBoxWeight(I)F

    move-result v2

    .line 587
    .local v2, "weightLv0":F
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getStackBoxWeight(I)F

    move-result v3

    .line 588
    .local v3, "weightLv1":F
    cmpg-float v4, v2, v6

    if-lez v4, :cond_2b

    cmpl-float v4, v2, v7

    if-gez v4, :cond_2b

    cmpg-float v4, v3, v6

    if-lez v4, :cond_2b

    cmpl-float v4, v3, v7

    if-ltz v4, :cond_8

    .line 592
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowPolicy;->initCenterBarPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 593
    .local v0, "point":Landroid/graphics/Point;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v1, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v4, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 595
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    const/high16 p2, 0x3f000000

    goto :goto_8

    .line 581
    nop

    :pswitch_data_44
    .packed-switch 0x2
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public closePenWindow()V
    .registers 10

    .prologue
    .line 170
    sget-boolean v5, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "MultiWindowPolicy"

    const-string v6, "closePenWindow"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_b
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 172
    :try_start_e
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 173
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 174
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 175
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 176
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/ActivityManagerService;->removeTask(II)Z

    goto :goto_34

    .line 180
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_49
    move-exception v5

    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_49

    throw v5

    :cond_4c
    :try_start_4c
    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 181
    return-void
.end method

.method findBaseZone(I)I
    .registers 3
    .param p1, "requestZone"    # I

    .prologue
    .line 306
    const/16 v0, 0xf

    .line 307
    .local v0, "baseZone":I
    packed-switch p1, :pswitch_data_e

    .line 323
    :goto_5
    :pswitch_5
    return v0

    .line 310
    :pswitch_6
    const/16 v0, 0xf

    .line 311
    goto :goto_5

    .line 315
    :pswitch_9
    const/4 v0, 0x3

    .line 316
    goto :goto_5

    .line 320
    :pswitch_b
    const/16 v0, 0xc

    goto :goto_5

    .line 307
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getAvailableMultiInstanceCnt()I
    .registers 2

    .prologue
    .line 824
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    return v0
.end method

.method public getAvailableSplitStack(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/android/server/am/ActivityStack;
    .registers 10
    .param p1, "relativeStackId"    # I
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 506
    if-eq p1, v6, :cond_3e

    .line 507
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 508
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 509
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-nez v5, :cond_10

    .line 510
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_10

    .line 511
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getAvailableSplitStackId(ILcom/samsung/android/multiwindow/MultiWindowStyle;)I

    move-result v1

    .line 512
    .local v1, "splitStackId":I
    if-eq v1, v6, :cond_3e

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 518
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "splitStackId":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3e
    return-object v4
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getEnableMultiInstance(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .registers 11
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 784
    const/4 v1, 0x0

    .line 786
    .local v1, "bMultiInstance":Z
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_f

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 788
    .local v0, "applicationMetaData":Landroid/os/Bundle;
    :goto_b
    if-nez p1, :cond_11

    .line 789
    const/4 v5, 0x0

    .line 820
    :goto_e
    return v5

    .line 786
    .end local v0    # "applicationMetaData":Landroid/os/Bundle;
    :cond_f
    const/4 v0, 0x0

    goto :goto_b

    .line 790
    .restart local v0    # "applicationMetaData":Landroid/os/Bundle;
    :cond_11
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 792
    .local v2, "launchMode":I
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v3

    .line 793
    .local v3, "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 794
    if-eq v2, v6, :cond_2a

    if-eq v2, v7, :cond_2a

    .line 795
    const/4 v1, 0x1

    :cond_28
    :goto_28
    move v5, v1

    .line 820
    goto :goto_e

    .line 796
    :cond_2a
    if-ne v2, v6, :cond_49

    .line 797
    if-eqz v0, :cond_28

    .line 798
    const-string v5, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 799
    .local v4, "multiInstanceLaunchMode":Ljava/lang/String;
    if-eqz v4, :cond_28

    .line 800
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 801
    const-string/jumbo v5, "singleTask"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 802
    const/4 v1, 0x1

    goto :goto_28

    .line 807
    .end local v4    # "multiInstanceLaunchMode":Ljava/lang/String;
    :cond_49
    if-ne v2, v7, :cond_28

    .line 808
    if-eqz v0, :cond_28

    .line 809
    const-string v5, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 810
    .restart local v4    # "multiInstanceLaunchMode":Ljava/lang/String;
    if-eqz v4, :cond_28

    .line 811
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 812
    const-string/jumbo v5, "singleInstance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 813
    const/4 v1, 0x1

    goto :goto_28
.end method

.method public getRelativeStackId(Lcom/android/server/am/ActivityStack;I)I
    .registers 10
    .param p1, "requestStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "requestZone"    # I

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "relativeZone":I
    packed-switch p2, :pswitch_data_46

    .line 481
    :pswitch_4
    const/4 v0, 0x0

    .line 485
    :goto_5
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 486
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "stackNdx":I
    :goto_13
    if-lez v2, :cond_44

    .line 487
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 488
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 486
    :cond_21
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 472
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :pswitch_24
    const/4 v0, 0x3

    .line 473
    goto :goto_5

    .line 477
    :pswitch_26
    const/16 v0, 0xc

    .line 478
    goto :goto_5

    .line 492
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_29
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 493
    .local v4, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_21

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 497
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-ne v5, v0, :cond_21

    .line 498
    iget v5, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 502
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_43
    return v5

    :cond_44
    const/4 v5, 0x1

    goto :goto_43

    .line 469
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_4
        :pswitch_26
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_26
    .end packed-switch
.end method

.method public getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .registers 20
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 741
    const/4 v2, 0x0

    .line 742
    .local v2, "cls":Landroid/content/ComponentName;
    if-eqz p1, :cond_a1

    .line 743
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 744
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v15, :cond_2c

    .line 745
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_2c
    :goto_2c
    const/4 v7, 0x0

    .line 752
    .local v7, "nInstance":I
    const/4 v3, 0x0

    .line 753
    .local v3, "cp":Lcom/android/server/am/TaskRecord;
    if-eqz p1, :cond_b3

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    :goto_34
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 755
    .local v14, "userId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v10

    .line 756
    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    .line 757
    .local v9, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 758
    .local v12, "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 759
    .local v11, "tR":Lcom/android/server/am/TaskRecord;
    iget-object v1, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 760
    .local v1, "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6c
    :goto_6c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 761
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v15, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v15, :cond_6c

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v15, v3, :cond_6c

    iget v15, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v15, v14, :cond_6c

    .line 762
    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 763
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v15, :cond_c7

    .line 764
    if-eqz p1, :cond_be

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v15, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 765
    .local v13, "taskAffinity":Ljava/lang/String;
    :goto_94
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6c

    .line 766
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 747
    .end local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "cp":Lcom/android/server/am/TaskRecord;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "nInstance":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .end local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v13    # "taskAffinity":Ljava/lang/String;
    .end local v14    # "userId":I
    :cond_a1
    if-eqz p2, :cond_2c

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_2c

    .line 748
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto/16 :goto_2c

    .line 753
    .restart local v3    # "cp":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "nInstance":I
    :cond_b3
    if-eqz p2, :cond_bb

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/server/am/TaskRecord;->userId:I

    goto/16 :goto_34

    :cond_bb
    const/4 v15, -0x2

    goto/16 :goto_34

    .line 764
    .restart local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v14    # "userId":I
    :cond_be
    if-eqz p2, :cond_c5

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    goto :goto_94

    :cond_c5
    const/4 v13, 0x0

    goto :goto_94

    .line 768
    :cond_c7
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_de

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_de

    .line 770
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 771
    :cond_de
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v15, :cond_6c

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6c

    .line 773
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6c

    .line 780
    .end local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .end local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_f6
    return v7
.end method

.method public getStackBoxPosition(Lcom/android/server/am/ActivityRecord;)I
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x3

    const/4 v0, 0x1

    .line 522
    const/4 v1, 0x6

    .line 524
    .local v1, "stackBoxPosition":I
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-eq v7, v0, :cond_10

    move v2, v1

    .line 553
    .end local v1    # "stackBoxPosition":I
    .local v2, "stackBoxPosition":I
    :goto_f
    return v2

    .line 528
    .end local v2    # "stackBoxPosition":I
    .restart local v1    # "stackBoxPosition":I
    :cond_10
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    if-nez v7, :cond_1d

    .line 529
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 532
    :cond_1d
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v0, :cond_30

    .line 533
    .local v0, "isPortrait":Z
    :goto_25
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    packed-switch v7, :pswitch_data_4a

    :goto_2e
    :pswitch_2e
    move v2, v1

    .line 553
    .end local v1    # "stackBoxPosition":I
    .restart local v2    # "stackBoxPosition":I
    goto :goto_f

    .line 532
    .end local v0    # "isPortrait":Z
    .end local v2    # "stackBoxPosition":I
    .restart local v1    # "stackBoxPosition":I
    :cond_30
    const/4 v0, 0x0

    goto :goto_25

    .line 535
    .restart local v0    # "isPortrait":Z
    :pswitch_32
    if-eqz v0, :cond_36

    move v1, v3

    .line 536
    :goto_35
    goto :goto_2e

    :cond_36
    move v1, v4

    .line 535
    goto :goto_35

    .line 539
    :pswitch_38
    if-eqz v0, :cond_3c

    move v1, v5

    .line 540
    :goto_3b
    goto :goto_2e

    :cond_3c
    move v1, v6

    .line 539
    goto :goto_3b

    .line 544
    :pswitch_3e
    if-eqz v0, :cond_42

    move v1, v4

    .line 545
    :goto_41
    goto :goto_2e

    :cond_42
    move v1, v3

    .line 544
    goto :goto_41

    .line 549
    :pswitch_44
    if-eqz v0, :cond_48

    move v1, v6

    :goto_47
    goto :goto_2e

    :cond_48
    move v1, v5

    goto :goto_47

    .line 533
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_44
        :pswitch_32
        :pswitch_3e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_44
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_38
    .end packed-switch
.end method

.method public getStackBoxWeight(II)F
    .registers 6
    .param p1, "position"    # I
    .param p2, "zoneLevel"    # I

    .prologue
    .line 557
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStackBoxWeight(I)F

    move-result v0

    .line 558
    .local v0, "weight":F
    packed-switch p1, :pswitch_data_14

    .line 565
    :goto_d
    :pswitch_d
    return v0

    .line 561
    :pswitch_e
    const/high16 v1, 0x3f800000

    sub-float v0, v1, v0

    goto :goto_d

    .line 558
    nop

    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_e
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public initCenterBarPosition()Landroid/graphics/Point;
    .registers 5

    .prologue
    .line 569
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 570
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 571
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_22

    .line 572
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 573
    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 574
    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 575
    invoke-virtual {p0, v1}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 577
    :cond_22
    return-object v1
.end method

.method public isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public minimizeAll(Ljava/lang/String;)V
    .registers 9
    .param p1, "skipPackage"    # Ljava/lang/String;

    .prologue
    .line 352
    sget-boolean v3, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1c

    const-string v3, "MultiWindowPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "minimizeAll : skipPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1c
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 354
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 355
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 356
    sget-boolean v3, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v3, :cond_59

    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minimizeAll : stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_59
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 358
    .local v2, "topRecord":Lcom/android/server/am/ActivityRecord;
    sget-boolean v3, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v3, :cond_7a

    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minimizeAll : topRecord="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_7a
    if-eqz v2, :cond_2b

    .line 360
    if-eqz p1, :cond_86

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 363
    :cond_86
    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_2b

    .line 368
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_8c
    move-exception v3

    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_1f .. :try_end_8e} :catchall_8c

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_8f
    :try_start_8f
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8c

    .line 369
    return-void
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    .line 610
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->resizeStackBox(Landroid/graphics/Point;)V

    .line 611
    return-void
.end method

.method public setCenterBarPointByOrientation(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    .line 607
    return-void
.end method

.method public setFloatingBounds(Lcom/android/server/am/ActivityRecord;)V
    .registers 32
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 829
    const/4 v6, 0x0

    .line 830
    .local v6, "defWidth":I
    const/4 v4, 0x0

    .line 831
    .local v4, "defHeight":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    .line 833
    .local v17, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    .line 923
    :cond_14
    :goto_14
    return-void

    .line 837
    :cond_15
    const/16 v28, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v13

    .line 838
    .local v13, "isInheritStack":Z
    const/16 v28, 0x800

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    .line 839
    .local v18, "optionScale":Z
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 841
    .local v12, "isFullScreen":Z
    if-eqz v13, :cond_33

    if-eqz v12, :cond_33

    if-eqz v18, :cond_43

    :cond_33
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v28

    if-eqz v28, :cond_43

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_14

    .line 848
    :cond_43
    const/16 v28, 0x800

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v28

    if-nez v28, :cond_af

    .line 849
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 850
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1a8

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    .line 853
    .local v16, "metaData":Landroid/os/Bundle;
    :goto_69
    :try_start_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v19

    .line 854
    .local v19, "res":Landroid/content/res/Resources;
    if-eqz v16, :cond_af

    .line 855
    const-string v28, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 856
    .local v5, "defSizeId":I
    if-eqz v5, :cond_96

    .line 857
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v6, v0

    .line 859
    :cond_96
    const-string v28, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 860
    if-eqz v5, :cond_af

    .line 861
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_ab
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_69 .. :try_end_ab} :catch_1ae
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_69 .. :try_end_ab} :catch_1b4

    move-result v28

    move/from16 v0, v28

    float-to-int v4, v0

    .line 871
    .end local v5    # "defSizeId":I
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "metaData":Landroid/os/Bundle;
    .end local v19    # "res":Landroid/content/res/Resources;
    :cond_af
    :goto_af
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 872
    .local v8, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v7

    .line 873
    .local v7, "display":Landroid/view/Display;
    if-eqz v7, :cond_c3

    invoke-virtual {v7, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 875
    :cond_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050119

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 876
    .local v27, "windowGap":I
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3f266666

    mul-float v28, v28, v29

    const v29, 0x3f266666

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v26, v0

    .line 877
    .local v26, "windowDefWidth":I
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3f266666

    mul-float v28, v28, v29

    const v29, 0x3f266666

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v25, v0

    .line 879
    .local v25, "windowDefHeight":I
    const/4 v14, 0x0

    .line 880
    .local v14, "left":I
    const/16 v22, 0x0

    .line 881
    .local v22, "top":I
    const/16 v20, 0x0

    .line 882
    .local v20, "right":I
    const/4 v3, 0x0

    .line 883
    .local v3, "bottom":I
    const/4 v15, 0x0

    .line 884
    .local v15, "leftWindowGap":I
    const/16 v24, 0x0

    .line 885
    .local v24, "topWindowGap":I
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 886
    .local v23, "topFreeStyleRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    .line 889
    .local v11, "isExistFreeStyleApp":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wm/WindowManagerService;->getStackOrder(Z)Ljava/util/ArrayList;

    move-result-object v21

    .line 890
    .local v21, "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_165

    .line 892
    const/4 v11, 0x1

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v23

    .line 894
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v15, v28, v27

    .line 895
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v24, v28, v27

    .line 898
    :cond_165
    if-eqz v6, :cond_169

    if-nez v4, :cond_16d

    .line 900
    :cond_169
    move/from16 v6, v26

    .line 901
    move/from16 v4, v25

    .line 904
    :cond_16d
    if-eqz v11, :cond_1ba

    .line 905
    move v14, v15

    .line 906
    move/from16 v22, v24

    .line 907
    add-int v20, v14, v6

    .line 908
    add-int v3, v22, v4

    .line 910
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move/from16 v0, v20

    move/from16 v1, v28

    if-gt v0, v1, :cond_18c

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-gt v3, v0, :cond_18c

    if-ltz v14, :cond_18c

    if-gez v24, :cond_194

    .line 911
    :cond_18c
    move/from16 v14, v27

    .line 912
    move/from16 v22, v27

    .line 913
    add-int v20, v14, v6

    .line 914
    add-int v3, v22, v4

    .line 922
    :cond_194
    :goto_194
    new-instance v28, Landroid/graphics/Rect;

    move-object/from16 v0, v28

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v14, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_14

    .line 850
    .end local v3    # "bottom":I
    .end local v7    # "display":Landroid/view/Display;
    .end local v8    # "displaySize":Landroid/graphics/Point;
    .end local v11    # "isExistFreeStyleApp":Z
    .end local v14    # "left":I
    .end local v15    # "leftWindowGap":I
    .end local v20    # "right":I
    .end local v21    # "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v22    # "top":I
    .end local v23    # "topFreeStyleRect":Landroid/graphics/Rect;
    .end local v24    # "topWindowGap":I
    .end local v25    # "windowDefHeight":I
    .end local v26    # "windowDefWidth":I
    .end local v27    # "windowGap":I
    .restart local v10    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1a8
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    goto/16 :goto_69

    .line 864
    .restart local v16    # "metaData":Landroid/os/Bundle;
    :catch_1ae
    move-exception v9

    .line 865
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_af

    .line 866
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1b4
    move-exception v9

    .line 867
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_af

    .line 917
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "metaData":Landroid/os/Bundle;
    .restart local v3    # "bottom":I
    .restart local v7    # "display":Landroid/view/Display;
    .restart local v8    # "displaySize":Landroid/graphics/Point;
    .restart local v11    # "isExistFreeStyleApp":Z
    .restart local v14    # "left":I
    .restart local v15    # "leftWindowGap":I
    .restart local v20    # "right":I
    .restart local v21    # "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v22    # "top":I
    .restart local v23    # "topFreeStyleRect":Landroid/graphics/Rect;
    .restart local v24    # "topWindowGap":I
    .restart local v25    # "windowDefHeight":I
    .restart local v26    # "windowDefWidth":I
    .restart local v27    # "windowGap":I
    :cond_1ba
    move/from16 v14, v27

    .line 918
    move/from16 v22, v27

    .line 919
    add-int v20, v14, v6

    .line 920
    add-int v3, v22, v4

    goto :goto_194
.end method

.method public setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 9
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 449
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 464
    :cond_8
    return-void

    .line 453
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 454
    .local v0, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "taskNdx":I
    :goto_13
    if-ltz v1, :cond_8

    .line 455
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 456
    .local v2, "taskRecord":Lcom/android/server/am/TaskRecord;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 457
    .local v3, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_32

    .line 458
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 459
    invoke-virtual {p1, v2, p2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 460
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 454
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_13
.end method

.method public systemReady()V
    .registers 8

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowPolicy;->initCenterBarPosition()Landroid/graphics/Point;

    .line 123
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v3, :cond_21

    .line 124
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 126
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_21

    .line 128
    :try_start_13
    new-instance v3, Lcom/android/server/am/MultiWindowPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/MultiWindowPolicy$1;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 136
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_21} :catch_5b

    .line 142
    .end local v1    # "phone":Landroid/telephony/TelephonyManager;
    :cond_21
    :goto_21
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_48

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "timerFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/android/server/am/MultiWindowPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/MultiWindowPolicy$2;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    .line 152
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "timerFilter":Landroid/content/IntentFilter;
    :cond_48
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kids_home_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mKidsModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    return-void

    .line 137
    .restart local v1    # "phone":Landroid/telephony/TelephonyManager;
    :catch_5b
    move-exception v3

    goto :goto_21
.end method

.method public updateConfigurationLockedLa()V
    .registers 4

    .prologue
    .line 635
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 636
    .local v0, "updatePosition":Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPointByOrientation(Landroid/graphics/Point;)V

    .line 637
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->reverseVerticalValue()V

    .line 638
    return-void
.end method
