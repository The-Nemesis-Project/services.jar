.class public Lcom/android/server/am/MultiWindowManagerService;
.super Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;,
        Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;,
        Lcom/android/server/am/MultiWindowManagerService$H;,
        Lcom/android/server/am/MultiWindowManagerService$Movement;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static LIMIT_NUM_OF_MULTI_INSTANCE:I = 0x0

.field private static QUADVIEW_DISPLAY_RATIO:F = 0.0f

.field private static QUADVIEW_FULL_DISPLAY_RATIO:F = 0.0f

.field public static START_ACTIVITY_WITH_LAST_PINUP:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field private static mSelf:Lcom/android/server/am/MultiWindowManagerService;


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:Landroid/graphics/Rect;

.field private C:Landroid/graphics/Rect;

.field private D:Landroid/graphics/Rect;

.field private E:Landroid/graphics/Rect;

.field private F:Landroid/graphics/Rect;

.field private SPLIT_ZONE_LEFT:Z

.field private SPLIT_ZONE_RIGHT:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmStateListener:Landroid/content/BroadcastReceiver;

.field private mAppListPosition:I

.field mAvoideLaunchStyleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBehaviorBasedLaunch:Z

.field mCallbackDeathRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterBarDirection:I

.field private mCenterBarDockingMargin:I

.field private mCenterBarFlingSize:I

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mContext:Landroid/content/Context;

.field private mCurrMovements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentArrangeState:I

.field private mCurrentLaunchMode:I

.field mFixedRatioAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

.field private mIgnoreIntentWindowMode:Z

.field private mIsMultiDisplay:Z

.field private mIsTouchDown:Z

.field private mIvt:[B

.field private mLastArrangeState:I

.field private mLastDisplay:Landroid/graphics/Point;

.field private mLock:Ljava/lang/Object;

.field mMinimizeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimizeIconState:I

.field private mMovements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private mMovingMargin:I

.field private mMultiDisplayId:I

.field mNotSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOldPositionX:F

.field private mOldPositionY:F

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mShiftPosition:Ljava/lang/Runnable;

.field private mShiftX:I

.field private mShiftXArrange:I

.field private mShiftY:I

.field mSkipFullScreenAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportAllApps:Z

.field mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportControlbar:Z

.field private mSupportHalfSplit:Z

.field mSupportMultiInstanceAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mToolkitWindowDefHeight:I

.field mToolkitWindowDefWidth:I

.field mToolkitWindowX:I

.field mToolkitWindowY:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVisibleArrangeState:I

.field mWindowDefHeight:I

.field mWindowDefWidth:I

.field mWindowGap:I

.field private mWindowInfoMapByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowInfoMapByTaskId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field mWindowMinimizedHeight:I

.field mWindowMinimizedWidth:I

.field mbLoadSupportControlbar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 60
    const-class v0, Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    .line 64
    sput-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->START_ACTIVITY_WITH_LAST_PINUP:Z

    .line 65
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->LIMIT_NUM_OF_MULTI_INSTANCE:I

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    .line 98
    const v0, 0x3ecccccd

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    .line 99
    const v0, 0x3f4ccccd

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_FULL_DISPLAY_RATIO:F

    return-void

    .line 60
    :cond_1f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    .line 70
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 71
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 73
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    .line 77
    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 78
    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    .line 79
    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mVisibleArrangeState:I

    .line 80
    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    .line 82
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 84
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_LEFT:Z

    .line 85
    iput-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_RIGHT:Z

    .line 86
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 87
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    .line 88
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    .line 89
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    .line 101
    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_dc

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B

    .line 122
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 123
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 124
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 125
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    .line 126
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    .line 127
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 128
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    .line 129
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 130
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 132
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    .line 143
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    .line 144
    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    .line 150
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    .line 151
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftY:I

    .line 152
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    .line 153
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    .line 154
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    .line 155
    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 156
    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 157
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    .line 158
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    .line 159
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    .line 161
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 162
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$H;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    .line 713
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$3;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    .line 874
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    .line 875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    .line 167
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    .line 168
    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    .line 169
    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    .line 173
    return-void

    .line 101
    :array_dc
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MultiWindowManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MultiWindowManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiWindowManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/MultiWindowManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAll(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiWindowManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addMinimizeCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 656
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    .line 657
    .local v0, "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 662
    .end local v0    # "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    :goto_1a
    return-void

    .line 661
    :cond_1b
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;-><init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1a
.end method

.method private applyCenterBarDocking(Landroid/graphics/Point;)V
    .registers 8
    .param p1, "centerBarPoint"    # Landroid/graphics/Point;

    .prologue
    .line 2126
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105011c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 2127
    .local v2, "sCenterBarSize":I
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    div-int/lit8 v4, v2, 0x2

    add-int v0, v3, v4

    .line 2128
    .local v0, "dockingRange":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2129
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 2131
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_33

    .line 2132
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 2140
    :cond_27
    :goto_27
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_5e

    .line 2141
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 2148
    :cond_32
    :goto_32
    return-void

    .line 2133
    :cond_33
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_45

    .line 2134
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_27

    .line 2135
    :cond_45
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_27

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_27

    .line 2137
    iget v3, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_27

    .line 2142
    :cond_5e
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_75

    .line 2143
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    sub-int/2addr v3, v4

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_32

    .line 2144
    :cond_75
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_32

    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_32

    .line 2146
    iget v3, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_32
.end method

.method private calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "currentRect"    # Landroid/graphics/Rect;
    .param p2, "baseWinInfo"    # Landroid/os/Bundle;

    .prologue
    .line 1829
    if-eqz p2, :cond_51

    .line 1830
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1831
    .local v0, "baseSize":Landroid/graphics/Rect;
    if-nez v0, :cond_14

    .line 1832
    const-string v2, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "baseSize":Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/Rect;

    .line 1835
    .restart local v0    # "baseSize":Landroid/graphics/Rect;
    :cond_14
    if-eqz v0, :cond_51

    .line 1836
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1837
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1839
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1843
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_44

    .line 1844
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-ge v2, v3, :cond_52

    .line 1845
    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1850
    :cond_44
    :goto_44
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_51

    .line 1851
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1855
    .end local v0    # "baseSize":Landroid/graphics/Rect;
    .end local v1    # "fullscreen":Landroid/graphics/Point;
    :cond_51
    return-void

    .line 1847
    .restart local v0    # "baseSize":Landroid/graphics/Rect;
    .restart local v1    # "fullscreen":Landroid/graphics/Point;
    :cond_52
    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_44
.end method

.method private calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;
    .registers 14
    .param p1, "current"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "useDefault"    # Z

    .prologue
    .line 1858
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 1859
    .local v4, "width":I
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 1861
    .local v0, "height":I
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    .line 1862
    .local v5, "winInfo":Landroid/os/Bundle;
    if-nez v5, :cond_1f

    .line 1863
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1864
    :try_start_15
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1865
    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_66

    .line 1867
    :cond_1f
    if-eqz v5, :cond_45

    .line 1868
    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1872
    .local v1, "lastSize":Landroid/graphics/Rect;
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_33

    if-eqz p3, :cond_3b

    .line 1873
    :cond_33
    const-string v6, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "lastSize":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 1875
    .restart local v1    # "lastSize":Landroid/graphics/Rect;
    :cond_3b
    if-eqz v1, :cond_45

    .line 1876
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1877
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1882
    .end local v1    # "lastSize":Landroid/graphics/Rect;
    :cond_45
    new-instance v2, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v9, v0

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1885
    .local v2, "rect":Landroid/graphics/Rect;
    if-eqz p2, :cond_65

    .line 1886
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    .line 1887
    .local v3, "topWinInfo":Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 1890
    .end local v3    # "topWinInfo":Landroid/os/Bundle;
    :cond_65
    return-object v2

    .line 1865
    .end local v2    # "rect":Landroid/graphics/Rect;
    :catchall_66
    move-exception v6

    :try_start_67
    monitor-exit v7
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v6
.end method

.method private calculateRotatedPosition(ILandroid/os/Bundle;Landroid/graphics/Point;)V
    .registers 21
    .param p1, "windowMode"    # I
    .param p2, "winInfo"    # Landroid/os/Bundle;
    .param p3, "fullscreen"    # Landroid/graphics/Point;

    .prologue
    .line 1773
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 1774
    .local v4, "lastSize":Landroid/graphics/Rect;
    if-nez v4, :cond_16

    .line 1775
    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "lastSize":Landroid/graphics/Rect;
    check-cast v4, Landroid/graphics/Rect;

    .line 1778
    .restart local v4    # "lastSize":Landroid/graphics/Rect;
    :cond_16
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_74

    .line 1779
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1780
    .local v10, "width":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1781
    .local v3, "height":I
    iget v13, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v10

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 1782
    iget v13, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v3

    iput v13, v4, Landroid/graphics/Rect;->right:I

    .line 1784
    const/high16 v13, 0x200000

    and-int v13, v13, p1

    if-eqz v13, :cond_35

    .line 1825
    .end local v3    # "height":I
    .end local v10    # "width":I
    :cond_34
    :goto_34
    return-void

    .line 1788
    .restart local v3    # "height":I
    .restart local v10    # "width":I
    :cond_35
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_5c

    .line 1789
    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    iget v15, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 1794
    :cond_48
    :goto_48
    iget v13, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->x:I

    if-le v13, v14, :cond_68

    .line 1795
    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_34

    .line 1790
    :cond_5c
    iget v13, v4, Landroid/graphics/Rect;->top:I

    if-gez v13, :cond_48

    .line 1791
    const/4 v13, 0x0

    iget v14, v4, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_48

    .line 1796
    :cond_68
    iget v13, v4, Landroid/graphics/Rect;->left:I

    if-gez v13, :cond_34

    .line 1797
    iget v13, v4, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_34

    .line 1799
    .end local v3    # "height":I
    .end local v10    # "width":I
    :cond_74
    const/high16 v13, 0x200000

    and-int v13, v13, p1

    if-nez v13, :cond_34

    .line 1800
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 1802
    .local v5, "nextPoint":Landroid/graphics/Point;
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-double v15, v15

    div-double v6, v13, v15

    .line 1803
    .local v6, "relativeRateX":D
    iget v13, v4, Landroid/graphics/Rect;->top:I

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-double v15, v15

    div-double v8, v13, v15

    .line 1805
    .local v8, "relativeRateY":D
    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->x:I

    int-to-double v13, v13

    mul-double/2addr v13, v6

    double-to-int v1, v13

    .line 1806
    .local v1, "calculatedReferencePointX":I
    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->y:I

    int-to-double v13, v13

    mul-double/2addr v13, v8

    double-to-int v2, v13

    .line 1808
    .local v2, "calculatedReferencePointY":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v1, v13

    iput v13, v5, Landroid/graphics/Point;->x:I

    .line 1809
    iput v2, v5, Landroid/graphics/Point;->y:I

    .line 1812
    iget v13, v5, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Rect;->left:I

    sub-int v11, v13, v14

    .line 1813
    .local v11, "xDiff":I
    iget v13, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v11

    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 1814
    iget v13, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v11

    iput v13, v4, Landroid/graphics/Rect;->right:I

    .line 1817
    iget v13, v5, Landroid/graphics/Point;->y:I

    iget v14, v4, Landroid/graphics/Rect;->top:I

    sub-int v12, v13, v14

    .line 1818
    .local v12, "yDiff":I
    iget v13, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v12

    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 1819
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v12

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 1821
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_34

    .line 1822
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_34
.end method

.method private calculateToolkitWindowSize(I)Landroid/graphics/Rect;
    .registers 8
    .param p1, "windowMode"    # I

    .prologue
    .line 1896
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getEmptySplitZone(Ljava/util/ArrayList;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1158
    .local p1, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x0

    .line 1159
    .local v0, "emptyZone":I
    const/4 v2, 0x0

    .line 1162
    .local v2, "usedZone":I
    if-eqz p1, :cond_15

    .line 1163
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    goto :goto_8

    .line 1169
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_15
    if-eqz v2, :cond_2f

    .line 1170
    const/16 v3, 0xf

    and-int/lit8 v0, v3, -0x1

    .line 1171
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1174
    and-int/lit8 v0, v0, -0xd

    .line 1177
    :try_start_20
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v5, 0x40

    if-eq v3, v5, :cond_2c

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v5, 0x20

    if-ne v3, v5, :cond_2e

    .line 1179
    :cond_2c
    and-int/lit8 v0, v0, -0x3

    .line 1188
    :cond_2e
    monitor-exit v4

    .line 1190
    :cond_2f
    return v0

    .line 1188
    :catchall_30
    move-exception v3

    monitor-exit v4
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_30

    throw v3
.end method

.method public static getSelf()Lcom/android/server/am/MultiWindowManagerService;
    .registers 1

    .prologue
    .line 176
    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    .line 687
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 688
    return-void
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 692
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 693
    .local v1, "y":F
    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/util/MathUtils;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_31

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/util/MathUtils;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_31

    .line 698
    :goto_30
    return-void

    .line 697
    :cond_31
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v1, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/am/MultiWindowManagerService$Movement;-><init>(Lcom/android/server/am/MultiWindowManagerService;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 701
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    .line 702
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    if-nez v0, :cond_4a

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    .line 705
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 709
    :goto_3d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 711
    return-void

    .line 707
    :cond_4a
    iput v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    goto :goto_3d
.end method

.method private initMinimizeInfo(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "callback"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 674
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 675
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 676
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 677
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_21

    .line 678
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/MultiWindowManagerService$Movement;

    invoke-direct {v3, p0, v4, v4}, Lcom/android/server/am/MultiWindowManagerService$Movement;-><init>(Lcom/android/server/am/MultiWindowManagerService;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 680
    :cond_21
    return-void
.end method

.method private minimizeAll(Ljava/lang/String;)V
    .registers 2
    .param p1, "skipPackage"    # Ljava/lang/String;

    .prologue
    .line 1155
    return-void
.end method

.method private removeMinimizeCallback(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "callback"    # Landroid/os/IBinder;

    .prologue
    .line 665
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 666
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_27

    .line 667
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 668
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 666
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 671
    :cond_27
    return-void
.end method

.method private updateWindowRects()V
    .registers 15

    .prologue
    const/4 v9, 0x0

    .line 2087
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2088
    .local v0, "fullscreen":Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 2090
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v7

    .line 2091
    .local v7, "realStatusBarHeight":I
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 2092
    .local v2, "iDeviceWidth":I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 2093
    .local v1, "iDeviceHeight":I
    div-int/lit8 v10, v1, 0x2

    add-int v4, v10, v7

    .line 2094
    .local v4, "iHeightBoundary":I
    div-int/lit8 v5, v2, 0x2

    .line 2095
    .local v5, "iWidthBoundary":I
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105011c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    float-to-int v8, v10

    .line 2096
    .local v8, "sCenterBarHalfSize":I
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105011d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    .line 2097
    .local v3, "iFrameCenterMargin":I
    if-le v2, v1, :cond_a0

    const/4 v6, 0x1

    .line 2099
    .local v6, "landscape":Z
    :goto_39
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2100
    :try_start_3c
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v11, :cond_48

    .line 2101
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v11, Landroid/graphics/Point;->x:I

    .line 2102
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v11, Landroid/graphics/Point;->y:I

    .line 2104
    :cond_48
    monitor-exit v10
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_a2

    .line 2106
    if-eqz v6, :cond_a5

    .line 2107
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v5, v8

    add-int/2addr v11, v3

    sub-int v12, v4, v8

    invoke-direct {v10, v9, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    .line 2108
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v4, v8

    sub-int v12, v5, v8

    add-int/2addr v12, v3

    add-int v13, v1, v7

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    .line 2109
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v5, v8

    sub-int/2addr v11, v3

    sub-int v12, v4, v8

    invoke-direct {v10, v11, v9, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    .line 2110
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v5, v8

    sub-int/2addr v10, v3

    add-int v11, v4, v8

    add-int v12, v1, v7

    invoke-direct {v9, v10, v11, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    .line 2118
    :goto_7f
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    .line 2119
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2121
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    .line 2122
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2123
    return-void

    .end local v6    # "landscape":Z
    :cond_a0
    move v6, v9

    .line 2097
    goto :goto_39

    .line 2104
    .restart local v6    # "landscape":Z
    :catchall_a2
    move-exception v9

    :try_start_a3
    monitor-exit v10
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v9

    .line 2112
    :cond_a5
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v5, v8

    sub-int v12, v4, v8

    add-int/2addr v12, v3

    invoke-direct {v10, v9, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    .line 2113
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v4, v8

    sub-int/2addr v11, v3

    sub-int v12, v5, v8

    add-int v13, v1, v7

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    .line 2114
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v5, v8

    sub-int v12, v4, v8

    add-int/2addr v12, v3

    invoke-direct {v10, v11, v9, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    .line 2115
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v5, v8

    add-int v11, v4, v8

    sub-int/2addr v11, v3

    add-int v12, v1, v7

    invoke-direct {v9, v10, v11, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    goto :goto_7f
.end method


# virtual methods
.method public addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1252
    .local p2, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1253
    .local v4, "taskId":I
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1254
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1255
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1256
    .local v3, "realActivity":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 1258
    .local v2, "popupWindowRect":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .line 1260
    .local v6, "topWinInfo":Landroid/os/Bundle;
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_29

    .line 1261
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1262
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_29

    .line 1263
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    .line 1314
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_29
    return-void
.end method

.method public applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 922
    return-void
.end method

.method public applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "callerRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "calleeRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    .line 878
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_multi_window_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_31

    .line 880
    const-string v0, "android"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 887
    :cond_27
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 914
    :cond_31
    return-void
.end method

.method public arrangeSplitWindow()V
    .registers 1

    .prologue
    .line 390
    return-void
.end method

.method public arrangeToolkitWindowInfos(IILjava/util/ArrayList;)V
    .registers 5
    .param p1, "changes"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2075
    .local p3, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2084
    .local v0, "N":I
    return-void
.end method

.method public arrangeWindowInfo(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "windowMode"    # I
    .param p2, "winInfo"    # Landroid/os/Bundle;

    .prologue
    .line 2168
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2169
    :try_start_3
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    .line 2170
    .local v0, "mode":I
    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_d

    .line 2171
    monitor-exit v3

    .line 2181
    :goto_c
    return-void

    .line 2173
    :cond_d
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 2175
    .local v1, "options":I
    and-int/lit8 v2, p1, 0xf

    if-eqz v2, :cond_23

    .line 2176
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2180
    :cond_1e
    :goto_1e
    monitor-exit v3

    goto :goto_c

    .end local v0    # "mode":I
    .end local v1    # "options":I
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2

    .line 2177
    .restart local v0    # "mode":I
    .restart local v1    # "options":I
    :cond_23
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_1e

    .line 2178
    :try_start_27
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_20

    goto :goto_1e
.end method

.method public arrangeWindowInfos(IILjava/util/ArrayList;)V
    .registers 12
    .param p1, "changes"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2003
    .local p3, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 2004
    .local v1, "currentUserId":I
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2005
    :try_start_7
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 2006
    .local v3, "fullscreen":Landroid/graphics/Point;
    invoke-static {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 2008
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2009
    .local v0, "N":I
    const/4 v2, 0x0

    .line 2010
    .local v2, "divideCount":I
    const/4 v4, 0x0

    .line 2012
    .local v4, "j":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2058
    .local v5, "savedWindowInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/am/ActivityRecord;Ljava/lang/Integer;>;"
    and-int/lit16 v6, p1, 0x80

    if-eqz v6, :cond_25

    .line 2059
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 2070
    :cond_25
    monitor-exit v7

    .line 2072
    return-void

    .line 2070
    .end local v0    # "N":I
    .end local v2    # "divideCount":I
    .end local v3    # "fullscreen":Landroid/graphics/Point;
    .end local v4    # "j":I
    .end local v5    # "savedWindowInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/am/ActivityRecord;Ljava/lang/Integer;>;"
    :catchall_27
    move-exception v6

    monitor-exit v7
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v6
.end method

.method public calculateCenterbarPoint(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Point;
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1912
    const/4 v0, 0x0

    .line 1941
    .local v0, "centerBarPoint":Landroid/graphics/Point;
    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 1942
    return-object v0
.end method

.method public calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .registers 9
    .param p1, "splitZone"    # I

    .prologue
    const/high16 v6, 0x3f000000

    .line 271
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowRects()V

    .line 273
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 274
    .local v2, "result":Landroid/graphics/Rect;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 276
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 278
    :cond_14
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1e

    .line 280
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 282
    :cond_1e
    and-int/lit8 v4, p1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_28

    .line 284
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 286
    :cond_28
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_33

    .line 288
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 291
    :cond_33
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportFixedSplitView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 292
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v4, v4, 0x70

    if-eqz v4, :cond_8d

    .line 293
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 294
    .local v0, "fullScreen":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 295
    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sget v5, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v3, v4

    .line 296
    .local v3, "widthMargin":I
    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sget v5, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 298
    .local v1, "heightMargin":I
    and-int/lit8 v4, p1, 0xf

    if-eqz v4, :cond_8d

    .line 299
    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_8e

    .line 300
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v3, :cond_78

    .line 301
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v3, v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 309
    :cond_78
    :goto_78
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_a0

    .line 310
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v1, :cond_8d

    .line 311
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 322
    .end local v0    # "fullScreen":Landroid/graphics/Point;
    .end local v1    # "heightMargin":I
    .end local v3    # "widthMargin":I
    :cond_8d
    :goto_8d
    return-object v2

    .line 304
    .restart local v0    # "fullScreen":Landroid/graphics/Point;
    .restart local v1    # "heightMargin":I
    .restart local v3    # "widthMargin":I
    :cond_8e
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v3, :cond_78

    .line 305
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_78

    .line 314
    :cond_a0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v1, :cond_8d

    .line 315
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v1, v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_8d
.end method

.method public checkBehaviorBasedLaunch()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    return v0
.end method

.method public checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 243
    .local v0, "returnRect":Landroid/graphics/Rect;
    return-object v0
.end method

.method public checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z
    .registers 7
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1238
    .local p1, "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v2, 0x0

    .line 1239
    .local v2, "zoneInfo":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1240
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_12

    .line 1241
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1240
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1248
    :cond_12
    const/4 v3, 0x0

    return v3
.end method

.method public checkIgnoreIntentWindowMode()Z
    .registers 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    return v0
.end method

.method public checkSupportAllApps()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    return v0
.end method

.method public checkWindowInfos(Ljava/util/ArrayList;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 14
    .param p2, "centerbarRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .local p1, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v8, 0x0

    .line 1946
    if-nez p1, :cond_5

    move-object v5, v8

    .line 1999
    :goto_4
    return-object v5

    .line 1950
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->orientation:I

    .line 1951
    .local v3, "orientation":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1952
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_15

    .line 1956
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    .line 1957
    .local v6, "winInfo":Landroid/os/Bundle;
    const-string v9, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1958
    .local v1, "minimumSize":Landroid/graphics/Rect;
    if-eqz v1, :cond_15

    .line 1962
    const/4 v7, 0x0

    .line 1963
    .local v7, "zoneRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1964
    .local v5, "reviseRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 1994
    .local v2, "offset":I
    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    goto :goto_4

    .end local v1    # "minimumSize":Landroid/graphics/Rect;
    .end local v2    # "offset":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "reviseRect":Landroid/graphics/Rect;
    .end local v6    # "winInfo":Landroid/os/Bundle;
    .end local v7    # "zoneRect":Landroid/graphics/Rect;
    :cond_4b
    move-object v5, v8

    .line 1999
    goto :goto_4
.end method

.method public dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 551
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 553
    .local v0, "action":I
    packed-switch v0, :pswitch_data_18

    .line 570
    :goto_7
    return-void

    .line 555
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->initMinimizeInfo(Landroid/os/IBinder;)V

    .line 556
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 560
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 564
    :pswitch_13
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 553
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_8
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 584
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_33

    .line 585
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump MultiWindowManager from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    :goto_32
    return-void

    .line 591
    :cond_33
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 592
    :try_start_36
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const-string v10, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    const-string v10, "mCenterBarPoint = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v10, :cond_94

    .line 598
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 603
    :goto_53
    const-string v10, "ArrangeState = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_9d

    const-string v10, "ARRANGE_SPLITED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    :goto_63
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    const-string v10, "Total MultiWindowServiceCallback size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 614
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7c
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_d8

    .line 616
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    .line 617
    .local v2, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget-object v10, v2, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 615
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 600
    .end local v2    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    .end local v5    # "i":I
    :cond_94
    const-string v10, "null"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53

    .line 652
    :catchall_9a
    move-exception v10

    monitor-exit v11
    :try_end_9c
    .catchall {:try_start_36 .. :try_end_9c} :catchall_9a

    throw v10

    .line 605
    :cond_9d
    :try_start_9d
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_a9

    const-string v10, "ARRANGE_SPLITED3R"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 606
    :cond_a9
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_b5

    const-string v10, "ARRANGE_SPLITED3L"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 607
    :cond_b5
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_c7

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_c7

    .line 608
    const-string v10, "ARRANGE_SPLITED4"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 609
    :cond_c7
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_d2

    const-string v10, "ARRANGE_DEFINED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 610
    :cond_d2
    const-string v10, "ARRANGE_UNDEFINED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 620
    .restart local v5    # "i":I
    :cond_d8
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    const-string v10, "MinimizeCallback size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 622
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    const/4 v5, 0x0

    :goto_f1
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_109

    .line 624
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    .line 625
    .local v1, "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    iget-object v10, v1, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 623
    add-int/lit8 v5, v5, 0x1

    goto :goto_f1

    .line 628
    .end local v1    # "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    :cond_109
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const-string v10, "mWindowInfoMapByComponent size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 630
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 632
    .local v7, "itComponent":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/os/Bundle;>;>;"
    :goto_12b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_154

    .line 633
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 634
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/os/Bundle;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 635
    .local v9, "name":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 636
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v10, "No : "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 637
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 638
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12b

    .line 640
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/os/Bundle;>;"
    .end local v9    # "name":Landroid/content/ComponentName;
    :cond_154
    const-string v10, "mWindowInfoMapByTaskId size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 641
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 643
    .local v8, "itTask":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;>;"
    :goto_171
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19a

    .line 644
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 645
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 646
    .local v6, "id":Ljava/lang/Integer;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 647
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v10, "No : "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 648
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 649
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_171

    .line 651
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    .end local v6    # "id":Ljava/lang/Integer;
    :cond_19a
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    monitor-exit v11
    :try_end_1a0
    .catchall {:try_start_9d .. :try_end_1a0} :catchall_9a

    goto/16 :goto_32
.end method

.method public findDockingWindowZone(IIIII)I
    .registers 27
    .param p1, "multiWindowState"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dockingBoundary"    # I
    .param p5, "currentZone"    # I

    .prologue
    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowRects()V

    .line 394
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v12

    .line 396
    .local v12, "realStatusBarHeight":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 397
    .local v4, "fullscreen":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 399
    const/4 v11, 0x0

    .line 400
    .local v11, "maxBoundary":I
    if-gez p3, :cond_20

    const/16 p3, 0x0

    .line 401
    :cond_20
    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1f2

    .line 402
    move/from16 v3, p3

    .line 403
    .local v3, "compareValue":I
    iget v11, v4, Landroid/graphics/Point;->y:I

    .line 410
    :goto_32
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v14, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v14, v17

    .line 415
    .local v14, "split":[Landroid/util/Pair;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v6, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    .line 421
    .local v6, "halfSplit3L":[Landroid/util/Pair;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v7, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    .line 427
    .local v7, "halfSplit3R":[Landroid/util/Pair;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v8, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x3

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    .line 434
    .local v8, "halfSplit4":[Landroid/util/Pair;
    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v5, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x3

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x4

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x5

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    .line 443
    .local v5, "halfSplit":[Landroid/util/Pair;
    const/16 v16, 0x0

    .line 445
    .local v16, "zoneInfos":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    sparse-switch p1, :sswitch_data_26a

    .line 503
    :goto_1cf
    :sswitch_1cf
    move-object/from16 v2, v16

    .local v2, "arr$":[Landroid/util/Pair;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1d3
    if-ge v9, v10, :cond_267

    aget-object v15, v2, v9

    .line 504
    .local v15, "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    iget-object v13, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    .line 505
    .local v13, "rect":Landroid/graphics/Rect;
    add-int v17, p3, v12

    move/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_263

    .line 506
    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 510
    .end local v13    # "rect":Landroid/graphics/Rect;
    .end local v15    # "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :goto_1f1
    return v17

    .line 405
    .end local v2    # "arr$":[Landroid/util/Pair;
    .end local v3    # "compareValue":I
    .end local v5    # "halfSplit":[Landroid/util/Pair;
    .end local v6    # "halfSplit3L":[Landroid/util/Pair;
    .end local v7    # "halfSplit3R":[Landroid/util/Pair;
    .end local v8    # "halfSplit4":[Landroid/util/Pair;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "split":[Landroid/util/Pair;
    .end local v16    # "zoneInfos":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_1f2
    move/from16 v3, p2

    .line 406
    .restart local v3    # "compareValue":I
    iget v11, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_32

    .line 451
    .restart local v5    # "halfSplit":[Landroid/util/Pair;
    .restart local v6    # "halfSplit3L":[Landroid/util/Pair;
    .restart local v7    # "halfSplit3R":[Landroid/util/Pair;
    .restart local v8    # "halfSplit4":[Landroid/util/Pair;
    .restart local v14    # "split":[Landroid/util/Pair;
    .restart local v16    # "zoneInfos":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :sswitch_1f8
    move-object/from16 v16, v14

    .line 452
    goto :goto_1cf

    .line 454
    :sswitch_1fb
    if-nez p5, :cond_21e

    .line 455
    move/from16 v0, p4

    if-le v3, v0, :cond_20a

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_20a

    .line 456
    move-object/from16 v16, v14

    goto :goto_1cf

    .line 458
    :cond_20a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_21b

    .line 459
    move-object/from16 v16, v5

    goto :goto_1cf

    .line 461
    :cond_21b
    move-object/from16 v16, v14

    goto :goto_1cf

    .line 465
    :cond_21e
    move-object/from16 v16, v14

    .line 467
    goto :goto_1cf

    .line 469
    :sswitch_221
    if-nez p5, :cond_233

    .line 470
    move/from16 v0, p4

    if-le v3, v0, :cond_230

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_230

    .line 471
    move-object/from16 v16, v14

    goto :goto_1cf

    .line 473
    :cond_230
    move-object/from16 v16, v5

    goto :goto_1cf

    .line 476
    :cond_233
    move-object/from16 v16, v6

    .line 478
    goto :goto_1cf

    .line 480
    :sswitch_236
    if-nez p5, :cond_248

    .line 481
    move/from16 v0, p4

    if-le v3, v0, :cond_245

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_245

    .line 482
    move-object/from16 v16, v14

    goto :goto_1cf

    .line 484
    :cond_245
    move-object/from16 v16, v5

    goto :goto_1cf

    .line 487
    :cond_248
    move-object/from16 v16, v7

    .line 489
    goto :goto_1cf

    .line 491
    :sswitch_24b
    if-nez p5, :cond_25f

    .line 492
    move/from16 v0, p4

    if-le v3, v0, :cond_25b

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_25b

    .line 493
    move-object/from16 v16, v14

    goto/16 :goto_1cf

    .line 495
    :cond_25b
    move-object/from16 v16, v5

    goto/16 :goto_1cf

    .line 498
    :cond_25f
    move-object/from16 v16, v8

    goto/16 :goto_1cf

    .line 503
    .restart local v2    # "arr$":[Landroid/util/Pair;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v13    # "rect":Landroid/graphics/Rect;
    .restart local v15    # "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_263
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1d3

    .line 510
    .end local v13    # "rect":Landroid/graphics/Rect;
    .end local v15    # "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_267
    const/16 v17, 0x0

    goto :goto_1f1

    .line 445
    :sswitch_data_26a
    .sparse-switch
        0x1 -> :sswitch_1cf
        0x2 -> :sswitch_1f8
        0x4 -> :sswitch_1cf
        0x8 -> :sswitch_1fb
        0x10 -> :sswitch_221
        0x20 -> :sswitch_236
        0x40 -> :sswitch_24b
    .end sparse-switch
.end method

.method public getAppListPosition()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppListPosition:I

    return v0
.end method

.method public getArrangeState()I
    .registers 3

    .prologue
    .line 1121
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1122
    :try_start_3
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    monitor-exit v1

    return v0

    .line 1123
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .registers 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    monitor-exit v1

    return-object v0

    .line 255
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getCurrentLaunchMode()I
    .registers 3

    .prologue
    .line 995
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 996
    :try_start_3
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    monitor-exit v1

    return v0

    .line 997
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 30
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "topWinInfo"    # Landroid/os/Bundle;

    .prologue
    .line 1680
    const/4 v6, 0x0

    .line 1681
    .local v6, "defWidth":I
    const/4 v4, 0x0

    .line 1682
    .local v4, "defHeight":I
    const/4 v13, 0x0

    .line 1683
    .local v13, "minWidth":I
    const/4 v11, 0x0

    .line 1684
    .local v11, "minHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x105011c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1686
    .local v16, "sCenterBarHalfSize":I
    const/4 v15, 0x0

    .line 1687
    .local v15, "r":Landroid/content/res/Resources;
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 1688
    .local v18, "winInfo":Landroid/os/Bundle;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 1689
    .local v8, "fullscreen":Landroid/graphics/Point;
    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1690
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_162

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1692
    .local v10, "metaData":Landroid/os/Bundle;
    :goto_44
    :try_start_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v15

    .line 1693
    if-eqz v10, :cond_ae

    .line 1694
    const-string v20, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1695
    .local v5, "defSizeId":I
    if-eqz v5, :cond_6f

    .line 1696
    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v6, v0

    .line 1698
    :cond_6f
    const-string v20, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1699
    if-eqz v5, :cond_84

    .line 1700
    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v4, v0

    .line 1703
    :cond_84
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1704
    .local v12, "minSizeId":I
    if-eqz v12, :cond_99

    .line 1705
    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .line 1707
    :cond_99
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1708
    if-eqz v12, :cond_ae

    .line 1709
    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_44 .. :try_end_aa} :catch_168
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_aa} :catch_16e

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    .line 1718
    .end local v5    # "defSizeId":I
    .end local v12    # "minSizeId":I
    :cond_ae
    :goto_ae
    if-eqz v6, :cond_b8

    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v6, v0, :cond_bc

    :cond_b8
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 1719
    :cond_bc
    if-eqz v4, :cond_c6

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v4, v0, :cond_ca

    :cond_c6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 1721
    :cond_ca
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_dc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    sub-int v13, v20, v16

    .line 1722
    :cond_dc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_ee

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    sub-int v11, v20, v16

    .line 1724
    :cond_ee
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v20, v20, v6

    shr-int/lit8 v9, v20, 0x1

    .line 1725
    .local v9, "left":I
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    sub-int v20, v20, v4

    shr-int/lit8 v20, v20, 0x1

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v21

    add-int v17, v20, v21

    .line 1726
    .local v17, "top":I
    new-instance v19, Landroid/graphics/Rect;

    add-int v20, v9, v6

    add-int v21, v17, v4

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1727
    .local v19, "windowRect":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    add-int v20, v9, v13

    add-int v21, v17, v11

    move/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v14, v9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1730
    .local v14, "minimumRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 1737
    const-string v20, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1738
    const-string v20, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1739
    const-string v20, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    new-instance v21, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v25, v0

    invoke-direct/range {v21 .. v25}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1741
    return-object v18

    .line 1690
    .end local v9    # "left":I
    .end local v10    # "metaData":Landroid/os/Bundle;
    .end local v14    # "minimumRect":Landroid/graphics/Rect;
    .end local v17    # "top":I
    .end local v19    # "windowRect":Landroid/graphics/Rect;
    :cond_162
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_44

    .line 1712
    .restart local v10    # "metaData":Landroid/os/Bundle;
    :catch_168
    move-exception v7

    .line 1713
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_ae

    .line 1714
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_16e
    move-exception v7

    .line 1715
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_ae
.end method

.method public getMinimizeIconState()I
    .registers 2

    .prologue
    .line 579
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    return v0
.end method

.method public getMultiDisplayState()Z
    .registers 3

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1038
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    monitor-exit v1

    return v0

    .line 1039
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getMultiDisplayTarget()I
    .registers 3

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1023
    :try_start_3
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    monitor-exit v1

    return v0

    .line 1024
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I
    .registers 9
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1194
    .local p1, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-eqz p2, :cond_2

    .line 1200
    :cond_2
    const/4 v1, 0x0

    .line 1201
    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x0

    .line 1202
    .local v0, "splitZone":I
    const/4 v2, 0x0

    .line 1203
    .local v2, "topWindowMode":I
    if-eqz p1, :cond_17

    .line 1204
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1205
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    .line 1206
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1211
    .restart local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_17
    and-int/lit8 v3, v2, 0xf

    .line 1212
    .local v3, "zoneInfo":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1213
    packed-switch v3, :pswitch_data_32

    .line 1233
    :goto_1f
    :pswitch_1f
    :try_start_1f
    monitor-exit v5

    .line 1234
    return v0

    .line 1215
    :pswitch_21
    const/16 v0, 0xc

    .line 1216
    goto :goto_1f

    .line 1218
    :pswitch_24
    const/4 v0, 0x3

    .line 1219
    goto :goto_1f

    .line 1221
    :pswitch_26
    const/4 v0, 0x2

    .line 1222
    goto :goto_1f

    .line 1224
    :pswitch_28
    const/4 v0, 0x1

    .line 1225
    goto :goto_1f

    .line 1227
    :pswitch_2a
    const/16 v0, 0x8

    .line 1228
    goto :goto_1f

    .line 1230
    :pswitch_2d
    const/4 v0, 0x4

    goto :goto_1f

    .line 1233
    :catchall_2f
    move-exception v4

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_2f

    throw v4

    .line 1213
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_26
        :pswitch_28
        :pswitch_21
        :pswitch_2a
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_2d
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_24
    .end packed-switch
.end method

.method public getResumedTaskCount()I
    .registers 2

    .prologue
    .line 1137
    const/4 v0, 0x0

    return v0
.end method

.method public getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .registers 9
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, "cls":Landroid/content/ComponentName;
    if-eqz p1, :cond_27

    .line 927
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 928
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_1c

    .line 929
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cls":Landroid/content/ComponentName;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    .restart local v0    # "cls":Landroid/content/ComponentName;
    :cond_1c
    :goto_1c
    const/4 v2, 0x0

    .line 936
    .local v2, "nInstance":I
    const/4 v1, 0x0

    .line 937
    .local v1, "cp":Lcom/android/server/am/TaskRecord;
    if-eqz p1, :cond_34

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    :goto_22
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 958
    .local v3, "userId":I
    return v2

    .line 931
    .end local v1    # "cp":Lcom/android/server/am/TaskRecord;
    .end local v2    # "nInstance":I
    .end local v3    # "userId":I
    :cond_27
    if-eqz p2, :cond_1c

    iget-object v4, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_1c

    .line 932
    iget-object v4, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_1c

    .line 937
    .restart local v1    # "cp":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "nInstance":I
    :cond_34
    if-eqz p2, :cond_39

    iget v4, p2, Lcom/android/server/am/TaskRecord;->userId:I

    goto :goto_22

    :cond_39
    const/4 v4, -0x2

    goto :goto_22
.end method

.method public getVisibleArrangeState()I
    .registers 3

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1128
    :try_start_3
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mVisibleArrangeState:I

    monitor-exit v1

    return v0

    .line 1129
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "realActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 970
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 971
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 973
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 974
    .local v2, "taskBundle":Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 975
    .local v1, "lastSize":Landroid/graphics/Rect;
    if-nez v1, :cond_4b

    .line 976
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 978
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 979
    .local v0, "cmpBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_4b

    .line 980
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "lastSize":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 981
    .restart local v1    # "lastSize":Landroid/graphics/Rect;
    if-eqz v1, :cond_4b

    .line 982
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 987
    .end local v0    # "cmpBundle":Landroid/os/Bundle;
    :cond_4b
    monitor-exit v4

    .line 990
    .end local v1    # "lastSize":Landroid/graphics/Rect;
    .end local v2    # "taskBundle":Landroid/os/Bundle;
    :goto_4c
    return-object v2

    .line 989
    :cond_4d
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    if-nez v3, :cond_5a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 991
    :catchall_57
    move-exception v3

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v3

    .line 990
    :cond_5a
    :try_start_5a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_57

    goto :goto_4c
.end method

.method public handleDisplayRemoved(I)V
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    .line 236
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return-void
.end method

.method public init()V
    .registers 4

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultSupportedAppList()V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadAvoideLaunchStyleAppList()V

    .line 183
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadNotSupportScaleAppList()V

    .line 184
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 185
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;

    .line 186
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    .line 187
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    .line 188
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    .line 189
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftY:I

    .line 190
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    .line 191
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    .line 192
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    .line 193
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 194
    .local v0, "fullscreen":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 195
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 196
    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 197
    return-void
.end method

.method public isEmptyZone(Ljava/util/List;I)Z
    .registers 4
    .param p2, "zone"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1664
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isFixedRatioApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1671
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->isSupportApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1673
    const/4 v0, 0x1

    .line 1676
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isMustNotSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 5
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 1634
    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    .line 1642
    :cond_7
    :goto_7
    return v0

    .line 1638
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1639
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .registers 5
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 1622
    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    .line 1630
    :cond_7
    :goto_7
    return v0

    .line 1625
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1627
    :cond_26
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1560
    :cond_10
    const/4 v0, 0x1

    .line 1563
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isSupportControlbar()Z
    .registers 2

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 1555
    :goto_b
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    return v0

    .line 1552
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    goto :goto_b
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z
    .registers 7
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1599
    const/4 v2, 0x0

    .line 1600
    .local v2, "bSupportMultiWindow":Z
    if-eqz p1, :cond_5a

    .line 1601
    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/am/MultiWindowManagerService;->isSupportApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_5a

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_5a

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.support.multiwindow"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1603
    :cond_2d
    const/4 v2, 0x1

    .line 1604
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_5a

    .line 1605
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1606
    .local v0, "activityWindowStyle":Ljava/lang/String;
    if-eqz v0, :cond_5a

    .line 1607
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1608
    .local v1, "activityWindowStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1609
    const-string v3, "fullscreenOnly"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1610
    const/4 v2, 0x0

    .line 1618
    .end local v0    # "activityWindowStyle":Ljava/lang/String;
    .end local v1    # "activityWindowStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5a
    return v2
.end method

.method public isSupportPopup(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1567
    const-string v0, "com.sec.android.app.popupuireceiver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.android.providers.downloads.ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1570
    :cond_18
    const/4 v0, 0x1

    .line 1573
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 5
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 1646
    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    .line 1653
    :cond_7
    :goto_7
    return v0

    .line 1649
    :cond_8
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.popupwindow.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1650
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 7
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v2, 0x0

    .line 1577
    if-eqz p1, :cond_7

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_8

    .line 1595
    :cond_7
    :goto_7
    return v2

    .line 1581
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_7

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1583
    :cond_26
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_4f

    .line 1584
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1585
    .local v0, "applicationStyle":Ljava/lang/String;
    if-eqz v0, :cond_4f

    .line 1586
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1587
    .local v1, "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "freestyleOnly"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1592
    .end local v0    # "applicationStyle":Ljava/lang/String;
    .end local v1    # "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4f
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public launchExternalDisplay(Z)V
    .registers 4
    .param p1, "topLaunchExternal"    # Z

    .prologue
    .line 229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 231
    .local v0, "origId":J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    return-void
.end method

.method public loadAvoideLaunchStyleAppList()V
    .registers 10

    .prologue
    .line 1510
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1511
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1513
    :try_start_a
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070053

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1514
    .local v2, "avoidAppList":[Ljava/lang/String;
    if-eqz v2, :cond_28

    .line 1515
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1c
    if-ge v3, v4, :cond_28

    aget-object v1, v0, v3

    .line 1516
    .local v1, "avoidApp":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1520
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "avoidApp":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_28
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070054

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1521
    .local v6, "skipFullScreenList":[Ljava/lang/String;
    if-eqz v6, :cond_47

    .line 1522
    move-object v0, v6

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3a
    if-ge v3, v4, :cond_47

    aget-object v5, v0, v3

    .line 1523
    .local v5, "skipFullScreenApp":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_43} :catch_46

    .line 1522
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1526
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "avoidAppList":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "skipFullScreenApp":Ljava/lang/String;
    .end local v6    # "skipFullScreenList":[Ljava/lang/String;
    :catch_46
    move-exception v7

    .line 1528
    :cond_47
    return-void
.end method

.method public loadDefaultSupportedAppList()V
    .registers 20

    .prologue
    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1442
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x107004e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 1443
    .local v12, "supportAppList":[Ljava/lang/String;
    if-eqz v12, :cond_43

    .line 1444
    move-object v2, v12

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_31
    if-ge v9, v10, :cond_43

    aget-object v11, v2, v9

    .line 1445
    .local v11, "supportApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    .line 1449
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "supportApp":Ljava/lang/String;
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x107005a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 1450
    .local v16, "supportScaleAppList":[Ljava/lang/String;
    if-eqz v16, :cond_6c

    .line 1451
    move-object/from16 v2, v16

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v10, v2

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_5a
    if-ge v9, v10, :cond_6c

    aget-object v15, v2, v9

    .line 1452
    .local v15, "supportScaleApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 1456
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v15    # "supportScaleApp":Ljava/lang/String;
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x107004f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 1457
    .local v14, "supportMultiInstanceAppList":[Ljava/lang/String;
    if-eqz v14, :cond_95

    .line 1458
    move-object v2, v14

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v10, v2

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_82
    if-ge v9, v10, :cond_95

    aget-object v13, v2, v9

    .line 1459
    .local v13, "supportMultiInstanceApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_91} :catch_94

    .line 1458
    add-int/lit8 v9, v9, 0x1

    goto :goto_82

    .line 1462
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "supportAppList":[Ljava/lang/String;
    .end local v13    # "supportMultiInstanceApp":Ljava/lang/String;
    .end local v14    # "supportMultiInstanceAppList":[Ljava/lang/String;
    .end local v16    # "supportScaleAppList":[Ljava/lang/String;
    :catch_94
    move-exception v17

    .line 1467
    :cond_95
    const/4 v3, 0x0

    .line 1468
    .local v3, "cscAddOnApp":Ljava/lang/String;
    if-eqz v3, :cond_ed

    .line 1469
    new-instance v4, Ljava/util/ArrayList;

    const-string v17, ","

    move-object/from16 v0, v17

    throw v3

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1470
    .local v4, "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    throw v4

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_ab
    :goto_ab
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_ed

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1471
    .local v1, "addOnApp":Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    throw v1

    move-result v17

    if-eqz v17, :cond_d9

    .line 1472
    const/16 v17, 0x1

    move/from16 v0, v17

    throw v1

    move-result-object v1

    .line 1473
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    throw v0

    move-result v17

    if-eqz v17, :cond_ab

    .line 1474
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    throw v0

    goto :goto_ab

    .line 1475
    :cond_d9
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    throw v0

    move-result v17

    if-nez v17, :cond_ab

    .line 1476
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    throw v0

    goto :goto_ab

    .line 1482
    .end local v1    # "addOnApp":Ljava/lang/String;
    .end local v4    # "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_ed
    const/4 v5, 0x0

    .line 1483
    .local v5, "cscAddPenWindow":Ljava/lang/String;
    if-eqz v5, :cond_145

    .line 1484
    new-instance v6, Ljava/util/ArrayList;

    const-string v17, ","

    move-object/from16 v0, v17

    throw v5

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1485
    .local v6, "cscAddPenWindowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    throw v6

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_103
    :goto_103
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_145

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1486
    .restart local v1    # "addOnApp":Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    throw v1

    move-result v17

    if-eqz v17, :cond_131

    .line 1487
    const/16 v17, 0x1

    move/from16 v0, v17

    throw v1

    move-result-object v1

    .line 1488
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    throw v0

    move-result v17

    if-eqz v17, :cond_103

    .line 1489
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    throw v0

    goto :goto_103

    .line 1490
    :cond_131
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    throw v0

    move-result v17

    if-nez v17, :cond_103

    .line 1491
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    throw v0

    goto :goto_103

    .line 1496
    .end local v1    # "addOnApp":Ljava/lang/String;
    .end local v6    # "cscAddPenWindowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1498
    :try_start_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1070052

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1499
    .local v8, "fixedRatioAppList":[Ljava/lang/String;
    if-eqz v8, :cond_177

    .line 1500
    move-object v2, v8

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v10, v2

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_164
    if-ge v9, v10, :cond_177

    aget-object v7, v2, v9

    .line 1501
    .local v7, "fixedRatioApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_173
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14e .. :try_end_173} :catch_176

    .line 1500
    add-int/lit8 v9, v9, 0x1

    goto :goto_164

    .line 1504
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "fixedRatioApp":Ljava/lang/String;
    .end local v8    # "fixedRatioAppList":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :catch_176
    move-exception v17

    .line 1507
    :cond_177
    return-void
.end method

.method public loadDefaultWindowInfo()V
    .registers 3

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 1430
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 1431
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 1432
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 1433
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 1434
    return-void
.end method

.method public loadNotSupportScaleAppList()V
    .registers 8

    .prologue
    .line 1531
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1533
    :try_start_5
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1534
    .local v4, "notSupportAppList":[Ljava/lang/String;
    if-eqz v4, :cond_24

    .line 1535
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_17
    if-ge v1, v2, :cond_24

    aget-object v3, v0, v1

    .line 1536
    .local v3, "notSupportApp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_20} :catch_23

    .line 1535
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1539
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "notSupportApp":Ljava/lang/String;
    .end local v4    # "notSupportAppList":[Ljava/lang/String;
    :catch_23
    move-exception v5

    .line 1541
    :cond_24
    return-void
.end method

.method public minimizeAll()V
    .registers 2

    .prologue
    .line 1141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAll(Ljava/lang/String;)V

    .line 1142
    return-void
.end method

.method public notifyMultiDisplayState(ZZ)Z
    .registers 6
    .param p1, "bIsMultiDisplay"    # Z
    .param p2, "bForced"    # Z

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    if-ne v0, p1, :cond_6

    if-eqz p2, :cond_2c

    .line 1004
    :cond_6
    const-string v0, "MultiWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send broadcast intent  ACTION_NOTIFY_MULTIDISPLAY_STATUS mIsMultiDisplay set as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    .line 1007
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$4;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1015
    const/4 v0, 0x1

    .line 1017
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z
    .registers 10
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 514
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    .line 515
    .local v0, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget-object v5, v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 533
    .end local v0    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    :cond_1c
    :goto_1c
    return v3

    .line 520
    :cond_1d
    if-eqz p1, :cond_1c

    .line 521
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;-><init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/IBinder;ILandroid/os/IBinder;)V

    .line 523
    .restart local v0    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    const/4 v5, 0x0

    :try_start_25
    invoke-interface {p1, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_34

    .line 527
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 528
    if-ne p2, v4, :cond_32

    .line 529
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/MultiWindowManagerService;->addMinimizeCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V

    :cond_32
    move v3, v4

    .line 531
    goto :goto_1c

    .line 524
    :catch_34
    move-exception v1

    .line 525
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1c
.end method

.method public removeWindowInfo(I)V
    .registers 5
    .param p1, "taskId"    # I

    .prologue
    .line 1417
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1418
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    monitor-exit v1

    .line 1420
    return-void

    .line 1419
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public removeWindowInfoByComponent(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "realActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 1423
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1424
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    monitor-exit v1

    .line 1426
    return-void

    .line 1425
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public rotateCenterBar(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 2151
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    if-ne p1, v1, :cond_5

    .line 2165
    :goto_4
    return-void

    .line 2155
    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2156
    .local v0, "centerBarPoint":Landroid/graphics/Point;
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    .line 2157
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2158
    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_24

    .line 2159
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2160
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2161
    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->applyCenterBarDocking(Landroid/graphics/Point;)V

    .line 2162
    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 2164
    :cond_24
    monitor-exit v2

    goto :goto_4

    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_26

    throw v1
.end method

.method public setAppListPosition(I)V
    .registers 2
    .param p1, "pos"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppListPosition:I

    .line 264
    return-void
.end method

.method public setCenterBarDirection(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    .line 260
    return-void
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 249
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setMinimizeStackedIcon()V
    .registers 7

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 576
    return-void
.end method

.method public setMultiDisplayState(Z)V
    .registers 4
    .param p1, "bMultiDisplayState"    # Z

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1045
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    .line 1046
    monitor-exit v1

    .line 1047
    return-void

    .line 1046
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setMultiDisplayTarget(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1030
    :try_start_3
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    .line 1031
    monitor-exit v1

    .line 1032
    const/4 v0, 0x1

    return v0

    .line 1031
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public setToolkitRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1745
    if-nez p1, :cond_c

    .line 1746
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1747
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1748
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    .line 1749
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    .line 1770
    :cond_b
    :goto_b
    return-void

    .line 1752
    :cond_c
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1753
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    .line 1754
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    .line 1755
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    .line 1757
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    if-nez v1, :cond_40

    .line 1758
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1759
    .local v0, "fullscreen":Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1760
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    if-nez v1, :cond_39

    .line 1761
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1763
    :cond_39
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    goto :goto_b

    .line 1764
    .end local v0    # "fullscreen":Landroid/graphics/Point;
    :cond_40
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    if-nez v1, :cond_b

    .line 1765
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1766
    .restart local v0    # "fullscreen":Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1768
    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    goto :goto_b
.end method

.method public skipFullScreenCheck(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 962
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 963
    const/4 v0, 0x1

    .line 966
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public systemReady()V
    .registers 5

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v2, :cond_1e

    .line 201
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 202
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1e

    .line 204
    :try_start_10
    new-instance v2, Lcom/android/server/am/MultiWindowManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiWindowManagerService$1;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 211
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_1e} :catch_38

    .line 217
    .end local v1    # "phone":Landroid/telephony/TelephonyManager;
    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_37

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/am/MultiWindowManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiWindowManagerService$2;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    .line 224
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_37
    return-void

    .line 212
    .restart local v1    # "phone":Landroid/telephony/TelephonyManager;
    :catch_38
    move-exception v2

    goto :goto_1e
.end method

.method public unRegisterCallback(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "callback"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 537
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 538
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_26

    .line 539
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    .line 540
    .local v0, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget-object v4, v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 541
    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 542
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 543
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizeCallback(Landroid/os/IBinder;)V

    .line 544
    const/4 v3, 0x1

    .line 547
    .end local v0    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    :cond_26
    return v3

    .line 538
    .restart local v0    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public updateArrangeState(Ljava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "resumeRecord":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v11, 0x1

    .line 1052
    const/4 v6, 0x0

    .line 1053
    .local v6, "mode":I
    const/4 v7, 0x0

    .line 1054
    .local v7, "option":I
    const/4 v0, 0x0

    .line 1055
    .local v0, "arrangeState":I
    const/4 v5, 0x0

    .line 1056
    .local v5, "isHarfSplit":Z
    const/4 v1, 0x0

    .line 1058
    .local v1, "bIsMultiDisplay":Z
    iput v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    .line 1060
    if-eqz p1, :cond_53

    .line 1061
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1064
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    const/high16 v10, 0x1000000

    if-eq v6, v10, :cond_e

    .line 1068
    const/high16 v10, 0x2000000

    if-ne v6, v10, :cond_e

    .line 1069
    and-int/lit8 v9, v7, 0xf

    .line 1070
    .local v9, "zone":I
    if-eqz v9, :cond_e

    .line 1071
    and-int/lit8 v0, v0, -0x4

    .line 1072
    const/4 v10, 0x3

    if-nez v10, :cond_30

    if-nez v5, :cond_30

    .line 1073
    or-int/lit8 v0, v0, 0x8

    goto :goto_e

    .line 1074
    :cond_30
    if-nez v11, :cond_38

    .line 1075
    and-int/lit8 v0, v0, -0x9

    .line 1076
    or-int/lit8 v0, v0, 0x20

    .line 1077
    const/4 v5, 0x1

    goto :goto_e

    .line 1078
    :cond_38
    const/4 v10, 0x4

    if-nez v10, :cond_e

    .line 1079
    and-int/lit8 v0, v0, -0x9

    .line 1080
    or-int/lit8 v0, v0, 0x10

    .line 1081
    const/4 v5, 0x1

    goto :goto_e

    .line 1091
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "zone":I
    :cond_41
    if-eqz v0, :cond_4f

    .line 1092
    and-int/lit8 v10, v0, 0x10

    if-eqz v10, :cond_7d

    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_7d

    .line 1094
    const/16 v10, 0x40

    iput v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    .line 1100
    :cond_4f
    :goto_4f
    const/4 v10, 0x0

    invoke-virtual {p0, v1, v10}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiDisplayState(ZZ)Z

    .line 1105
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_53
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    iget v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    if-eq v10, v11, :cond_80

    .line 1106
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_5f
    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_80

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    .line 1107
    .local v3, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget v10, v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mType:I

    if-nez v10, :cond_5f

    .line 1108
    iget-object v10, v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-static {v10}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;

    move-result-object v2

    .line 1110
    .local v2, "cb":Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;
    :try_start_75
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    invoke-interface {v2, v10}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;->onArrangeStateUpdate(I)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7a} :catch_7b

    goto :goto_5f

    .line 1111
    :catch_7b
    move-exception v10

    goto :goto_5f

    .line 1096
    .end local v2    # "cb":Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;
    .end local v3    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    :cond_7d
    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    goto :goto_4f

    .line 1116
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_80
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    iput v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    .line 1117
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    return v10
.end method

.method public updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "useDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1385
    .local p2, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    .line 1395
    .local v0, "targetWinInfo":Landroid/os/Bundle;
    return-void
.end method

.method public updateSplitZoneAfterDestroy(Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1381
    .local p2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "realActivity"    # Landroid/content/ComponentName;
    .param p3, "winInfo"    # Landroid/os/Bundle;

    .prologue
    .line 1398
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1399
    if-nez p3, :cond_f

    .line 1400
    :try_start_5
    const-string v2, "MultiWindowManagerService"

    const-string/jumbo v4, "updateWindowInfo: failed due because winInfo is null."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    monitor-exit v3

    .line 1414
    :goto_e
    return-void

    .line 1404
    :cond_f
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1405
    .local v1, "taskBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_25

    .line 1406
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1409
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1410
    .local v0, "cmpBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_37

    .line 1411
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1413
    :cond_37
    monitor-exit v3

    goto :goto_e

    .end local v0    # "cmpBundle":Landroid/os/Bundle;
    .end local v1    # "taskBundle":Landroid/os/Bundle;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_39

    throw v2
.end method
