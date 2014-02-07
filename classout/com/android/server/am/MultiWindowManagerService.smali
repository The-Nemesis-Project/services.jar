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

    .line 58
    const-class v0, Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    .line 62
    sput-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->START_ACTIVITY_WITH_LAST_PINUP:Z

    .line 63
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->LIMIT_NUM_OF_MULTI_INSTANCE:I

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-void

    .line 58
    :cond_15
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

    .line 156
    invoke-direct {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    .line 68
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 69
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 71
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    .line 75
    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 76
    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    .line 77
    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    .line 79
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 81
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_LEFT:Z

    .line 82
    iput-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_RIGHT:Z

    .line 83
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 84
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    .line 85
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    .line 86
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    .line 95
    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_d6

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B

    .line 116
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 117
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 118
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 119
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    .line 120
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    .line 121
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 122
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    .line 123
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 124
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 126
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    .line 127
    iput-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    .line 137
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    .line 138
    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    .line 144
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    .line 145
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftY:I

    .line 146
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    .line 147
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    .line 148
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    .line 149
    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 150
    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 151
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    .line 152
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    .line 153
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    .line 154
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$H;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    .line 580
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$1;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    .line 734
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    .line 735
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    .line 157
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    .line 158
    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    .line 159
    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    .line 163
    return-void

    .line 95
    :array_d6
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
    .line 58
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/MultiWindowManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MultiWindowManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiWindowManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MultiWindowManagerService;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/SystemVibrator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiWindowManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/am/MultiWindowManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/am/MultiWindowManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    return v0
.end method

.method private addMinimizeCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 523
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

    .line 524
    .local v0, "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 529
    .end local v0    # "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    :goto_1a
    return-void

    .line 528
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
    .line 1973
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 1974
    .local v2, "sCenterBarSize":I
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    div-int/lit8 v4, v2, 0x2

    add-int v0, v3, v4

    .line 1975
    .local v0, "dockingRange":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1976
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1978
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_33

    .line 1979
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1987
    :cond_27
    :goto_27
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_5e

    .line 1988
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1995
    :cond_32
    :goto_32
    return-void

    .line 1980
    :cond_33
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_45

    .line 1981
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_27

    .line 1982
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

    .line 1984
    iget v3, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_27

    .line 1989
    :cond_5e
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_75

    .line 1990
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    sub-int/2addr v3, v4

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_32

    .line 1991
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

    .line 1993
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
    .line 1676
    if-eqz p2, :cond_51

    .line 1677
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1678
    .local v0, "baseSize":Landroid/graphics/Rect;
    if-nez v0, :cond_14

    .line 1679
    const-string v2, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "baseSize":Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/Rect;

    .line 1682
    .restart local v0    # "baseSize":Landroid/graphics/Rect;
    :cond_14
    if-eqz v0, :cond_51

    .line 1683
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1684
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1686
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1690
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_44

    .line 1691
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-ge v2, v3, :cond_52

    .line 1692
    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1697
    :cond_44
    :goto_44
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_51

    .line 1698
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1702
    .end local v0    # "baseSize":Landroid/graphics/Rect;
    .end local v1    # "fullscreen":Landroid/graphics/Point;
    :cond_51
    return-void

    .line 1694
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
    .line 1705
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 1706
    .local v4, "width":I
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 1708
    .local v0, "height":I
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    .line 1709
    .local v5, "winInfo":Landroid/os/Bundle;
    if-nez v5, :cond_1f

    .line 1710
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1711
    :try_start_15
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1712
    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_66

    .line 1714
    :cond_1f
    if-eqz v5, :cond_45

    .line 1715
    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1719
    .local v1, "lastSize":Landroid/graphics/Rect;
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_33

    if-eqz p3, :cond_3b

    .line 1720
    :cond_33
    const-string v6, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "lastSize":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 1722
    .restart local v1    # "lastSize":Landroid/graphics/Rect;
    :cond_3b
    if-eqz v1, :cond_45

    .line 1723
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1724
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1729
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

    .line 1732
    .local v2, "rect":Landroid/graphics/Rect;
    if-eqz p2, :cond_65

    .line 1733
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    .line 1734
    .local v3, "topWinInfo":Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 1737
    .end local v3    # "topWinInfo":Landroid/os/Bundle;
    :cond_65
    return-object v2

    .line 1712
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
    .line 1625
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 1626
    .local v4, "lastSize":Landroid/graphics/Rect;
    if-nez v4, :cond_16

    .line 1627
    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "lastSize":Landroid/graphics/Rect;
    check-cast v4, Landroid/graphics/Rect;

    .line 1630
    .restart local v4    # "lastSize":Landroid/graphics/Rect;
    :cond_16
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_6d

    .line 1631
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1632
    .local v10, "width":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1633
    .local v3, "height":I
    iget v13, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v10

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 1634
    iget v13, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v3

    iput v13, v4, Landroid/graphics/Rect;->right:I

    .line 1635
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_55

    .line 1636
    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    iget v15, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 1641
    :cond_41
    :goto_41
    iget v13, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->x:I

    if-le v13, v14, :cond_61

    .line 1642
    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 1672
    .end local v3    # "height":I
    .end local v10    # "width":I
    :cond_54
    :goto_54
    return-void

    .line 1637
    .restart local v3    # "height":I
    .restart local v10    # "width":I
    :cond_55
    iget v13, v4, Landroid/graphics/Rect;->top:I

    if-gez v13, :cond_41

    .line 1638
    const/4 v13, 0x0

    iget v14, v4, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_41

    .line 1643
    :cond_61
    iget v13, v4, Landroid/graphics/Rect;->left:I

    if-gez v13, :cond_54

    .line 1644
    iget v13, v4, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_54

    .line 1646
    .end local v3    # "height":I
    .end local v10    # "width":I
    :cond_6d
    const/high16 v13, 0x200000

    and-int v13, v13, p1

    if-nez v13, :cond_54

    .line 1647
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 1649
    .local v5, "nextPoint":Landroid/graphics/Point;
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-double v15, v15

    div-double v6, v13, v15

    .line 1650
    .local v6, "relativeRateX":D
    iget v13, v4, Landroid/graphics/Rect;->top:I

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-double v15, v15

    div-double v8, v13, v15

    .line 1652
    .local v8, "relativeRateY":D
    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->x:I

    int-to-double v13, v13

    mul-double/2addr v13, v6

    double-to-int v1, v13

    .line 1653
    .local v1, "calculatedReferencePointX":I
    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->y:I

    int-to-double v13, v13

    mul-double/2addr v13, v8

    double-to-int v2, v13

    .line 1655
    .local v2, "calculatedReferencePointY":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v1, v13

    iput v13, v5, Landroid/graphics/Point;->x:I

    .line 1656
    iput v2, v5, Landroid/graphics/Point;->y:I

    .line 1659
    iget v13, v5, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Rect;->left:I

    sub-int v11, v13, v14

    .line 1660
    .local v11, "xDiff":I
    iget v13, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v11

    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 1661
    iget v13, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v11

    iput v13, v4, Landroid/graphics/Rect;->right:I

    .line 1664
    iget v13, v5, Landroid/graphics/Point;->y:I

    iget v14, v4, Landroid/graphics/Rect;->top:I

    sub-int v12, v13, v14

    .line 1665
    .local v12, "yDiff":I
    iget v13, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v12

    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 1666
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v12

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 1668
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_54

    .line 1669
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_54
.end method

.method private calculateToolkitWindowSize(I)Landroid/graphics/Rect;
    .registers 8
    .param p1, "windowMode"    # I

    .prologue
    .line 1743
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
    .registers 10
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
    .local p1, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v7, 0x40

    .line 990
    const/4 v0, 0x0

    .line 991
    .local v0, "emptyZone":I
    const/4 v3, 0x0

    .line 994
    .local v3, "usedZone":I
    if-eqz p1, :cond_1c

    .line 995
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 996
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    goto :goto_a

    .line 1001
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    if-eqz v3, :cond_3d

    .line 1002
    xor-int/lit8 v4, v3, -0x1

    and-int/lit8 v0, v4, 0xf

    .line 1003
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1004
    and-int/lit8 v4, v0, 0x3

    if-eqz v4, :cond_3e

    .line 1006
    and-int/lit8 v0, v0, -0xd

    .line 1007
    and-int/lit8 v4, v0, 0x3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3c

    .line 1009
    :try_start_30
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_3a

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x20

    if-ne v4, v6, :cond_3c

    .line 1011
    :cond_3a
    and-int/lit8 v0, v0, -0x3

    .line 1020
    :cond_3c
    :goto_3c
    monitor-exit v5

    .line 1022
    :cond_3d
    return v0

    .line 1013
    :cond_3e
    and-int/lit8 v4, v0, 0xc

    const/16 v6, 0xc

    if-ne v4, v6, :cond_3c

    .line 1016
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_4e

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x10

    if-ne v4, v6, :cond_3c

    .line 1018
    :cond_4e
    and-int/lit8 v0, v0, -0x9

    goto :goto_3c

    .line 1020
    :catchall_51
    move-exception v4

    monitor-exit v5
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_51

    throw v4
.end method

.method public static getSelf()Lcom/android/server/am/MultiWindowManagerService;
    .registers 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    .line 553
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 554
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 555
    return-void
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 559
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 560
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

    .line 565
    :goto_30
    return-void

    .line 564
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

    .line 568
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    .line 569
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

    .line 572
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 576
    :goto_3d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 578
    return-void

    .line 574
    :cond_4a
    iput v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    goto :goto_3d
.end method

.method private initMinimizeInfo(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "callback"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 541
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 542
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 543
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 544
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_21

    .line 545
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/MultiWindowManagerService$Movement;

    invoke-direct {v3, p0, v4, v4}, Lcom/android/server/am/MultiWindowManagerService$Movement;-><init>(Lcom/android/server/am/MultiWindowManagerService;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 547
    :cond_21
    return-void
.end method

.method private removeMinimizeCallback(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "callback"    # Landroid/os/IBinder;

    .prologue
    .line 532
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 533
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_27

    .line 534
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 535
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 533
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 538
    :cond_27
    return-void
.end method

.method private updateWindowRects()V
    .registers 15

    .prologue
    const/4 v9, 0x0

    .line 1934
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1935
    .local v0, "fullscreen":Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1937
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v7

    .line 1938
    .local v7, "realStatusBarHeight":I
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 1939
    .local v2, "iDeviceWidth":I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 1940
    .local v1, "iDeviceHeight":I
    div-int/lit8 v10, v1, 0x2

    add-int v4, v10, v7

    .line 1941
    .local v4, "iHeightBoundary":I
    div-int/lit8 v5, v2, 0x2

    .line 1942
    .local v5, "iWidthBoundary":I
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10500f4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    float-to-int v8, v10

    .line 1943
    .local v8, "sCenterBarHalfSize":I
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105010c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    .line 1944
    .local v3, "iFrameCenterMargin":I
    if-le v2, v1, :cond_a0

    const/4 v6, 0x1

    .line 1946
    .local v6, "landscape":Z
    :goto_39
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1947
    :try_start_3c
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v11, :cond_48

    .line 1948
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v11, Landroid/graphics/Point;->x:I

    .line 1949
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v11, Landroid/graphics/Point;->y:I

    .line 1951
    :cond_48
    monitor-exit v10
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_a2

    .line 1953
    if-eqz v6, :cond_a5

    .line 1954
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v5, v8

    add-int/2addr v11, v3

    sub-int v12, v4, v8

    invoke-direct {v10, v9, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    .line 1955
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v4, v8

    sub-int v12, v5, v8

    add-int/2addr v12, v3

    add-int v13, v1, v7

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    .line 1956
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v5, v8

    sub-int/2addr v11, v3

    sub-int v12, v4, v8

    invoke-direct {v10, v11, v9, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    .line 1957
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v5, v8

    sub-int/2addr v10, v3

    add-int v11, v4, v8

    add-int v12, v1, v7

    invoke-direct {v9, v10, v11, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    .line 1965
    :goto_7f
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    .line 1966
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1968
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    .line 1969
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1970
    return-void

    .end local v6    # "landscape":Z
    :cond_a0
    move v6, v9

    .line 1944
    goto :goto_39

    .line 1951
    .restart local v6    # "landscape":Z
    :catchall_a2
    move-exception v9

    :try_start_a3
    monitor-exit v10
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v9

    .line 1959
    :cond_a5
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v5, v8

    sub-int v12, v4, v8

    add-int/2addr v12, v3

    invoke-direct {v10, v9, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    .line 1960
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v4, v8

    sub-int/2addr v11, v3

    sub-int v12, v5, v8

    add-int v13, v1, v7

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    .line 1961
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v5, v8

    sub-int v12, v4, v8

    add-int/2addr v12, v3

    invoke-direct {v10, v11, v9, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    .line 1962
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
    .registers 19
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
    .line 1084
    .local p2, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1085
    .local v8, "taskId":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1086
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1087
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v13, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1088
    .local v5, "realActivity":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 1090
    .local v4, "popupWindowRect":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 1092
    .local v10, "topWinInfo":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_aa

    .line 1093
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 1094
    .local v9, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_aa

    .line 1095
    iget-object v13, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v13, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v10

    .line 1097
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v13}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v13

    const/high16 v14, 0x1000000

    if-ne v13, v14, :cond_90

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getWindowMode()I

    move-result v13

    if-nez v13, :cond_90

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v13, :cond_90

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v14, 0x40000

    and-int/2addr v13, v14

    if-nez v13, :cond_90

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_6c

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/am/MultiWindowManagerService;->isSupportApp(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_90

    .line 1102
    :cond_6c
    iget v13, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v13}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v13

    const/high16 v14, 0x2000000

    if-ne v13, v14, :cond_90

    .line 1103
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v14, 0x4c0000

    and-int/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1104
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v14, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v15, -0x4c0001

    and-int/2addr v14, v15

    or-int/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1108
    :cond_90
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v13}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v13

    const/high16 v14, 0x2000000

    if-ne v13, v14, :cond_aa

    .line 1109
    iget v13, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v13, v13, 0x800

    if-eqz v13, :cond_aa

    .line 1110
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "popupWindowRect":Landroid/graphics/Rect;
    check-cast v4, Landroid/graphics/Rect;

    .line 1116
    .end local v9    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "popupWindowRect":Landroid/graphics/Rect;
    :cond_aa
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1117
    :try_start_af
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 1118
    .local v11, "winInfodefault":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 1119
    .local v7, "taskBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1121
    .local v1, "cmpBundle":Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v13, v13, 0xf

    if-eqz v13, :cond_125

    .line 1122
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1137
    :cond_e4
    :goto_e4
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v13, v13, 0x2000

    if-eqz v13, :cond_fb

    .line 1138
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1141
    :cond_fb
    if-eqz v7, :cond_150

    .line 1142
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1147
    :goto_100
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1148
    .end local v11    # "winInfodefault":Landroid/os/Bundle;
    .local v12, "winInfodefault":Landroid/os/Bundle;
    if-nez v1, :cond_15c

    .line 1149
    invoke-virtual {v3}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v13

    if-nez v13, :cond_11c

    if-nez v4, :cond_11c

    .line 1150
    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 1151
    .local v6, "rect":Landroid/graphics/Rect;
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v12, v13, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1153
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_11c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v13, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    :goto_123
    monitor-exit v14

    .line 1158
    return-void

    .line 1123
    .end local v12    # "winInfodefault":Landroid/os/Bundle;
    .restart local v11    # "winInfodefault":Landroid/os/Bundle;
    :cond_125
    invoke-virtual {v3}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v13

    if-nez v13, :cond_e4

    .line 1126
    const/4 v6, 0x0

    .line 1127
    .restart local v6    # "rect":Landroid/graphics/Rect;
    if-eqz v4, :cond_13c

    .line 1128
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "rect":Landroid/graphics/Rect;
    invoke-direct {v6, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1134
    .restart local v6    # "rect":Landroid/graphics/Rect;
    :goto_133
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v11, v13, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_e4

    .line 1157
    .end local v1    # "cmpBundle":Landroid/os/Bundle;
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v7    # "taskBundle":Landroid/os/Bundle;
    .end local v11    # "winInfodefault":Landroid/os/Bundle;
    :catchall_139
    move-exception v13

    monitor-exit v14
    :try_end_13b
    .catchall {:try_start_af .. :try_end_13b} :catchall_139

    throw v13

    .line 1129
    .restart local v1    # "cmpBundle":Landroid/os/Bundle;
    .restart local v6    # "rect":Landroid/graphics/Rect;
    .restart local v7    # "taskBundle":Landroid/os/Bundle;
    .restart local v11    # "winInfodefault":Landroid/os/Bundle;
    :cond_13c
    if-eqz v7, :cond_147

    .line 1130
    :try_start_13e
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6    # "rect":Landroid/graphics/Rect;
    check-cast v6, Landroid/graphics/Rect;

    .restart local v6    # "rect":Landroid/graphics/Rect;
    goto :goto_133

    .line 1132
    :cond_147
    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6    # "rect":Landroid/graphics/Rect;
    check-cast v6, Landroid/graphics/Rect;

    .restart local v6    # "rect":Landroid/graphics/Rect;
    goto :goto_133

    .line 1144
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_100

    .line 1155
    .end local v11    # "winInfodefault":Landroid/os/Bundle;
    .restart local v12    # "winInfodefault":Landroid/os/Bundle;
    :cond_15c
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_15f
    .catchall {:try_start_13e .. :try_end_15f} :catchall_139

    goto :goto_123
.end method

.method public applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 773
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v0, :cond_1d

    .line 774
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiWindowManagerService;->getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v0

    sget v1, Lcom/android/server/am/MultiWindowManagerService;->LIMIT_NUM_OF_MULTI_INSTANCE:I

    if-lt v0, v1, :cond_1d

    .line 775
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x8000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 778
    :cond_1d
    return-void
.end method

.method public applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "callerRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "calleeRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/high16 v4, 0x400000

    const/4 v3, 0x0

    .line 738
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "open_multi_window_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4d

    .line 740
    const-string v1, "android"

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 741
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 742
    .local v0, "index":I
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_43

    .line 743
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    check-cast p1, Lcom/android/server/am/ActivityRecord;

    .line 747
    .end local v0    # "index":I
    .restart local p1    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    :cond_43
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 770
    :cond_4d
    :goto_4d
    return-void

    .line 751
    :cond_4e
    iget-boolean v1, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v1, :cond_58

    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->skipFullScreenCheck(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :cond_58
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v1, :cond_4d

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 752
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_4d

    iget v1, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_4d

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_4d

    .line 753
    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    const-string v1, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    const-string v1, "com.android.gallery.action.SEARCH_VIEW"

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    const-string v1, "com.sec.android.app.music.intent.action.PLAY_VIA"

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 757
    :cond_ac
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c2

    .line 758
    iget v1, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v2, 0x4c0000

    and-int/2addr v1, v2

    iput v1, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 759
    iget v1, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v2, 0x200000c

    or-int/2addr v1, v2

    iput v1, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 762
    :cond_c2
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 763
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v1, :cond_4d

    .line 764
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_4d
.end method

.method public arrangeToolkitWindowInfos(IILjava/util/ArrayList;)V
    .registers 10
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
    .line 1922
    .local p3, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1923
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_33

    .line 1924
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1925
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_30

    .line 1926
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    .line 1927
    .local v3, "winInfo":Landroid/os/Bundle;
    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v4, v4, -0x10

    iput v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1928
    const-string v4, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1923
    .end local v3    # "winInfo":Landroid/os/Bundle;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1931
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_33
    return-void
.end method

.method public arrangeWindowInfo(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "windowMode"    # I
    .param p2, "winInfo"    # Landroid/os/Bundle;

    .prologue
    .line 2015
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2016
    :try_start_3
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    .line 2017
    .local v0, "mode":I
    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_d

    .line 2018
    monitor-exit v3

    .line 2028
    :goto_c
    return-void

    .line 2020
    :cond_d
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 2022
    .local v1, "options":I
    and-int/lit8 v2, p1, 0xf

    if-eqz v2, :cond_23

    .line 2023
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2027
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

    .line 2024
    .restart local v0    # "mode":I
    .restart local v1    # "options":I
    :cond_23
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_1e

    .line 2025
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
    .registers 19
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
    .line 1850
    .local p3, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1851
    .local v2, "currentUserId":I
    iget-object v13, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1852
    :try_start_7
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1853
    .local v4, "fullscreen":Landroid/graphics/Point;
    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1855
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1856
    .local v1, "N":I
    const/4 v3, 0x0

    .line 1857
    .local v3, "divideCount":I
    const/4 v7, 0x0

    .line 1859
    .local v7, "j":I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1860
    .local v10, "savedWindowInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/am/ActivityRecord;Ljava/lang/Integer;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1861
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget v12, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v12, v2, :cond_1e

    .line 1862
    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 1917
    .end local v1    # "N":I
    .end local v3    # "divideCount":I
    .end local v4    # "fullscreen":Landroid/graphics/Point;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "j":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "savedWindowInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/am/ActivityRecord;Ljava/lang/Integer;>;"
    :catchall_38
    move-exception v12

    monitor-exit v13
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v12

    .line 1866
    .restart local v1    # "N":I
    .restart local v3    # "divideCount":I
    .restart local v4    # "fullscreen":Landroid/graphics/Point;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "j":I
    .restart local v10    # "savedWindowInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/am/ActivityRecord;Ljava/lang/Integer;>;"
    :cond_3b
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_3d
    if-ltz v5, :cond_b7

    .line 1867
    :try_start_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1868
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    const/16 p2, 0x4

    .line 1869
    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v12, v12, 0xf

    if-eqz v12, :cond_51

    .line 1870
    const/16 p2, 0x8

    .line 1873
    :cond_51
    sparse-switch p2, :sswitch_data_116

    .line 1866
    :goto_54
    add-int/lit8 v5, v5, -0x1

    goto :goto_3d

    .line 1875
    :sswitch_57
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v12, v14}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v11

    .line 1877
    .local v11, "winInfo":Landroid/os/Bundle;
    move/from16 v0, p1

    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_6e

    .line 1878
    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-direct {p0, v12, v11, v4}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(ILandroid/os/Bundle;Landroid/graphics/Point;)V

    .line 1880
    :cond_6e
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v12, v14, v11}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    goto :goto_54

    .line 1883
    .end local v11    # "winInfo":Landroid/os/Bundle;
    :sswitch_7a
    const/4 v3, 0x2

    .line 1884
    rem-int/lit8 v12, v1, 0x2

    if-nez v12, :cond_b2

    const/4 v7, 0x1

    .line 1885
    :goto_80
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v12, v14}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v11

    .line 1887
    .restart local v11    # "winInfo":Landroid/os/Bundle;
    const/high16 v12, 0x10000000

    and-int v12, v12, p1

    if-eqz v12, :cond_a2

    .line 1888
    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v12, v12, -0x10

    iput v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1889
    iget v14, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    rem-int v12, v7, v3

    if-nez v12, :cond_b4

    const/4 v12, 0x3

    :goto_9f
    or-int/2addr v12, v14

    iput v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1892
    :cond_a2
    const-string v12, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v14, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, v14}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1894
    add-int/lit8 v12, v7, 0x1

    rem-int v7, v12, v3

    goto :goto_54

    .line 1884
    .end local v11    # "winInfo":Landroid/os/Bundle;
    :cond_b2
    const/4 v7, 0x0

    goto :goto_80

    .line 1889
    .restart local v11    # "winInfo":Landroid/os/Bundle;
    :cond_b4
    const/16 v12, 0xc

    goto :goto_9f

    .line 1898
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "winInfo":Landroid/os/Bundle;
    :cond_b7
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_bb
    :goto_bb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1899
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1900
    .local v9, "savedWindowInfo":Ljava/lang/Integer;
    if-eqz v9, :cond_bb

    .line 1901
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_bb

    .line 1905
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "savedWindowInfo":Ljava/lang/Integer;
    :cond_d6
    move/from16 v0, p1

    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_e3

    .line 1906
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 1908
    :cond_e3
    const/4 v5, 0x0

    :goto_e4
    if-ge v5, v1, :cond_114

    .line 1909
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1910
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v12, v12, 0x2000

    if-eqz v12, :cond_111

    .line 1911
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v12, v14}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v11

    .line 1912
    .restart local v11    # "winInfo":Landroid/os/Bundle;
    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v12, v12, -0x10

    iput v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1913
    const-string v12, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v14, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-direct {p0, v14}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1908
    .end local v11    # "winInfo":Landroid/os/Bundle;
    :cond_111
    add-int/lit8 v5, v5, 0x1

    goto :goto_e4

    .line 1917
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_114
    monitor-exit v13
    :try_end_115
    .catchall {:try_start_3f .. :try_end_115} :catchall_38

    .line 1919
    return-void

    .line 1873
    :sswitch_data_116
    .sparse-switch
        0x4 -> :sswitch_57
        0x8 -> :sswitch_7a
    .end sparse-switch
.end method

.method public calculateCenterbarPoint(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Point;
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 1747
    iget v8, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v8, 0xf

    .line 1748
    .local v7, "zoneInfo":I
    if-eqz v7, :cond_12

    const/16 v8, 0xc

    if-eq v7, v8, :cond_12

    if-eq v7, v10, :cond_12

    const/16 v8, 0x8

    if-ne v7, v8, :cond_15

    .line 1752
    :cond_12
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 1789
    :goto_14
    return-object v1

    .line 1755
    :cond_15
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v4, v8, Landroid/content/res/Configuration;->orientation:I

    .line 1756
    .local v4, "orientation":I
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    .line 1757
    .local v6, "winInfo":Landroid/os/Bundle;
    const-string v8, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1759
    .local v3, "lastSize":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1760
    .local v1, "centerBarPoint":Landroid/graphics/Point;
    const/4 v0, 0x0

    .line 1761
    .local v0, "boundary":I
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500f4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    float-to-int v5, v8

    .line 1762
    .local v5, "sCenterBarHalfSize":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1763
    .local v2, "fullscreen":Landroid/graphics/Point;
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1764
    if-eqz v3, :cond_64

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    if-ne v8, v9, :cond_6c

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Point;->x:I

    if-ne v8, v9, :cond_6c

    .line 1765
    :cond_64
    const-string v8, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3    # "lastSize":Landroid/graphics/Rect;
    check-cast v3, Landroid/graphics/Rect;

    .line 1768
    .restart local v3    # "lastSize":Landroid/graphics/Rect;
    :cond_6c
    if-eqz v3, :cond_80

    .line 1769
    const/4 v8, 0x1

    if-ne v4, v8, :cond_91

    .line 1770
    if-ne v7, v11, :cond_83

    .line 1771
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 1772
    new-instance v1, Landroid/graphics/Point;

    .end local v1    # "centerBarPoint":Landroid/graphics/Point;
    iget v8, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v8, 0x2

    add-int v9, v0, v5

    invoke-direct {v1, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 1788
    .restart local v1    # "centerBarPoint":Landroid/graphics/Point;
    :cond_80
    :goto_80
    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    goto :goto_14

    .line 1774
    :cond_83
    iget v0, v3, Landroid/graphics/Rect;->right:I

    .line 1775
    new-instance v1, Landroid/graphics/Point;

    .end local v1    # "centerBarPoint":Landroid/graphics/Point;
    add-int v8, v0, v5

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .restart local v1    # "centerBarPoint":Landroid/graphics/Point;
    goto :goto_80

    .line 1777
    :cond_91
    if-ne v4, v10, :cond_80

    .line 1778
    if-ne v7, v11, :cond_a8

    .line 1779
    iget v0, v3, Landroid/graphics/Rect;->right:I

    .line 1780
    new-instance v1, Landroid/graphics/Point;

    .end local v1    # "centerBarPoint":Landroid/graphics/Point;
    add-int v8, v0, v5

    iget v9, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v9, v9, 0x2

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v1, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .restart local v1    # "centerBarPoint":Landroid/graphics/Point;
    goto :goto_80

    .line 1782
    :cond_a8
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 1783
    new-instance v1, Landroid/graphics/Point;

    .end local v1    # "centerBarPoint":Landroid/graphics/Point;
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int v9, v0, v5

    invoke-direct {v1, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .restart local v1    # "centerBarPoint":Landroid/graphics/Point;
    goto :goto_80
.end method

.method public calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .registers 5
    .param p1, "splitZone"    # I

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowRects()V

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 235
    .local v0, "result":Landroid/graphics/Rect;
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 237
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 239
    :cond_12
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 241
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 243
    :cond_1c
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_26

    .line 245
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 247
    :cond_26
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_31

    .line 249
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 252
    :cond_31
    return-object v0
.end method

.method public checkBehaviorBasedLaunch()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    return v0
.end method

.method public checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "returnRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v3, v3}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 203
    .local v0, "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MultiWindowManagerService;->checkWindowInfos(Ljava/util/ArrayList;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 204
    return-object v1
.end method

.method public checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z
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
            ")Z"
        }
    .end annotation

    .prologue
    .line 1070
    .local p1, "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 1071
    .local v4, "zoneInfo":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1072
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_7
    if-ltz v3, :cond_17

    .line 1073
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1074
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget v5, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    .line 1072
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 1076
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_17
    iget v5, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    .line 1077
    .local v2, "currentWindowMode":I
    const/16 v5, 0xf

    if-eq v4, v5, :cond_25

    const/high16 v5, 0x2000000

    if-ne v2, v5, :cond_27

    .line 1078
    :cond_25
    const/4 v5, 0x1

    .line 1080
    :goto_26
    return v5

    :cond_27
    const/4 v5, 0x0

    goto :goto_26
.end method

.method public checkIgnoreIntentWindowMode()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    return v0
.end method

.method public checkSupportAllApps()Z
    .registers 2

    .prologue
    .line 113
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
    .line 1793
    .local p1, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-nez p1, :cond_4

    .line 1794
    const/4 v5, 0x0

    .line 1846
    :goto_3
    return-object v5

    .line 1797
    :cond_4
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->orientation:I

    .line 1798
    .local v3, "orientation":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1799
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_14

    .line 1803
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    .line 1804
    .local v6, "winInfo":Landroid/os/Bundle;
    const-string v9, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1805
    .local v1, "minimumSize":Landroid/graphics/Rect;
    if-eqz v1, :cond_14

    .line 1809
    const/4 v8, 0x0

    .line 1810
    .local v8, "zoneRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1811
    .local v5, "reviseRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 1812
    .local v2, "offset":I
    iget v9, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v9, 0xf

    .line 1813
    .local v7, "zoneInfo":I
    const/4 v9, 0x3

    if-ne v7, v9, :cond_7c

    .line 1814
    invoke-virtual {p0, v7}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 1815
    const/4 v9, 0x1

    if-ne v3, v9, :cond_68

    .line 1816
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int v2, v9, v10

    .line 1817
    if-lez v2, :cond_61

    .line 1818
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1841
    :cond_61
    :goto_61
    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    goto :goto_3

    .line 1820
    :cond_68
    const/4 v9, 0x2

    if-ne v3, v9, :cond_61

    .line 1821
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v2, v9, v10

    .line 1822
    if-lez v2, :cond_61

    .line 1823
    const/4 v9, 0x0

    invoke-virtual {v5, v2, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_61

    .line 1826
    :cond_7c
    const/16 v9, 0xc

    if-ne v7, v9, :cond_61

    .line 1827
    invoke-virtual {p0, v7}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 1828
    const/4 v9, 0x1

    if-ne v3, v9, :cond_99

    .line 1829
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int v2, v9, v10

    .line 1830
    if-lez v2, :cond_61

    .line 1831
    const/4 v9, 0x0

    neg-int v10, v2

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_61

    .line 1833
    :cond_99
    const/4 v9, 0x2

    if-ne v3, v9, :cond_61

    .line 1834
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v2, v9, v10

    .line 1835
    if-lez v2, :cond_61

    .line 1836
    neg-int v9, v2

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_61

    .line 1846
    .end local v1    # "minimumSize":Landroid/graphics/Rect;
    .end local v2    # "offset":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "reviseRect":Landroid/graphics/Rect;
    .end local v6    # "winInfo":Landroid/os/Bundle;
    .end local v7    # "zoneInfo":I
    .end local v8    # "zoneRect":Landroid/graphics/Rect;
    :cond_ae
    const/4 v5, 0x0

    goto/16 :goto_3
.end method

.method public dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 418
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 420
    .local v0, "action":I
    packed-switch v0, :pswitch_data_18

    .line 437
    :goto_7
    return-void

    .line 422
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->initMinimizeInfo(Landroid/os/IBinder;)V

    .line 423
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 427
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 431
    :pswitch_13
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 420
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
    .line 451
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_33

    .line 452
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

    .line 520
    :goto_32
    return-void

    .line 458
    :cond_33
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 459
    :try_start_36
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    const-string v10, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    const-string v10, "mCenterBarPoint = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v10, :cond_94

    .line 465
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 470
    :goto_53
    const-string v10, "ArrangeState = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_9d

    const-string v10, "ARRANGE_SPLITED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    :goto_63
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    const-string v10, "Total MultiWindowServiceCallback size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 481
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7c
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_d8

    .line 483
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    .line 484
    .local v2, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget-object v10, v2, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 482
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 467
    .end local v2    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    .end local v5    # "i":I
    :cond_94
    const-string v10, "null"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53

    .line 519
    :catchall_9a
    move-exception v10

    monitor-exit v11
    :try_end_9c
    .catchall {:try_start_36 .. :try_end_9c} :catchall_9a

    throw v10

    .line 472
    :cond_9d
    :try_start_9d
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_a9

    const-string v10, "ARRANGE_SPLITED3R"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 473
    :cond_a9
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_b5

    const-string v10, "ARRANGE_SPLITED3L"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 474
    :cond_b5
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_c7

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_c7

    .line 475
    const-string v10, "ARRANGE_SPLITED4"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 476
    :cond_c7
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_d2

    const-string v10, "ARRANGE_DEFINED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 477
    :cond_d2
    const-string v10, "ARRANGE_UNDEFINED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 487
    .restart local v5    # "i":I
    :cond_d8
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    const-string v10, "MinimizeCallback size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 489
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    const/4 v5, 0x0

    :goto_f1
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_109

    .line 491
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    .line 492
    .local v1, "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    iget-object v10, v1, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 490
    add-int/lit8 v5, v5, 0x1

    goto :goto_f1

    .line 495
    .end local v1    # "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    :cond_109
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    const-string v10, "mWindowInfoMapByComponent size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 497
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 499
    .local v7, "itComponent":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/os/Bundle;>;>;"
    :goto_12b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_154

    .line 500
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 501
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/os/Bundle;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 502
    .local v9, "name":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 503
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v10, "No : "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 504
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 505
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12b

    .line 507
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

    .line 508
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 510
    .local v8, "itTask":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;>;"
    :goto_171
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19a

    .line 511
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 512
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 513
    .local v6, "id":Ljava/lang/Integer;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 514
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v10, "No : "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 515
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 516
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_171

    .line 518
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    .end local v6    # "id":Ljava/lang/Integer;
    :cond_19a
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
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
    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowRects()V

    .line 257
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v12

    .line 259
    .local v12, "realStatusBarHeight":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 260
    .local v4, "fullscreen":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 262
    const/4 v11, 0x0

    .line 263
    .local v11, "maxBoundary":I
    if-gez p3, :cond_20

    const/16 p3, 0x0

    .line 264
    :cond_20
    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1f2

    .line 265
    move/from16 v3, p3

    .line 266
    .local v3, "compareValue":I
    iget v11, v4, Landroid/graphics/Point;->y:I

    .line 273
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

    .line 278
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

    .line 284
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

    .line 290
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

    .line 297
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

    .line 306
    .local v5, "halfSplit":[Landroid/util/Pair;
    const/16 v16, 0x0

    .line 308
    .local v16, "zoneInfos":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    sparse-switch p1, :sswitch_data_26a

    .line 366
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

    .line 367
    .local v15, "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    iget-object v13, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    .line 368
    .local v13, "rect":Landroid/graphics/Rect;
    add-int v17, p3, v12

    move/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_263

    .line 369
    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 373
    .end local v13    # "rect":Landroid/graphics/Rect;
    .end local v15    # "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :goto_1f1
    return v17

    .line 268
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

    .line 269
    .restart local v3    # "compareValue":I
    iget v11, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_32

    .line 314
    .restart local v5    # "halfSplit":[Landroid/util/Pair;
    .restart local v6    # "halfSplit3L":[Landroid/util/Pair;
    .restart local v7    # "halfSplit3R":[Landroid/util/Pair;
    .restart local v8    # "halfSplit4":[Landroid/util/Pair;
    .restart local v14    # "split":[Landroid/util/Pair;
    .restart local v16    # "zoneInfos":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :sswitch_1f8
    move-object/from16 v16, v14

    .line 315
    goto :goto_1cf

    .line 317
    :sswitch_1fb
    if-nez p5, :cond_21e

    .line 318
    move/from16 v0, p4

    if-le v3, v0, :cond_20a

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_20a

    .line 319
    move-object/from16 v16, v14

    goto :goto_1cf

    .line 321
    :cond_20a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_21b

    .line 322
    move-object/from16 v16, v5

    goto :goto_1cf

    .line 324
    :cond_21b
    move-object/from16 v16, v14

    goto :goto_1cf

    .line 328
    :cond_21e
    move-object/from16 v16, v14

    .line 330
    goto :goto_1cf

    .line 332
    :sswitch_221
    if-nez p5, :cond_233

    .line 333
    move/from16 v0, p4

    if-le v3, v0, :cond_230

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_230

    .line 334
    move-object/from16 v16, v14

    goto :goto_1cf

    .line 336
    :cond_230
    move-object/from16 v16, v5

    goto :goto_1cf

    .line 339
    :cond_233
    move-object/from16 v16, v6

    .line 341
    goto :goto_1cf

    .line 343
    :sswitch_236
    if-nez p5, :cond_248

    .line 344
    move/from16 v0, p4

    if-le v3, v0, :cond_245

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_245

    .line 345
    move-object/from16 v16, v14

    goto :goto_1cf

    .line 347
    :cond_245
    move-object/from16 v16, v5

    goto :goto_1cf

    .line 350
    :cond_248
    move-object/from16 v16, v7

    .line 352
    goto :goto_1cf

    .line 354
    :sswitch_24b
    if-nez p5, :cond_25f

    .line 355
    move/from16 v0, p4

    if-le v3, v0, :cond_25b

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_25b

    .line 356
    move-object/from16 v16, v14

    goto/16 :goto_1cf

    .line 358
    :cond_25b
    move-object/from16 v16, v5

    goto/16 :goto_1cf

    .line 361
    :cond_25f
    move-object/from16 v16, v8

    goto/16 :goto_1cf

    .line 366
    .restart local v2    # "arr$":[Landroid/util/Pair;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v13    # "rect":Landroid/graphics/Rect;
    .restart local v15    # "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_263
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1d3

    .line 373
    .end local v13    # "rect":Landroid/graphics/Rect;
    .end local v15    # "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_267
    const/16 v17, 0x0

    goto :goto_1f1

    .line 308
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
    .line 228
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppListPosition:I

    return v0
.end method

.method public getArrangeState()I
    .registers 3

    .prologue
    .line 977
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 978
    :try_start_3
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    monitor-exit v1

    return v0

    .line 979
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
    .line 214
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    monitor-exit v1

    return-object v0

    .line 216
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
    .line 851
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    :try_start_3
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    monitor-exit v1

    return v0

    .line 853
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 31
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "topWinInfo"    # Landroid/os/Bundle;

    .prologue
    .line 1532
    const/4 v6, 0x0

    .line 1533
    .local v6, "defWidth":I
    const/4 v4, 0x0

    .line 1534
    .local v4, "defHeight":I
    const/4 v13, 0x0

    .line 1535
    .local v13, "minWidth":I
    const/4 v11, 0x0

    .line 1536
    .local v11, "minHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10500f4

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1538
    .local v17, "sCenterBarHalfSize":I
    const/16 v16, 0x0

    .line 1539
    .local v16, "r":Landroid/content/res/Resources;
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 1540
    .local v19, "winInfo":Landroid/os/Bundle;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 1541
    .local v8, "fullscreen":Landroid/graphics/Point;
    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1542
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1544
    .local v10, "metaData":Landroid/os/Bundle;
    :goto_45
    :try_start_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v16

    .line 1545
    if-eqz v10, :cond_b7

    .line 1546
    const-string v21, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1547
    .local v5, "defSizeId":I
    if-eqz v5, :cond_72

    .line 1548
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v6, v0

    .line 1550
    :cond_72
    const-string v21, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1551
    if-eqz v5, :cond_89

    .line 1552
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v4, v0

    .line 1555
    :cond_89
    const-string v21, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1556
    .local v12, "minSizeId":I
    if-eqz v12, :cond_a0

    .line 1557
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 1559
    :cond_a0
    const-string v21, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1560
    if-eqz v12, :cond_b7

    .line 1561
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_b3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_b3} :catch_180
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_b3} :catch_186

    move-result v21

    move/from16 v0, v21

    float-to-int v11, v0

    .line 1570
    .end local v5    # "defSizeId":I
    .end local v12    # "minSizeId":I
    :cond_b7
    :goto_b7
    if-eqz v6, :cond_c1

    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v6, v0, :cond_c5

    :cond_c1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 1571
    :cond_c5
    if-eqz v4, :cond_cf

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v4, v0, :cond_d3

    :cond_cf
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 1573
    :cond_d3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_e5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v21, v0

    sub-int v13, v21, v17

    .line 1574
    :cond_e5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_f7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v21, v0

    sub-int v11, v21, v17

    .line 1576
    :cond_f7
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    sub-int v21, v21, v6

    shr-int/lit8 v9, v21, 0x1

    .line 1577
    .local v9, "left":I
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    sub-int v21, v21, v4

    shr-int/lit8 v21, v21, 0x1

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v22

    add-int v18, v21, v22

    .line 1578
    .local v18, "top":I
    new-instance v20, Landroid/graphics/Rect;

    add-int v21, v9, v6

    add-int v22, v18, v4

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1579
    .local v20, "windowRect":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    add-int v21, v9, v13

    add-int v22, v18, v11

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v14, v9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1582
    .local v14, "minimumRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 1584
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v15

    .line 1585
    .local v15, "overridePosition":Landroid/graphics/Rect;
    if-eqz v15, :cond_145

    .line 1586
    const-string v21, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1589
    :cond_145
    const-string v21, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1590
    const-string v21, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1591
    const-string v21, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1593
    return-object v19

    .line 1542
    .end local v9    # "left":I
    .end local v10    # "metaData":Landroid/os/Bundle;
    .end local v14    # "minimumRect":Landroid/graphics/Rect;
    .end local v15    # "overridePosition":Landroid/graphics/Rect;
    .end local v18    # "top":I
    .end local v20    # "windowRect":Landroid/graphics/Rect;
    :cond_17a
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_45

    .line 1564
    .restart local v10    # "metaData":Landroid/os/Bundle;
    :catch_180
    move-exception v7

    .line 1565
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_b7

    .line 1566
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_186
    move-exception v7

    .line 1567
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_b7
.end method

.method public getMinimizeIconState()I
    .registers 2

    .prologue
    .line 446
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    return v0
.end method

.method public getMultiDisplayState()Z
    .registers 3

    .prologue
    .line 893
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    monitor-exit v1

    return v0

    .line 895
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
    .line 878
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 879
    :try_start_3
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    monitor-exit v1

    return v0

    .line 880
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
    .local p1, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 1026
    if-eqz p2, :cond_b

    .line 1027
    iget v5, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_b

    move v0, v4

    .line 1066
    :goto_a
    return v0

    .line 1032
    :cond_b
    const/4 v1, 0x0

    .line 1033
    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x0

    .line 1034
    .local v0, "splitZone":I
    const/4 v2, 0x0

    .line 1035
    .local v2, "topWindowMode":I
    if-eqz p1, :cond_21

    .line 1036
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1037
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    .line 1038
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1039
    .restart local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1043
    :cond_21
    and-int/lit8 v3, v2, 0xf

    .line 1044
    .local v3, "zoneInfo":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1045
    packed-switch v3, :pswitch_data_3c

    .line 1065
    :goto_29
    :pswitch_29
    :try_start_29
    monitor-exit v5

    goto :goto_a

    :catchall_2b
    move-exception v4

    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v4

    .line 1047
    :pswitch_2e
    const/16 v0, 0xc

    .line 1048
    goto :goto_29

    .line 1050
    :pswitch_31
    const/4 v0, 0x3

    .line 1051
    goto :goto_29

    .line 1053
    :pswitch_33
    const/4 v0, 0x2

    .line 1054
    goto :goto_29

    .line 1056
    :pswitch_35
    const/4 v0, 0x1

    .line 1057
    goto :goto_29

    .line 1059
    :pswitch_37
    const/16 v0, 0x8

    .line 1060
    goto :goto_29

    .line 1062
    :pswitch_3a
    const/4 v0, 0x4

    goto :goto_29

    .line 1045
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_33
        :pswitch_35
        :pswitch_2e
        :pswitch_37
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_3a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_31
    .end packed-switch
.end method

.method public getResumedTaskCount()I
    .registers 6

    .prologue
    .line 983
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 984
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 985
    .local v0, "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v2

    return v1

    .line 986
    .end local v0    # "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .registers 13
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 781
    const/4 v1, 0x0

    .line 782
    .local v1, "cls":Landroid/content/ComponentName;
    if-eqz p1, :cond_69

    .line 783
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 784
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v8, :cond_1c

    .line 785
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "cls":Landroid/content/ComponentName;
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    .restart local v1    # "cls":Landroid/content/ComponentName;
    :cond_1c
    :goto_1c
    const/4 v4, 0x0

    .line 792
    .local v4, "nInstance":I
    const/4 v2, 0x0

    .line 793
    .local v2, "cp":Lcom/android/server/am/TaskRecord;
    if-eqz p1, :cond_76

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    :goto_22
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 794
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v8, v8, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 795
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_32
    if-ltz v3, :cond_b2

    .line 796
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v8, v8, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 797
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_66

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v8, v2, :cond_66

    iget v8, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v8, v7, :cond_66

    .line 798
    iget-object v2, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 799
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v8, :cond_84

    .line 800
    if-eqz p1, :cond_7d

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 801
    .local v6, "taskAffinity":Ljava/lang/String;
    :goto_5a
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 802
    add-int/lit8 v4, v4, 0x1

    .line 795
    .end local v6    # "taskAffinity":Ljava/lang/String;
    :cond_66
    :goto_66
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 787
    .end local v0    # "N":I
    .end local v2    # "cp":Lcom/android/server/am/TaskRecord;
    .end local v3    # "i":I
    .end local v4    # "nInstance":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "userId":I
    :cond_69
    if-eqz p2, :cond_1c

    iget-object v8, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_1c

    .line 788
    iget-object v8, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1c

    .line 793
    .restart local v2    # "cp":Lcom/android/server/am/TaskRecord;
    .restart local v4    # "nInstance":I
    :cond_76
    if-eqz p2, :cond_7b

    iget v8, p2, Lcom/android/server/am/TaskRecord;->userId:I

    goto :goto_22

    :cond_7b
    const/4 v8, -0x2

    goto :goto_22

    .line 800
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "userId":I
    :cond_7d
    if-eqz p2, :cond_82

    iget-object v6, p2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    goto :goto_5a

    :cond_82
    const/4 v6, 0x0

    goto :goto_5a

    .line 804
    :cond_84
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_9b

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 806
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 807
    :cond_9b
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v8, :cond_66

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 809
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 814
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_b2
    return v4
.end method

.method public getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "realActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 826
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 827
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 829
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 830
    .local v2, "taskBundle":Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 831
    .local v1, "lastSize":Landroid/graphics/Rect;
    if-nez v1, :cond_4b

    .line 832
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 834
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 835
    .local v0, "cmpBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_4b

    .line 836
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "lastSize":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 837
    .restart local v1    # "lastSize":Landroid/graphics/Rect;
    if-eqz v1, :cond_4b

    .line 838
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 843
    .end local v0    # "cmpBundle":Landroid/os/Bundle;
    :cond_4b
    monitor-exit v4

    .line 846
    .end local v1    # "lastSize":Landroid/graphics/Rect;
    .end local v2    # "taskBundle":Landroid/os/Bundle;
    :goto_4c
    return-object v2

    .line 845
    :cond_4d
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    if-nez v3, :cond_5a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 847
    :catchall_57
    move-exception v3

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v3

    .line 846
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
    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    .line 197
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void
.end method

.method public init()V
    .registers 4

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    .line 171
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultSupportedAppList()V

    .line 172
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadAvoideLaunchStyleAppList()V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadNotSupportScaleAppList()V

    .line 174
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 175
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;

    .line 176
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    .line 177
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    .line 178
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    .line 179
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftY:I

    .line 180
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    .line 181
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    .line 182
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    .line 183
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 184
    .local v0, "fullscreen":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 185
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 186
    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 187
    return-void
.end method

.method public isEmptyZone(Ljava/util/List;I)Z
    .registers 6
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
    .line 1509
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    if-eqz p1, :cond_1b

    .line 1510
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1511
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, 0xf

    and-int/2addr v2, p2

    if-eqz v2, :cond_6

    .line 1512
    const/4 v2, 0x0

    .line 1516
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method public isFixedRatioApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1523
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->isSupportApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1525
    const/4 v0, 0x1

    .line 1528
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

    .line 1486
    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    .line 1494
    :cond_7
    :goto_7
    return v0

    .line 1490
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1491
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .registers 5
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 1474
    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    .line 1482
    :cond_7
    :goto_7
    return v0

    .line 1477
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

    .line 1479
    :cond_26
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1413
    :cond_10
    const/4 v0, 0x1

    .line 1416
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isSupportControlbar()Z
    .registers 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 1408
    :goto_b
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    return v0

    .line 1405
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    goto :goto_b
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z
    .registers 7
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1451
    const/4 v2, 0x0

    .line 1452
    .local v2, "bSupportMultiWindow":Z
    if-eqz p1, :cond_5a

    .line 1453
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

    .line 1455
    :cond_2d
    const/4 v2, 0x1

    .line 1456
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_5a

    .line 1457
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "activityWindowStyle":Ljava/lang/String;
    if-eqz v0, :cond_5a

    .line 1459
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1460
    .local v1, "activityWindowStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1461
    const-string v3, "fullscreenOnly"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1462
    const/4 v2, 0x0

    .line 1470
    .end local v0    # "activityWindowStyle":Ljava/lang/String;
    .end local v1    # "activityWindowStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5a
    return v2
.end method

.method public isSupportPopup(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1420
    const-string v0, "com.sec.android.app.popupuireceiver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1422
    :cond_10
    const/4 v0, 0x1

    .line 1425
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 5
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 1498
    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    .line 1505
    :cond_7
    :goto_7
    return v0

    .line 1501
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

    .line 1502
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 7
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v2, 0x0

    .line 1429
    if-eqz p1, :cond_7

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_8

    .line 1447
    :cond_7
    :goto_7
    return v2

    .line 1433
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

    .line 1435
    :cond_26
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_4f

    .line 1436
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "applicationStyle":Ljava/lang/String;
    if-eqz v0, :cond_4f

    .line 1438
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1439
    .local v1, "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "freestyleOnly"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1444
    .end local v0    # "applicationStyle":Ljava/lang/String;
    .end local v1    # "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4f
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public launchExternalDisplay(Z)V
    .registers 5
    .param p1, "topLaunchExternal"    # Z

    .prologue
    .line 190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 191
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->relaunchExternalActivityLocked(Z)V

    .line 192
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    return-void
.end method

.method public loadAvoideLaunchStyleAppList()V
    .registers 10

    .prologue
    .line 1363
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1364
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1366
    :try_start_a
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1367
    .local v2, "avoidAppList":[Ljava/lang/String;
    if-eqz v2, :cond_28

    .line 1368
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1c
    if-ge v3, v4, :cond_28

    aget-object v1, v0, v3

    .line 1369
    .local v1, "avoidApp":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1373
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "avoidApp":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_28
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070062

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1374
    .local v6, "skipFullScreenList":[Ljava/lang/String;
    if-eqz v6, :cond_47

    .line 1375
    move-object v0, v6

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3a
    if-ge v3, v4, :cond_47

    aget-object v5, v0, v3

    .line 1376
    .local v5, "skipFullScreenApp":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_43} :catch_46

    .line 1375
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1379
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "avoidAppList":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "skipFullScreenApp":Ljava/lang/String;
    .end local v6    # "skipFullScreenList":[Ljava/lang/String;
    :catch_46
    move-exception v7

    .line 1381
    :cond_47
    return-void
.end method

.method public loadDefaultSupportedAppList()V
    .registers 21

    .prologue
    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1295
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x107005c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 1296
    .local v12, "supportAppList":[Ljava/lang/String;
    if-eqz v12, :cond_43

    .line 1297
    move-object v2, v12

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_31
    if-ge v9, v10, :cond_43

    aget-object v11, v2, v9

    .line 1298
    .local v11, "supportApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    .line 1302
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

    const v18, 0x1070068

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 1303
    .local v16, "supportScaleAppList":[Ljava/lang/String;
    if-eqz v16, :cond_6c

    .line 1304
    move-object/from16 v2, v16

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v10, v2

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_5a
    if-ge v9, v10, :cond_6c

    aget-object v15, v2, v9

    .line 1305
    .local v15, "supportScaleApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 1309
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

    const v18, 0x107005d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 1310
    .local v14, "supportMultiInstanceAppList":[Ljava/lang/String;
    if-eqz v14, :cond_95

    .line 1311
    move-object v2, v14

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v10, v2

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_82
    if-ge v9, v10, :cond_95

    aget-object v13, v2, v9

    .line 1312
    .local v13, "supportMultiInstanceApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_91} :catch_94

    .line 1311
    add-int/lit8 v9, v9, 0x1

    goto :goto_82

    .line 1315
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "supportAppList":[Ljava/lang/String;
    .end local v13    # "supportMultiInstanceApp":Ljava/lang/String;
    .end local v14    # "supportMultiInstanceAppList":[Ljava/lang/String;
    .end local v16    # "supportScaleAppList":[Ljava/lang/String;
    :catch_94
    move-exception v17

    .line 1320
    :cond_95
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_MultiWindow_AddOnApp"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1321
    .local v3, "cscAddOnApp":Ljava/lang/String;
    if-eqz v3, :cond_10c

    .line 1322
    new-instance v4, Ljava/util/ArrayList;

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1323
    .local v4, "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_ba
    :goto_ba
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1324
    .local v1, "addOnApp":Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f2

    .line 1325
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_ba

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_ba

    .line 1328
    :cond_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_ba

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    .line 1335
    .end local v1    # "addOnApp":Ljava/lang/String;
    .end local v4    # "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_10c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Framework_AddOnApp4PenWindow"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1336
    .local v5, "cscAddPenWindow":Ljava/lang/String;
    if-eqz v5, :cond_183

    .line 1337
    new-instance v6, Ljava/util/ArrayList;

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1338
    .local v6, "cscAddPenWindowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_131
    :goto_131
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_183

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1339
    .restart local v1    # "addOnApp":Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_169

    .line 1340
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_131

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_131

    .line 1343
    :cond_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_131

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_131

    .line 1349
    .end local v1    # "addOnApp":Ljava/lang/String;
    .end local v6    # "cscAddPenWindowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1351
    :try_start_18c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1070060

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1352
    .local v8, "fixedRatioAppList":[Ljava/lang/String;
    if-eqz v8, :cond_1b5

    .line 1353
    move-object v2, v8

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v10, v2

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1a2
    if-ge v9, v10, :cond_1b5

    aget-object v7, v2, v9

    .line 1354
    .local v7, "fixedRatioApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18c .. :try_end_1b1} :catch_1b4

    .line 1353
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a2

    .line 1357
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "fixedRatioApp":Ljava/lang/String;
    .end local v8    # "fixedRatioAppList":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :catch_1b4
    move-exception v17

    .line 1360
    :cond_1b5
    return-void
.end method

.method public loadDefaultWindowInfo()V
    .registers 8

    .prologue
    .line 1273
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1274
    .local v1, "defaultscreen":Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 1275
    .local v2, "maxScreenSize":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1276
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1278
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 1279
    .local v3, "sCenterBarSize":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 1280
    .local v4, "sStatusBarSize":I
    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1282
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 1283
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 1284
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500f1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 1285
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 1286
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10500f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 1287
    return-void
.end method

.method public loadNotSupportScaleAppList()V
    .registers 8

    .prologue
    .line 1384
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1386
    :try_start_5
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070063

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1387
    .local v4, "notSupportAppList":[Ljava/lang/String;
    if-eqz v4, :cond_24

    .line 1388
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_17
    if-ge v1, v2, :cond_24

    aget-object v3, v0, v1

    .line 1389
    .local v3, "notSupportApp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_20} :catch_23

    .line 1388
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1392
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "notSupportApp":Ljava/lang/String;
    .end local v4    # "notSupportAppList":[Ljava/lang/String;
    :catch_23
    move-exception v5

    .line 1394
    :cond_24
    return-void
.end method

.method public notifyMultiDisplayState(ZZ)Z
    .registers 6
    .param p1, "bIsMultiDisplay"    # Z
    .param p2, "bForced"    # Z

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    if-ne v0, p1, :cond_6

    if-eqz p2, :cond_2c

    .line 860
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

    .line 862
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    .line 863
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$2;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 871
    const/4 v0, 0x1

    .line 873
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

    .line 381
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

    .line 382
    .local v0, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget-object v5, v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 400
    .end local v0    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    :cond_1c
    :goto_1c
    return v3

    .line 387
    :cond_1d
    if-eqz p1, :cond_1c

    .line 388
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;-><init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/IBinder;ILandroid/os/IBinder;)V

    .line 390
    .restart local v0    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    const/4 v5, 0x0

    :try_start_25
    invoke-interface {p1, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_34

    .line 394
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 395
    if-ne p2, v4, :cond_32

    .line 396
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/MultiWindowManagerService;->addMinimizeCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V

    :cond_32
    move v3, v4

    .line 398
    goto :goto_1c

    .line 391
    :catch_34
    move-exception v1

    .line 392
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1c
.end method

.method public removeWindowInfo(I)V
    .registers 5
    .param p1, "taskId"    # I

    .prologue
    .line 1261
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1262
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    monitor-exit v1

    .line 1264
    return-void

    .line 1263
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
    .line 1267
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1268
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    monitor-exit v1

    .line 1270
    return-void

    .line 1269
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public requestShowOverlayTitleBar()V
    .registers 1

    .prologue
    .line 378
    return-void
.end method

.method public rotateCenterBar(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 1998
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    if-ne p1, v1, :cond_5

    .line 2012
    :goto_4
    return-void

    .line 2002
    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2003
    .local v0, "centerBarPoint":Landroid/graphics/Point;
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    .line 2004
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2005
    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_24

    .line 2006
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2007
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2008
    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->applyCenterBarDocking(Landroid/graphics/Point;)V

    .line 2009
    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 2011
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
    .line 224
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppListPosition:I

    .line 225
    return-void
.end method

.method public setCenterBarDirection(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    .line 221
    return-void
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 210
    monitor-exit v1

    .line 211
    return-void

    .line 210
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
    .line 440
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

    .line 443
    return-void
.end method

.method public setMultiDisplayState(Z)V
    .registers 4
    .param p1, "bMultiDisplayState"    # Z

    .prologue
    .line 900
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 901
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    .line 902
    monitor-exit v1

    .line 903
    return-void

    .line 902
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
    .line 885
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 886
    :try_start_3
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    .line 887
    monitor-exit v1

    .line 888
    const/4 v0, 0x1

    return v0

    .line 887
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

    .line 1597
    if-nez p1, :cond_c

    .line 1598
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1599
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1600
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    .line 1601
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    .line 1622
    :cond_b
    :goto_b
    return-void

    .line 1604
    :cond_c
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1605
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    .line 1606
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    .line 1607
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    .line 1609
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    if-nez v1, :cond_40

    .line 1610
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1611
    .local v0, "fullscreen":Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1612
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    if-nez v1, :cond_39

    .line 1613
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1615
    :cond_39
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    goto :goto_b

    .line 1616
    .end local v0    # "fullscreen":Landroid/graphics/Point;
    :cond_40
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    if-nez v1, :cond_b

    .line 1617
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1618
    .restart local v0    # "fullscreen":Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1620
    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    goto :goto_b
.end method

.method public skipFullScreenCheck(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 818
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 819
    const/4 v0, 0x1

    .line 822
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public unRegisterCallback(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "callback"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 404
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 405
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_26

    .line 406
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    .line 407
    .local v0, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget-object v4, v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 408
    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 409
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 410
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizeCallback(Landroid/os/IBinder;)V

    .line 411
    const/4 v3, 0x1

    .line 414
    .end local v0    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    :cond_26
    return v3

    .line 405
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

    .line 908
    const/4 v6, 0x0

    .line 909
    .local v6, "mode":I
    const/4 v7, 0x0

    .line 910
    .local v7, "option":I
    const/4 v0, 0x0

    .line 911
    .local v0, "arrangeState":I
    const/4 v5, 0x0

    .line 912
    .local v5, "isHarfSplit":Z
    const/4 v1, 0x0

    .line 914
    .local v1, "bIsMultiDisplay":Z
    iput v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    .line 916
    if-eqz p1, :cond_6d

    .line 917
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 918
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget v10, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v10}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    .line 919
    iget v10, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v10}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v7

    .line 920
    const/high16 v10, 0x1000000

    if-ne v6, v10, :cond_38

    .line 921
    const/high16 v10, 0x400000

    and-int/2addr v10, v7

    if-eqz v10, :cond_30

    .line 922
    const/4 v0, 0x2

    .line 942
    :cond_30
    :goto_30
    iget v10, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_e

    .line 943
    const/4 v1, 0x1

    goto :goto_e

    .line 924
    :cond_38
    const/high16 v10, 0x2000000

    if-ne v6, v10, :cond_30

    .line 925
    and-int/lit8 v9, v7, 0xf

    .line 926
    .local v9, "zone":I
    if-eqz v9, :cond_30

    .line 927
    and-int/lit8 v0, v0, -0x4

    .line 928
    const/4 v10, 0x3

    if-ne v9, v10, :cond_4a

    if-nez v5, :cond_4a

    .line 929
    or-int/lit8 v0, v0, 0x8

    goto :goto_30

    .line 930
    :cond_4a
    if-ne v9, v11, :cond_52

    .line 931
    and-int/lit8 v0, v0, -0x9

    .line 932
    or-int/lit8 v0, v0, 0x20

    .line 933
    const/4 v5, 0x1

    goto :goto_30

    .line 934
    :cond_52
    const/4 v10, 0x4

    if-ne v9, v10, :cond_30

    .line 935
    and-int/lit8 v0, v0, -0x9

    .line 936
    or-int/lit8 v0, v0, 0x10

    .line 937
    const/4 v5, 0x1

    goto :goto_30

    .line 947
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "zone":I
    :cond_5b
    if-eqz v0, :cond_69

    .line 948
    and-int/lit8 v10, v0, 0x10

    if-eqz v10, :cond_97

    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_97

    .line 950
    const/16 v10, 0x40

    iput v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    .line 956
    :cond_69
    :goto_69
    const/4 v10, 0x0

    invoke-virtual {p0, v1, v10}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiDisplayState(ZZ)Z

    .line 961
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6d
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    iget v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    if-eq v10, v11, :cond_9a

    .line 962
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_79
    :goto_79
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    .line 963
    .local v3, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget v10, v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mType:I

    if-nez v10, :cond_79

    .line 964
    iget-object v10, v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-static {v10}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;

    move-result-object v2

    .line 966
    .local v2, "cb":Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;
    :try_start_8f
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    invoke-interface {v2, v10}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;->onArrangeStateUpdate(I)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_94} :catch_95

    goto :goto_79

    .line 967
    :catch_95
    move-exception v10

    goto :goto_79

    .line 952
    .end local v2    # "cb":Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;
    .end local v3    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    :cond_97
    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    goto :goto_69

    .line 972
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9a
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    iput v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    .line 973
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
    .line 1229
    .local p2, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    .line 1231
    .local v0, "targetWinInfo":Landroid/os/Bundle;
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v1

    const/high16 v2, 0x2000000

    if-ne v1, v2, :cond_25

    .line 1232
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v1, v1, -0x10

    iput v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1233
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1236
    :cond_25
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_36

    .line 1237
    const-string v1, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1239
    :cond_36
    return-void
.end method

.method public updateSplitZoneAfterDestroy(Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z
    .registers 11
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
    .local p2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/high16 v7, 0x4c0000

    const/4 v3, 0x1

    const/16 v6, 0xc

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 1161
    if-eqz p2, :cond_25

    if-eqz p1, :cond_25

    .line 1162
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v1, v4, 0xf

    .line 1163
    .local v1, "zoneInfo":I
    packed-switch v1, :pswitch_data_fa

    .line 1225
    .end local v1    # "zoneInfo":I
    :cond_12
    :goto_12
    :pswitch_12
    return v2

    .line 1165
    .restart local v1    # "zoneInfo":I
    :pswitch_13
    invoke-virtual {p0, p2, v6}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1166
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v2, v7

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1167
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x1000000

    or-int/2addr v2, v4

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1218
    .end local v1    # "zoneInfo":I
    :cond_25
    :goto_25
    if-eqz p1, :cond_44

    .line 1219
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    .line 1220
    .local v0, "targetWinInfo":Landroid/os/Bundle;
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_44

    .line 1221
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .end local v0    # "targetWinInfo":Landroid/os/Bundle;
    :cond_44
    move v2, v3

    .line 1225
    goto :goto_12

    .line 1171
    .restart local v1    # "zoneInfo":I
    :pswitch_46
    invoke-virtual {p0, p2, v5}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1172
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v2, v7

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1173
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x1000000

    or-int/2addr v2, v4

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_25

    .line 1177
    :pswitch_59
    const/4 v4, 0x2

    invoke-virtual {p0, p2, v4}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1178
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1179
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_25

    .line 1180
    :cond_6d
    invoke-virtual {p0, p2, v6}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1181
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1182
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_25

    .line 1186
    :pswitch_80
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 1187
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1188
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_25

    .line 1189
    :cond_93
    invoke-virtual {p0, p2, v6}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1190
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1191
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_25

    .line 1195
    :pswitch_a6
    const/16 v4, 0x8

    invoke-virtual {p0, p2, v4}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 1196
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1197
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_25

    .line 1198
    :cond_bc
    invoke-virtual {p0, p2, v5}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1199
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1200
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_25

    .line 1204
    :pswitch_d0
    const/4 v4, 0x4

    invoke-virtual {p0, p2, v4}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 1205
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1206
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_25

    .line 1207
    :cond_e5
    invoke-virtual {p0, p2, v5}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1208
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1209
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_25

    .line 1163
    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_59
        :pswitch_80
        :pswitch_13
        :pswitch_a6
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_d0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_46
    .end packed-switch
.end method

.method public updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "realActivity"    # Landroid/content/ComponentName;
    .param p3, "winInfo"    # Landroid/os/Bundle;

    .prologue
    .line 1242
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1243
    if-nez p3, :cond_e

    .line 1244
    :try_start_5
    const-string v2, "MultiWindowManagerService"

    const-string v4, "updateWindowInfo: failed due because winInfo is null."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    monitor-exit v3

    .line 1258
    :goto_d
    return-void

    .line 1248
    :cond_e
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1249
    .local v1, "taskBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_24

    .line 1250
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1253
    :cond_24
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1254
    .local v0, "cmpBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_36

    .line 1255
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1257
    :cond_36
    monitor-exit v3

    goto :goto_d

    .end local v0    # "cmpBundle":Landroid/os/Bundle;
    .end local v1    # "taskBundle":Landroid/os/Bundle;
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v2
.end method
