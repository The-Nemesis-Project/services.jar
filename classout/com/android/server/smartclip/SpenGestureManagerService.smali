.class public Lcom/android/server/smartclip/SpenGestureManagerService;
.super Lcom/samsung/android/smartclip/ISpenGestureService$Stub;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;,
        Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
    }
.end annotation


# static fields
.field private static ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String; = null

.field private static ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String; = null

.field private static GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String; = null

.field private static GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String; = null

.field private static final MAX_SYNC_CHECK_AIRBUTTON_DELAY:I = 0x3e8

.field private static final MAX_SYNC_EXTRACTION_DELAY:I = 0xbb8

.field private static final MSG_ACTIVATE_EXCLUSIVE_CROPPING_MODE:I = 0x2

.field private static final MSG_CREATE_VIEW:I = 0x1

.field private static final SYNC_EXTRACTION_MODE_REQUEST_ID:I = -0x1

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# instance fields
.field private mAirButtonHitTestResult:I

.field private mAirButtonHitTestSync:Ljava/lang/Object;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCoverOpened:Z

.field private mDataExtractionSync:Ljava/lang/Object;

.field private mExtractedRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field private mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEnableLockScreenQuickNote:Z

.field private mIsVisibleSPenGestureView:Z

.field private mSPenGestureInputChannel:Landroid/view/InputChannel;

.field private mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

.field private mShouldTransferEventToAirButton:Z

.field private mShouldTransferTouchDownEventToAirButton:Z

.field private mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 108
    const-string v0, "SpenGestureManagerService"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    .line 110
    const-string v0, "com.sec.android.app.rakein.RakeInContentActivity"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;

    .line 111
    const-string v0, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;

    .line 112
    const-string v0, "com.android.server.smartclip.GAC_SELECTED"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;

    .line 113
    const-string v0, "com.android.server.smartclip.GAC_RAKEINSERVICE"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;

    .line 122
    sput-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 123
    sput-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;-><init>()V

    .line 125
    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 126
    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    .line 127
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 132
    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mExtractedRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestSync:Ljava/lang/Object;

    .line 135
    iput v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestResult:I

    .line 137
    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 138
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    .line 142
    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 143
    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 147
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    .line 192
    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 193
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SpenGestureManagerService(Context) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;-><init>()V

    .line 125
    iput-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 126
    iput-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    .line 127
    iput-boolean v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    .line 129
    iput-boolean v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 131
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 132
    iput-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mExtractedRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 134
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestSync:Ljava/lang/Object;

    .line 135
    iput v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestResult:I

    .line 137
    iput-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 138
    iput-boolean v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    .line 139
    iput-boolean v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    .line 142
    iput-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 143
    iput-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 145
    iput-boolean v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 147
    new-instance v2, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    new-instance v2, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    .line 197
    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 198
    sput-object p2, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 199
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v3, "SpenGestureManagerService(Context context, WindowManagerService Wm)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "SPenGestureService"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 202
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setMonitorChannelFilter(Landroid/view/InputChannel;I)V

    .line 205
    new-instance v2, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 207
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSettingCondition()V

    .line 211
    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V

    .line 212
    .local v1, "settingObserverForSPen":Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;
    invoke-virtual {v1}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;->observe()V

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v2, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostActivityClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/view/WindowManager;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SmartClipView;)Lcom/android/server/smartclip/SmartClipView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    return p1
.end method

.method private checkSettingCondition()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "lock_screen_quick_note"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2d

    :goto_10
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 352
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSettingCondition, LOCK_SCREEN_QUICK_NOTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    :cond_2d
    move v1, v2

    .line 351
    goto :goto_10
.end method

.method private getFullScreenRect()Landroid/graphics/Rect;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 341
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 342
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 343
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 345
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 346
    .local v2, "screenRect":Landroid/graphics/Rect;
    return-object v2
.end method

.method private getTopMostActivityClassName()Ljava/lang/String;
    .registers 9

    .prologue
    .line 747
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 749
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 750
    .local v4, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 752
    .local v3, "runningTaskCount":I
    if-lez v3, :cond_26

    .line 753
    const/4 v2, 0x0

    .local v2, "i":I
    if-ge v2, v3, :cond_26

    .line 754
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 757
    .local v5, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 763
    .end local v2    # "i":I
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_25
    return-object v1

    :cond_26
    const-string v1, ""

    goto :goto_25
.end method

.method private showGuideDialog()V
    .registers 9

    .prologue
    .line 534
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 535
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900b6

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 536
    .local v2, "layout":Landroid/view/View;
    const v5, 0x10203bc

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 537
    .local v4, "mcheck":Landroid/widget/CheckBox;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1030128

    invoke-direct {v0, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 539
    .local v0, "DialogContext":Landroid/content/Context;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040aa1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService$3;

    invoke-direct {v7, p0, v4}, Lcom/android/server/smartclip/SpenGestureManagerService$3;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 550
    .local v3, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 551
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 552
    return-void
.end method

.method private showPenWindowGuideDialog()V
    .registers 9

    .prologue
    .line 555
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 556
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x1090093

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 557
    .local v2, "layout":Landroid/view/View;
    const v5, 0x1020387

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 558
    .local v4, "mcheck":Landroid/widget/CheckBox;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1030128

    invoke-direct {v0, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 559
    .local v0, "DialogContext":Landroid/content/Context;
    new-instance v5, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v5, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040a55

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v7, p0, v4}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 577
    .local v3, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 578
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 579
    return-void
.end method


# virtual methods
.method public activateExclusiveCroppingMode()V
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    if-nez v0, :cond_5

    .line 261
    :goto_4
    return-void

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method public createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;
    .registers 4

    .prologue
    .line 591
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Z)V

    .line 593
    .local v0, "airButtonWidget":Lcom/samsung/android/airbutton/AirButtonImpl;
    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V

    .line 720
    return-object v0
.end method

.method public getAirButtonHitTest(III)I
    .registers 11
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 311
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAirButtonHitTest() : id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :try_start_19
    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestSync:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_55

    .line 315
    :try_start_1c
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 317
    .local v1, "windowManager":Landroid/view/IWindowManager;
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestResult:I

    .line 318
    invoke-interface {v1, p1, p2, p3}, Landroid/view/IWindowManager;->dispatchAirButtonHitTest(III)V

    .line 319
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestSync:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 321
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAirButtonHitTest() : wait is unlocked. Result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_52

    .line 327
    iget v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestResult:I

    .end local v1    # "windowManager":Landroid/view/IWindowManager;
    :goto_51
    return v2

    .line 322
    :catchall_52
    move-exception v3

    :try_start_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw v3
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_55} :catch_55

    .line 323
    :catch_55
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 12
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 289
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v5, "getSmartClipDataFromCurrentScreen()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :try_start_8
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_4a

    .line 293
    :try_start_b
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 295
    .local v2, "windowManager":Landroid/view/IWindowManager;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mExtractedRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 296
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    const/4 v4, -0x1

    invoke-direct {v1, v4, p1, p3}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;I)V

    .line 297
    .local v1, "event":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    invoke-interface {v2, v1, p2}, Landroid/view/IWindowManager;->dispatchSmartClipDataExtractionEvent(Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/os/IBinder;)V

    .line 298
    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 300
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSmartClipDataFromCurrentScreen() : wait is unlocked. Repository = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mExtractedRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_47

    .line 307
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mExtractedRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .end local v1    # "event":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    :goto_46
    return-object v3

    .line 301
    :catchall_47
    move-exception v4

    :try_start_48
    monitor-exit v5
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v4
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4a} :catch_4a

    .line 302
    :catch_4a
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 265
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v6, "getSmartClipDataFromCurrentScreen()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :try_start_8
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_50

    .line 269
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getFullScreenRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 270
    .local v2, "screenRect":Landroid/graphics/Rect;
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 272
    .local v3, "windowManager":Landroid/view/IWindowManager;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mExtractedRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 273
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    const/4 v5, -0x1

    const/4 v7, 0x1

    invoke-direct {v1, v5, v2, v7}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;I)V

    .line 274
    .local v1, "event":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Landroid/view/IWindowManager;->dispatchSmartClipDataExtractionEvent(Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/os/IBinder;)V

    .line 275
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 277
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSmartClipDataFromCurrentScreen() : wait is unlocked. Repository = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mExtractedRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_b .. :try_end_4a} :catchall_4d

    .line 284
    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mExtractedRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .end local v1    # "event":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .end local v2    # "screenRect":Landroid/graphics/Rect;
    .end local v3    # "windowManager":Landroid/view/IWindowManager;
    :goto_4c
    return-object v4

    .line 278
    :catchall_4d
    move-exception v5

    :try_start_4e
    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v5
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_50} :catch_50

    .line 279
    :catch_50
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception e : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public isExclusiveModeActivated()Z
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    if-eqz v0, :cond_b

    .line 249
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->isExclusiveModeActivated()Z

    move-result v0

    .line 252
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isShowGlobalAirButton()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 582
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 583
    .local v1, "setupWizard":I
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    .line 584
    .local v0, "isFactoryMode":Z
    if-nez v0, :cond_16

    if-eqz v1, :cond_16

    .line 585
    const/4 v2, 0x1

    .line 587
    :cond_16
    return v2
.end method

.method public keyguardOn()Z
    .registers 4

    .prologue
    .line 512
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 513
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1b

    .line 514
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 515
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "SpenGestureManagerService :isKeyguardLocked : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v1, 0x1

    .line 519
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public keyguardSecureOn()Z
    .registers 4

    .prologue
    .line 523
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 524
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_21

    .line 525
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 526
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "SpenGestureManagerService :isKeyguardSecure : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v1, 0x1

    .line 530
    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public setAirButtonHitTestResult(II)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "result"    # I

    .prologue
    .line 332
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAirButtonHitTestResult() : id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iput p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestResult:I

    .line 335
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestSync:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_27
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirButtonHitTestSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 337
    monitor-exit v1

    .line 338
    return-void

    .line 337
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public setDisableGlobalAirBottonAppindex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 744
    return-void
.end method

.method public setFocusWindow(I)V
    .registers 3
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    if-eqz v0, :cond_9

    .line 223
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SmartClipView;->setFocusWindow(I)V

    .line 225
    :cond_9
    return-void
.end method

.method public setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    .prologue
    .line 229
    if-eqz p1, :cond_3e

    .line 230
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartClipDataExtractionResult() : requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  extractionMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mExtractionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v0, p1, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRequestId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3e

    .line 233
    iget-object v0, p1, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mExtractedRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 234
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_34
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 236
    monitor-exit v1

    .line 244
    :cond_3a
    :goto_3a
    return-void

    .line 236
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3b

    throw v0

    .line 241
    :cond_3e
    if-eqz p1, :cond_3a

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    if-eqz v0, :cond_3a

    .line 242
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SmartClipView;->onDataExtractionResponseArrived(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V

    goto :goto_3a
.end method
