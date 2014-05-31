.class public Lcom/android/server/sec/ClippedDataPickerDialog;
.super Landroid/app/Dialog;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;,
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;,
        Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;
    }
.end annotation


# static fields
.field static CHILD_COUNT:I = 0x0

.field static final LOGTAG:Ljava/lang/String; = "ClipBoardDialog"


# instance fields
.field final ADD_ITEM:I

.field final CLIPS_CLEARED_BROADCAST:Ljava/lang/String;

.field final CLIPS_INFO:Ljava/lang/String;

.field final CLIP_REMOVED_BROADCAST:Ljava/lang/String;

.field final KNOX_VERSION:Ljava/lang/String;

.field final MAX_PROTECTED_COUNT:I

.field final SHARED_CLIPS_INFO:Ljava/lang/String;

.field mAdapter:Landroid/widget/BaseAdapter;

.field private mAddScenario:Z

.field private mBroadCastListener:Landroid/content/BroadcastReceiver;

.field private mButtonClick:Landroid/view/View$OnClickListener;

.field private mCalledDismissIntentFromSIPFlag:Z

.field private mCbm:Landroid/sec/clipboard/ClipboardExManager;

.field mClearButton:Landroid/widget/Button;

.field mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

.field private mClipBoardLandscapeHeight:I

.field private mClipBoardPanelLandscapeHeight:I

.field private mClipBoardPanelPortraitHeight:I

.field private mClipBoardPortraitHeight:I

.field private mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

.field private mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

.field private mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

.field private mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

.field mContentPanel:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mCurrentTargetDataType:I

.field private mDataCount:I

.field final mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

.field final mDismissIntentFromSIP:Ljava/lang/String;

.field final mDismissIntentFromShortCut:Ljava/lang/String;

.field final mDismissIntentFromStatusBar:Ljava/lang/String;

.field private mEnabledDismissIntent:Z

.field mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

.field mGridItemHeight:I

.field mGridItemWidth:I

.field mGridViewAniGoingOn:Z

.field mHTMLImageHeight:I

.field mHTMLImageWidth:I

.field private mIsAddedFilter:Z

.field private mIsDarkTheme:Z

.field private mIsInstalledMemo:Z

.field private mIsInstalledSMemo:Z

.field private mIsInstalledSNote:Z

.field private mIsProtect:Z

.field mIsShowingContextmenu:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSelectedIndex:I

.field private mShouldBeDismissed:Z

.field mShowingMenu:Landroid/view/Menu;

.field final mTextViewMaxLineLand:I

.field final mTextViewMaxLinePort:I

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 212
    const/4 v0, 0x0

    sput v0, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 487
    const v0, 0x1030340

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 172
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    .line 173
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 176
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 177
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    .line 178
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    .line 180
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 181
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 183
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 184
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 185
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    .line 186
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    .line 188
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 189
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 190
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 191
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    .line 195
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    .line 200
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 201
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 202
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 203
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 204
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 206
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 207
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 210
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsProtect:Z

    .line 211
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->ADD_ITEM:I

    .line 214
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->MAX_PROTECTED_COUNT:I

    .line 217
    const-string v0, "DismissClipboardDialogFromPhoneStatusBar"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromStatusBar:Ljava/lang/String;

    .line 218
    const-string v0, "DismissClipboardDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    .line 219
    const-string v0, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromShortCut:Ljava/lang/String;

    .line 220
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z

    .line 223
    iput-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mEnabledDismissIntent:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    .line 231
    const-string v0, "clips.info"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIPS_INFO:Ljava/lang/String;

    .line 232
    const-string v0, "shared_clips.info"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->SHARED_CLIPS_INFO:Ljava/lang/String;

    .line 233
    const-string v0, "com.samsung.knox.clipboard.clipscleared"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIPS_CLEARED_BROADCAST:Ljava/lang/String;

    .line 234
    const-string v0, "com.samsung.knox.clipboard.clipremoved"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIP_REMOVED_BROADCAST:Ljava/lang/String;

    .line 235
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->KNOX_VERSION:Ljava/lang/String;

    .line 239
    iput-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsAddedFilter:Z

    .line 243
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    .line 255
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    .line 256
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    .line 734
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$4;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$4;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    .line 836
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$5;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 909
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    .line 1032
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$6;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$6;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    .line 488
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    .line 490
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sec/clipboard/ClipboardExManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mgr"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 493
    const v0, 0x1030340

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 172
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    .line 173
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 176
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 177
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    .line 178
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    .line 180
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 181
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 183
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 184
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 185
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    .line 186
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    .line 188
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 189
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 190
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 191
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    .line 195
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    .line 200
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 201
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 202
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 203
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 204
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 206
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 207
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 210
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsProtect:Z

    .line 211
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->ADD_ITEM:I

    .line 214
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->MAX_PROTECTED_COUNT:I

    .line 217
    const-string v0, "DismissClipboardDialogFromPhoneStatusBar"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromStatusBar:Ljava/lang/String;

    .line 218
    const-string v0, "DismissClipboardDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    .line 219
    const-string v0, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromShortCut:Ljava/lang/String;

    .line 220
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z

    .line 223
    iput-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mEnabledDismissIntent:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    .line 231
    const-string v0, "clips.info"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIPS_INFO:Ljava/lang/String;

    .line 232
    const-string v0, "shared_clips.info"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->SHARED_CLIPS_INFO:Ljava/lang/String;

    .line 233
    const-string v0, "com.samsung.knox.clipboard.clipscleared"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIPS_CLEARED_BROADCAST:Ljava/lang/String;

    .line 234
    const-string v0, "com.samsung.knox.clipboard.clipremoved"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIP_REMOVED_BROADCAST:Ljava/lang/String;

    .line 235
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->KNOX_VERSION:Ljava/lang/String;

    .line 239
    iput-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsAddedFilter:Z

    .line 243
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    .line 255
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    .line 256
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    .line 734
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$4;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$4;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    .line 836
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$5;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 909
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    .line 1032
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$6;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$6;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    .line 494
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    .line 496
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 497
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/TwSlidingDrawer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/IClipboardDataList;)Landroid/sec/clipboard/data/IClipboardDataList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;
    .param p1, "x1"    # Landroid/sec/clipboard/data/IClipboardDataList;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/sec/ClippedDataPickerDialog;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/sec/ClippedDataPickerDialog;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/IClipboardDataUiEvent;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;
    .param p1, "x1"    # Landroid/sec/clipboard/IClipboardDataUiEvent;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 166
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    return v0
.end method

.method private isCheckProtectedItem(I)Z
    .registers 6
    .param p1, "item"    # I

    .prologue
    .line 853
    const/4 v2, 0x0

    .line 856
    .local v2, "isProtected":Z
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v3, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 857
    .local v0, "data":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_d

    .line 858
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f

    move-result v2

    :cond_d
    move v3, v2

    .line 865
    .end local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :goto_e
    return v3

    .line 860
    :catch_f
    move-exception v1

    .line 861
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 862
    const/4 v3, 0x0

    goto :goto_e
.end method

.method private isProtectedPossible()Z
    .registers 8

    .prologue
    const/16 v6, 0xa

    const/4 v4, 0x0

    .line 870
    const/4 v0, 0x0

    .line 872
    .local v0, "currentSize":I
    :try_start_4
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v5}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_21

    move-result v0

    .line 878
    :goto_a
    if-le v0, v6, :cond_35

    .line 880
    const/4 v3, 0x0

    .line 882
    .local v3, "protectedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_35

    .line 886
    :try_start_10
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v5, v2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_19} :catch_2d

    move-result v5

    if-eqz v5, :cond_32

    .line 888
    add-int/lit8 v3, v3, 0x1

    .line 890
    if-lt v3, v6, :cond_32

    .line 905
    .end local v2    # "i":I
    .end local v3    # "protectedCount":I
    :goto_20
    return v4

    .line 873
    :catch_21
    move-exception v1

    .line 874
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 875
    sget v0, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    goto :goto_a

    .line 893
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "i":I
    .restart local v3    # "protectedCount":I
    :catch_28
    move-exception v1

    .line 895
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_20

    .line 898
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2d
    move-exception v1

    .line 899
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_20

    .line 882
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 905
    .end local v2    # "i":I
    .end local v3    # "protectedCount":I
    :cond_35
    const/4 v4, 0x1

    goto :goto_20
.end method


# virtual methods
.method public IsSetProtectAction(I)V
    .registers 12
    .param p1, "selectItem"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1328
    :try_start_2
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v8, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 1329
    .local v1, "data":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v5

    .line 1330
    .local v5, "isProtected":Z
    if-nez v5, :cond_49

    move v5, v6

    .line 1333
    :goto_f
    if-eqz v5, :cond_56

    invoke-direct {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->isProtectedPossible()Z

    move-result v6

    if-nez v6, :cond_56

    .line 1336
    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    if-eqz v6, :cond_4b

    .line 1337
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    const v7, 0x1030128

    invoke-direct {v0, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1341
    .local v0, "context":Landroid/content/Context;
    :goto_25
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x104085e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1398
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .end local v5    # "isProtected":Z
    :goto_48
    return-void

    .restart local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v5    # "isProtected":Z
    :cond_49
    move v5, v7

    .line 1330
    goto :goto_f

    .line 1339
    :cond_4b
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    const v7, 0x103012b

    invoke-direct {v0, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_25

    .line 1347
    .end local v0    # "context":Landroid/content/Context;
    :cond_56
    invoke-virtual {v1, v5}, Landroid/sec/clipboard/data/ClipboardData;->SetProtectState(Z)V

    .line 1350
    const/4 v4, 0x1

    .line 1351
    .local v4, "isAllDisabled":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5b
    iget v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    if-ge v3, v6, :cond_83

    .line 1352
    invoke-direct {p0, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 1353
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_82

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "some item is not unlocked...index :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_82
    const/4 v4, 0x0

    .line 1359
    :cond_83
    if-eqz v4, :cond_a2

    .line 1360
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v7, Lcom/android/server/sec/ClippedDataPickerDialog$9;

    invoke-direct {v7, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$9;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v6, v7}, Lcom/android/server/sec/TwSlidingDrawer;->post(Ljava/lang/Runnable;)Z

    .line 1391
    :goto_8f
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v6, p1, v1}, Landroid/sec/clipboard/data/IClipboardDataList;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 1392
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_99} :catch_9a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_99} :catch_ad

    goto :goto_48

    .line 1393
    .end local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .end local v3    # "i":I
    .end local v4    # "isAllDisabled":Z
    .end local v5    # "isProtected":Z
    :catch_9a
    move-exception v2

    .line 1394
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_48

    .line 1351
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v3    # "i":I
    .restart local v4    # "isAllDisabled":Z
    .restart local v5    # "isProtected":Z
    :cond_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 1375
    :cond_a2
    :try_start_a2
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v7, Lcom/android/server/sec/ClippedDataPickerDialog$10;

    invoke-direct {v7, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$10;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v6, v7}, Lcom/android/server/sec/TwSlidingDrawer;->post(Ljava/lang/Runnable;)Z
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_ac} :catch_9a
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_ac} :catch_ad

    goto :goto_8f

    .line 1395
    .end local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .end local v3    # "i":I
    .end local v4    # "isAllDisabled":Z
    .end local v5    # "isProtected":Z
    :catch_ad
    move-exception v2

    .line 1396
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_48
.end method

.method createClearConfirmDialog(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    if-eqz v0, :cond_d

    .line 285
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    .line 289
    :goto_c
    return-void

    .line 287
    :cond_d
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    goto :goto_c
.end method

.method public deleteAnimation()V
    .registers 15

    .prologue
    const v2, 0x3f4ccccd

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000

    .line 1113
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->getLastVisiblePosition()I

    move-result v3

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    if-lt v3, v4, :cond_82

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->getFirstVisiblePosition()I

    move-result v3

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    if-gt v3, v4, :cond_82

    .line 1115
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v4}, Lcom/android/server/sec/ClippedDataPickerGridView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v12, v3, v4

    .line 1116
    .local v12, "position":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_42

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_42
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1119
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1120
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1121
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1122
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1123
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1124
    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1127
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v1, v12}, Lcom/android/server/sec/ClippedDataPickerGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1129
    .local v13, "v":Landroid/view/View;
    if-eqz v13, :cond_75

    .line 1130
    invoke-virtual {v13, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1131
    invoke-virtual {v13, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1178
    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    .end local v9    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v10    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v12    # "position":I
    .end local v13    # "v":Landroid/view/View;
    :cond_74
    :goto_74
    return-void

    .line 1133
    .restart local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    .restart local v9    # "alpha":Landroid/view/animation/AlphaAnimation;
    .restart local v10    # "animSet":Landroid/view/animation/AnimationSet;
    .restart local v12    # "position":I
    .restart local v13    # "v":Landroid/view/View;
    :cond_75
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_74

    const-string v1, "ClipboardServiceEx"

    const-string/jumbo v2, "v is NULL"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 1140
    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    .end local v9    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v10    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v12    # "position":I
    .end local v13    # "v":Landroid/view/View;
    :cond_82
    :try_start_82
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V

    .line 1141
    sget v1, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8f} :catch_9b

    .line 1149
    :goto_8f
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    if-nez v1, :cond_74

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    goto :goto_74

    .line 1143
    :catch_9b
    move-exception v11

    .line 1145
    .local v11, "e":Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8f
.end method

.method public dismiss()V
    .registers 4

    .prologue
    .line 2142
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2143
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    .line 2146
    :cond_11
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1c

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Clipboard dialog is closed."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :cond_1c
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2150
    iget-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mEnabledDismissIntent:Z

    if-eqz v1, :cond_30

    .line 2151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog$11;

    invoke-direct {v1, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$11;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2168
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2170
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_30
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2178
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public enabledDismissIntent(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2173
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mEnabledDismissIntent:Z

    .line 2174
    return-void
.end method

.method isKnoxTwoEnabled()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 260
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    .line 261
    .local v4, "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 262
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    const-string v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 264
    .local v3, "mPersonaManager":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 265
    .local v1, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 266
    .local v0, "currUser":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    if-eqz v3, :cond_3d

    invoke-virtual {v3, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 268
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_3c

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Current user is a USER, hence return false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v0    # "currUser":I
    .end local v1    # "ident":J
    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    :cond_3c
    :goto_3c
    return v5

    .line 271
    .restart local v0    # "currUser":I
    .restart local v1    # "ident":J
    .restart local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    :cond_3d
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_48

    const-string v5, "ClipboardServiceEx"

    const-string v6, "Current user is a persona, hence return true"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_48
    const/4 v5, 0x1

    goto :goto_3c

    .line 275
    .end local v0    # "currUser":I
    .end local v1    # "ident":J
    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    :cond_4a
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_3c

    const-string v6, "ClipboardServiceEx"

    const-string v7, "\'ro.build.knox.container\' system property is not set to \'2.0\', hence return false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public onClipBoardDialogSizeChanged()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 2214
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2215
    .local v0, "cfg":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_45

    .line 2216
    const v2, 0x1020408

    invoke-virtual {p0, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2217
    .local v1, "clipBoardBottomPanel":Landroid/widget/LinearLayout;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 2218
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    if-eqz v2, :cond_45

    .line 2219
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_46

    .line 2220
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/sec/TwSlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2221
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2222
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->setNumColumns(I)V

    .line 2229
    .end local v1    # "clipBoardBottomPanel":Landroid/widget/LinearLayout;
    :cond_45
    :goto_45
    return-void

    .line 2223
    .restart local v1    # "clipBoardBottomPanel":Landroid/widget/LinearLayout;
    :cond_46
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    .line 2224
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/sec/TwSlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2225
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_45
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 501
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 504
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 505
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v14, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v14, "DismissClipboardDialogFromIMMService"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    const-string v14, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v14, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_31

    const-string v14, "ClipboardServiceEx"

    const-string v15, "register PhoneStateListener"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 516
    .local v13, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v13, :cond_48

    .line 517
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v15, 0x20

    invoke-virtual {v13, v14, v15}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 521
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v14, v15, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 522
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsAddedFilter:Z

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/high16 v15, 0x1000000

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500c9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500ca

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500cb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500cc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 535
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_38b

    .line 536
    iget v14, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_302

    .line 537
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_d8

    const-string v14, "ClipboardServiceEx"

    const-string v15, "orientation == Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_d8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500d1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500d2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500d3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500d4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 544
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 562
    :cond_12d
    :goto_12d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 563
    .local v11, "theWindow":Landroid/view/Window;
    const/16 v14, 0x57

    invoke-virtual {v11, v14}, Landroid/view/Window;->setGravity(I)V

    .line 565
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_168

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Width :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "   Height :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_168
    const v14, 0x10900f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->setContentView(I)V

    .line 569
    const v14, 0x10202ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/server/sec/ClippedDataPickerGridView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    .line 573
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v14, :cond_195

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "clipboardEx"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/sec/clipboard/ClipboardExManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 577
    :cond_195
    new-instance v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Lcom/android/server/sec/ClippedDataPickerDialog$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    invoke-virtual {v14, v15}, Landroid/sec/clipboard/ClipboardExManager;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    new-instance v15, Lcom/android/server/sec/ClippedDataPickerDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v14, v15}, Lcom/android/server/sec/ClippedDataPickerGridView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 597
    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-virtual {v11, v14, v15}, Landroid/view/Window;->setLayout(II)V

    .line 599
    const v14, 0x1020406

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/server/sec/TwSlidingDrawer;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    .line 601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v15, Lcom/android/server/sec/ClippedDataPickerDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$3;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v14, v15}, Lcom/android/server/sec/TwSlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->rebuildView()V

    .line 610
    const-string v9, ""

    .line 611
    .local v9, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v14, :cond_215

    .line 612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v14

    if-eqz v14, :cond_1f3

    .line 613
    const-string v9, "sec_container_1."

    .line 615
    :cond_1f3
    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mCbm.getContainerID() :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 619
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v14, Landroid/content/Intent;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "android.intent.action.CLIPBOARD_TO_MEMO_INSERT"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 620
    .local v10, "receiver":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v10, :cond_398

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_398

    .line 622
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_243
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_398

    .line 623
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v14, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 624
    .local v6, "installedPackage":Ljava/lang/String;
    if-eqz v6, :cond_28c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.sec.android.widgetapp.diotek.smemo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_287

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.sec.android.provider.smemo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_28c

    .line 625
    :cond_287
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    .line 627
    :cond_28c
    if-eqz v6, :cond_2c5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.sec.android.app.snotebook"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2c0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.samsung.android.snote"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c5

    .line 628
    :cond_2c0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    .line 630
    :cond_2c5
    if-eqz v6, :cond_2fe

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.sec.android.app.memo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2f9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.samsung.android.app.memo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2fe

    .line 631
    :cond_2f9
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    .line 622
    :cond_2fe
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_243

    .line 546
    .end local v5    # "i":I
    .end local v6    # "installedPackage":Ljava/lang/String;
    .end local v8    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "receiver":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "theWindow":Landroid/view/Window;
    :cond_302
    iget v14, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_369

    .line 547
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_312

    const-string v14, "ClipboardServiceEx"

    const-string v15, "orientation == Configuration.ORIENTATION_PORTRAIT"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_312
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500cd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500ce

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500cf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500d0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 554
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    goto/16 :goto_12d

    .line 556
    :cond_369
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_12d

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "orientation does not accept. config.orientation :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12d

    .line 559
    :cond_38b
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_12d

    const-string v14, "ClipboardServiceEx"

    const-string v15, "config is null!!!!"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12d

    .line 638
    .restart local v8    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v9    # "prefix":Ljava/lang/String;
    .restart local v10    # "receiver":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "theWindow":Landroid/view/Window;
    :cond_398
    const v14, 0x1020016

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 639
    .local v12, "titleText":Landroid/widget/TextView;
    if-eqz v12, :cond_3d7

    .line 640
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1040b2c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1040b39

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 643
    :cond_3d7
    const v14, 0x1020409

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    .line 644
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    const/4 v7, 0x1

    .line 648
    .local v7, "isAllDisabled":Z
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3f3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v14

    if-ge v5, v14, :cond_426

    .line 649
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v14

    if-nez v14, :cond_423

    .line 650
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_422

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "some item is not unlocked...index :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_422
    const/4 v7, 0x0

    .line 648
    :cond_423
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f3

    .line 655
    :cond_426
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v14, :cond_477

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    if-eqz v14, :cond_477

    .line 656
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v14

    if-eqz v14, :cond_43e

    if-eqz v7, :cond_477

    .line 657
    :cond_43e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    if-eqz v14, :cond_46e

    .line 658
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    invoke-virtual {v14}, Lcom/android/server/sec/TwSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v4

    .line 659
    .local v4, "handle":Landroid/view/View;
    if-eqz v4, :cond_46e

    instance-of v14, v4, Landroid/view/ViewGroup;

    if-eqz v14, :cond_46e

    move-object v14, v4

    check-cast v14, Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, 0x3

    if-lt v14, v15, :cond_46e

    .line 660
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "handle":Landroid/view/View;
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 661
    .local v2, "divider":Landroid/view/View;
    if-eqz v2, :cond_46e

    instance-of v14, v2, Landroid/widget/ImageView;

    if-eqz v14, :cond_46e

    .line 662
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 666
    .end local v2    # "divider":Landroid/view/View;
    :cond_46e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 672
    :cond_477
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    .line 676
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 14
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v9, 0x1140005

    const/4 v6, 0x1

    .line 914
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShowingMenu:Landroid/view/Menu;

    .line 916
    iput-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    .line 919
    invoke-virtual {p2, v6}, Landroid/view/View;->twSetContextMenuZOrderToTop(Z)V

    .line 921
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 922
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v6, p2}, Lcom/android/server/sec/ClippedDataPickerGridView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 924
    new-instance v3, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 925
    .local v3, "inflater":Landroid/view/MenuInflater;
    const v6, 0x1040b2d

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 926
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v6}, Lcom/android/server/sec/ClippedDataPickerGridView;->isLayoutAnimating()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 927
    iget v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-direct {p0, v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 929
    const v6, 0x1140001

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 966
    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    .line 969
    .local v0, "data":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_3c
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v6, v7}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_43} :catch_10a

    move-result-object v0

    .line 974
    :goto_44
    if-eqz v0, :cond_142

    .line 975
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v6

    packed-switch v6, :pswitch_data_162

    .line 1004
    :cond_4d
    :goto_4d
    return-void

    .line 932
    .end local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :cond_4e
    const/high16 v6, 0x1140000

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 938
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 939
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 941
    .local v2, "id":I
    if-nez v2, :cond_ec

    .line 942
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/clipboard"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 946
    .local v4, "rootPath":Ljava/io/File;
    :goto_66
    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateContextMenu: rootPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; current user id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v5, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v6, Ljava/io/File;

    const-string v7, "clips.info"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6, v2}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    .line 949
    .local v5, "rootfm":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v5, :cond_3b

    .line 950
    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateContextMenu: mSelectedIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; rootfm.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v7

    if-lt v6, v7, :cond_3b

    .line 954
    const/4 v6, 0x1

    :try_start_c7
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_cf
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c7 .. :try_end_cf} :catch_d1

    goto/16 :goto_3b

    .line 955
    :catch_d1
    move-exception v1

    .line 956
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateContextMenu: IndexOutOfBoundsException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 944
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "rootPath":Ljava/io/File;
    .end local v5    # "rootfm":Landroid/sec/clipboard/data/file/FileManager;
    :cond_ec
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/clipboard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "rootPath":Ljava/io/File;
    goto/16 :goto_66

    .line 970
    .end local v2    # "id":I
    .end local v4    # "rootPath":Ljava/io/File;
    .restart local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :catch_10a
    move-exception v1

    .line 971
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_44

    .line 977
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_110
    const v6, 0x1140002

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_4d

    .line 983
    :pswitch_118
    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    if-eqz v6, :cond_12d

    .line 984
    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    if-eqz v6, :cond_125

    .line 985
    invoke-virtual {v3, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_4d

    .line 987
    :cond_125
    const v6, 0x1140004

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_4d

    .line 989
    :cond_12d
    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    if-eqz v6, :cond_136

    .line 990
    invoke-virtual {v3, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_4d

    .line 991
    :cond_136
    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    if-eqz v6, :cond_4d

    .line 992
    const v6, 0x1140003

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_4d

    .line 1002
    :cond_142
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4d

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateContextMenu(). data is invalid state. mSelectedIndex :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 975
    :pswitch_data_162
    .packed-switch 0x2
        :pswitch_118
        :pswitch_110
        :pswitch_118
        :pswitch_118
        :pswitch_118
    .end packed-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 13
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1181
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_20

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSelectedIndex :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_20
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v7}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v0

    .line 1186
    .local v0, "currentMode":I
    :try_start_26
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v7, v8}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 1188
    .local v1, "data":Landroid/sec/clipboard/data/ClipboardData;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_d8

    .line 1318
    invoke-super {p0, p2}, Landroid/app/Dialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    .line 1323
    .end local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :goto_39
    return v5

    .line 1190
    .restart local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_3a
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_45

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select delete menu"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->deleteAnimation()V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_48} :catch_49

    goto :goto_39

    .line 1320
    .end local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :catch_49
    move-exception v2

    .line 1321
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1323
    invoke-super {p0, p2}, Landroid/app/Dialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_39

    .line 1197
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_52
    :try_start_52
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_5d

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select lock menu"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_5d
    iget v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {p0, v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->IsSetProtectAction(I)V

    goto :goto_39

    .line 1206
    :pswitch_63
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_6e

    const-string v7, "ClipboardServiceEx"

    const-string v8, "select save in memo"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_6e
    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8c

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_8c

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_8c

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_9a

    .line 1208
    :cond_8c
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/sec/ClippedDataPickerDialog$7;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$7;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;I)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1269
    .local v4, "stringT":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_39

    .line 1273
    .end local v4    # "stringT":Ljava/lang/Thread;
    :cond_9a
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_a5

    const-string v5, "ClipboardServiceEx"

    const-string v7, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    move v5, v6

    .line 1274
    goto :goto_39

    .line 1278
    :pswitch_a7
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_b2

    const-string v7, "ClipboardServiceEx"

    const-string v8, "select save in gallery menu"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_b2
    if-eqz v1, :cond_ca

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_ca

    .line 1281
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/sec/ClippedDataPickerDialog$8;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$8;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;I)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1309
    .local v3, "imageT":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_39

    .line 1313
    .end local v3    # "imageT":Ljava/lang/Thread;
    :cond_ca
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_d5

    const-string v5, "ClipboardServiceEx"

    const-string v7, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_d5} :catch_49

    :cond_d5
    move v5, v6

    .line 1314
    goto/16 :goto_39

    .line 1188
    :pswitch_data_d8
    .packed-switch 0x102045f
        :pswitch_3a
        :pswitch_52
        :pswitch_a7
        :pswitch_63
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    .line 1009
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1010
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    .line 682
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    if-eqz v2, :cond_9

    .line 683
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/server/sec/TwSlidingDrawer;->open()V

    .line 687
    :cond_9
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 689
    iget-boolean v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsAddedFilter:Z

    if-eqz v2, :cond_14

    .line 690
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsAddedFilter:Z

    .line 714
    :goto_13
    return-void

    .line 693
    :cond_14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 694
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v2, "DismissClipboardDialogFromIMMService"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    const-string v2, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v2, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_42

    const-string v2, "ClipboardServiceEx"

    const-string v3, "register PhoneStateListener"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 705
    .local v1, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_57

    .line 706
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 710
    :cond_57
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_13
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 720
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 721
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 724
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_18

    const-string v1, "ClipboardServiceEx"

    const-string/jumbo v2, "unregister PhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 726
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_2d

    .line 727
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 728
    const/4 v0, 0x0

    .line 730
    :cond_2d
    return-void
.end method

.method public rebuildView()V
    .registers 4

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2129
    .local v1, "theWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2131
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7dc

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2133
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2138
    return-void
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 2112
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    if-eq v0, p1, :cond_2f

    .line 2113
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasteTargetViewDataType() called !  mCurrentTargetDataType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_22
    iput p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 2116
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2122
    :cond_2f
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 2123
    return-void
.end method

.method public show()V
    .registers 6

    .prologue
    .line 2182
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2184
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerDialog$12;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$12;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2201
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2204
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2205
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_57

    .line 2206
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_57

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v2, :cond_57

    .line 2207
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_52

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clipboard will be re-created. config.orientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentOrientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_52
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->showUIDataDialog()V

    .line 2211
    :cond_57
    return-void
.end method

.method public showProtectedMarker(Landroid/view/View;I)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 1401
    if-nez p1, :cond_5

    .line 1437
    :cond_4
    :goto_4
    return-void

    .line 1405
    :cond_5
    const v5, 0x1020412

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1406
    .local v2, "lockimage":Landroid/widget/ImageView;
    const v5, 0x1020413

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1408
    .local v4, "protectView":Landroid/widget/RelativeLayout;
    invoke-direct {p0, p2}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v1

    .line 1409
    .local v1, "isProtected":Z
    if-eqz v1, :cond_62

    .line 1412
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 1413
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1414
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_39

    const-string v5, "ClipboardServiceEx"

    const-string/jumbo v6, "showProtectedMarker@v.getTag() != null no!!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_39
    :goto_39
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1422
    .local v0, "fixParams":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1423
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1425
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1426
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1428
    if-eqz v2, :cond_4

    .line 1429
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1416
    .end local v0    # "fixParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1417
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_39

    const-string v5, "ClipboardServiceEx"

    const-string/jumbo v6, "showProtectedMarker@v.getTag() != null !!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 1432
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_62
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1433
    if-eqz v2, :cond_4

    .line 1434
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method
