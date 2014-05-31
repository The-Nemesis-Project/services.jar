.class public Lcom/android/server/smartclip/SmartClipView;
.super Landroid/widget/FrameLayout;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;,
        Lcom/android/server/smartclip/SmartClipView$SPenVibrator;,
        Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;,
        Lcom/android/server/smartclip/SmartClipView$PointerState;
    }
.end annotation


# static fields
.field private static final CONTROL_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

.field public static final CROPPING_MODE_EXCLUSIVE:I = 0x1

.field public static final CROPPING_MODE_NORMAL:I = 0x0

.field private static final ESTIMATE_INVALID_VALUE:I = -0x1

.field private static final EXTRA_ENABLE_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.extra.enable_spengestureview"

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MAX_DATA_EXTRACTION_DELAY:I = 0x7d0

.field private static final MAX_EXTRACTION_REQUEST_ID:I = 0x186a0

.field private static final MEDIA_SCANNER_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field private static final MIN_DATA_EXTRACTION_DELAY:I = 0x64

.field private static final MIN_EXTRACTION_REQUEST_ID:I = 0x0

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x96

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x5

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"


# instance fields
.field private final BROADCAST_NONE:I

.field private final BROADCAST_VIDEOPLAYER_PAUSE:I

.field private final BROADCAST_VIDEOPLAYER_PLAY:I

.field private final DEBUG:Z

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private final MSG_CROPPING_IMG_SAVE:S

.field private final MSG_FINISH_LOADING_ANIMATION:S

.field private final MSG_START_LOADING_ANIMATION:S

.field private final MSG_SUGGESTION_SERVICE_START:S

.field private final SMART_CLIP_NON_CLOSED_CURVE_AREA:I

.field private final SMART_CLIP_POINT_DISTANCE_MIN:I

.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mBootCompleted:Z

.field private mBrType:I

.field private mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

.field private mCirclePaintWhite:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropHandler:Landroid/os/Handler;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mCropStartingTime:J

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

.field private mCroppingMode:I

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mDataExtractionRequestId:I

.field private mDirectionHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayHeightForMatrix:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayRoateChanged:Z

.field private mDisplayRoateDegress:I

.field private mDisplayWidthForMatrix:I

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mEnableCheckClosedCurve:Z

.field private mEndPointX:F

.field private mEndPointY:F

.field private mExistOldCoords:Z

.field private mFinishSaveImg:Z

.field private mFirstIntersectionPointLast:I

.field private mFirstIntersectionPointPrev:I

.field private mFirstIntersectionPointX:I

.field private mFirstIntersectionPointY:I

.field private mFirstStartPointX:I

.field private mFirstStartPointY:I

.field mFocusedWindow:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

.field mGesturePad:Ljava/lang/Runnable;

.field private mGesturePadBlockTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePadIntent:Landroid/content/Intent;

.field mHandler:Landroid/os/Handler;

.field private mHeaderBottom:I

.field private mImageFilePath:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mImageUriForAnimation:Landroid/net/Uri;

.field private mIsClosedCurve:Z

.field private mIsDisplayMetaArea:Z

.field private mIsEnableDoubleTapOnLockscreen:Z

.field mIsEnableGestureEffect:Z

.field private mIsEnabledHapticFeedback:Z

.field private mIsExtractingDataFromView:Z

.field private mIsFirstMediaScan:Z

.field private mIsFirstPointer:Z

.field private mIsKeyguardOn:Z

.field private mIsLastPointer:Z

.field private mIsLiveCropThread:Z

.field private mIsLiveGlanceView:Z

.field private mIsLiveScreencapture:Z

.field private mIsPhone:Z

.field private mIsSendingBootMsg:Z

.field private mIsStartingSuggestionService:Z

.field private mIsUsablePath:Z

.field private mIsUsableSecondPath:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastDataExtractionRequestTime:J

.field private mLoadingAniImgView:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mMaxCoordX:I

.field private mMaxCoordXForIntent:I

.field private mMaxCoordY:I

.field private mMaxCoordYForIntent:I

.field private mMaxNumPointers:I

.field mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

.field private mMedianValueForGesturePosX:I

.field private mMedianValueForGesturePosY:I

.field private mMinCoordX:I

.field private mMinCoordXForIntent:I

.field private mMinCoordY:I

.field private mMinCoordYForIntent:I

.field private final mMinCroppingTime:J

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private mOutofVerticalThresholdToUp:Z

.field private mPathOfCurve:Landroid/graphics/Path;

.field private mPathOfCurveForDrawing:Landroid/graphics/Path;

.field private mPathPaintBlack:Landroid/graphics/Paint;

.field private mPathPaintOrange:Landroid/graphics/Paint;

.field private mPathPaintWhite:Landroid/graphics/Paint;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/smartclip/SmartClipView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field mScreenCaptureOn:Z

.field private mSecondIntersectionPointLast:I

.field private mSecondIntersectionPointPrev:I

.field private mSecondIntersectionPointX:I

.field private mSecondIntersectionPointY:I

.field private mSecondPathOfCurve:Landroid/graphics/Path;

.field public mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field private mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

.field private mStartPointX:F

.field private mStartPointXForCircle:F

.field private mStartPointY:F

.field private mStartPointYForCircle:F

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mVC:Landroid/view/ViewConfiguration;

.field private mVerticalMovingSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 639
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 128
    const-string v0, "SmartClipView"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->TAG:Ljava/lang/String;

    .line 129
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->DEBUG:Z

    .line 130
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 139
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    .line 140
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBootCompleted:Z

    .line 152
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsDisplayMetaArea:Z

    .line 157
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    .line 158
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableGestureEffect:Z

    .line 161
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    .line 162
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 165
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    .line 168
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    .line 176
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    .line 177
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    .line 180
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    .line 182
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 183
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.sec.android.gesturepad"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 190
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_STROKE_WIDTH:I

    .line 191
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_START_CIRCLE_RADIUS:I

    .line 192
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_END_CIRCLE_RADIUS:I

    .line 193
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 195
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_CROPIMAGE_MARGIN:I

    .line 196
    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_START_LOADING_ANIMATION:S

    .line 197
    iput-short v6, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_FINISH_LOADING_ANIMATION:S

    .line 200
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_NONE:I

    .line 201
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 202
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PLAY:I

    .line 204
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_POINT_DISTANCE_MIN:I

    .line 205
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_NON_CLOSED_CURVE_AREA:I

    .line 264
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 302
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    .line 304
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    .line 305
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    .line 331
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    .line 332
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 333
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 334
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 335
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    .line 336
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 337
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    .line 338
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 343
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 344
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUri:Landroid/net/Uri;

    .line 345
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    .line 349
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    .line 350
    iput-short v3, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_SUGGESTION_SERVICE_START:S

    .line 351
    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_CROPPING_IMG_SAVE:S

    .line 353
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    .line 354
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCroppingTime:J

    .line 359
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 363
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    .line 366
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    .line 373
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    .line 374
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    .line 375
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    .line 482
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$1;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 510
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$2;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    .line 527
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    .line 528
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    .line 557
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    .line 925
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$5;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenLongPress:Ljava/lang/Runnable;

    .line 991
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$6;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$6;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 1023
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$7;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$7;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePad:Ljava/lang/Runnable;

    .line 640
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    .line 642
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->init()V

    .line 644
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-nez v0, :cond_f2

    .line 645
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "spengestureservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 647
    :cond_f2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SpenGestureManager;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mgr"    # Lcom/samsung/android/smartclip/SpenGestureManager;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 650
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 128
    const-string v0, "SmartClipView"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->TAG:Ljava/lang/String;

    .line 129
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->DEBUG:Z

    .line 130
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 139
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    .line 140
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBootCompleted:Z

    .line 152
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsDisplayMetaArea:Z

    .line 157
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    .line 158
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableGestureEffect:Z

    .line 161
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    .line 162
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 165
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    .line 168
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    .line 176
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    .line 177
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    .line 180
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    .line 182
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 183
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.sec.android.gesturepad"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 190
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_STROKE_WIDTH:I

    .line 191
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_START_CIRCLE_RADIUS:I

    .line 192
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_END_CIRCLE_RADIUS:I

    .line 193
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 195
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_CROPIMAGE_MARGIN:I

    .line 196
    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_START_LOADING_ANIMATION:S

    .line 197
    iput-short v6, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_FINISH_LOADING_ANIMATION:S

    .line 200
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_NONE:I

    .line 201
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 202
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PLAY:I

    .line 204
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_POINT_DISTANCE_MIN:I

    .line 205
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_NON_CLOSED_CURVE_AREA:I

    .line 264
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 302
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    .line 304
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    .line 305
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    .line 331
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    .line 332
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 333
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 334
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 335
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    .line 336
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 337
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    .line 338
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 343
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 344
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUri:Landroid/net/Uri;

    .line 345
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    .line 349
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    .line 350
    iput-short v3, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_SUGGESTION_SERVICE_START:S

    .line 351
    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_CROPPING_IMG_SAVE:S

    .line 353
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    .line 354
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCroppingTime:J

    .line 359
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 363
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    .line 366
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    .line 373
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    .line 374
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    .line 375
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    .line 482
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$1;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 510
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$2;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    .line 527
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    .line 528
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    .line 557
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    .line 925
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$5;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenLongPress:Ljava/lang/Runnable;

    .line 991
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$6;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$6;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 1023
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$7;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$7;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePad:Ljava/lang/Runnable;

    .line 651
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    .line 652
    iput-object p2, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 654
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->init()V

    .line 656
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-nez v0, :cond_f4

    .line 657
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "spengestureservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 659
    :cond_f4
    return-void
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x40000000

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2199
    const-string v7, "SmartClipView"

    const-string v8, "GetDefaultDisplayBimap"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2202
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2204
    const/4 v7, 0x2

    new-array v2, v7, [F

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aput v7, v2, v6

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aput v7, v2, v5

    .line 2205
    .local v2, "dims":[F
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/smartclip/SmartClipView;->getDegreesForRotation(I)F

    move-result v1

    .line 2206
    .local v1, "degrees":F
    cmpl-float v7, v1, v10

    if-lez v7, :cond_c3

    move v3, v5

    .line 2208
    .local v3, "requiresRotation":Z
    :goto_3b
    if-eqz v3, :cond_5d

    .line 2209
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 2210
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2211
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2212
    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v6

    .line 2213
    aget v7, v2, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v5

    .line 2216
    :cond_5d
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    invoke-static {v7, v8}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2219
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    if-eqz v7, :cond_70

    .line 2220
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->playCaptureSound()V

    .line 2225
    :cond_70
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_82

    .line 2226
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2230
    :cond_82
    if-eqz v3, :cond_c0

    .line 2231
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2233
    .local v4, "ss":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2234
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2235
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2236
    aget v6, v2, v6

    neg-float v6, v6

    div-float/2addr v6, v11

    aget v5, v2, v5

    neg-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2237
    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v10, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2238
    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2239
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2241
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v4    # "ss":Landroid/graphics/Bitmap;
    :cond_c0
    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v5

    .end local v3    # "requiresRotation":Z
    :cond_c3
    move v3, v6

    .line 2206
    goto/16 :goto_3b
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/smartclip/SmartClipView;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/smartclip/SmartClipView;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/smartclip/SmartClipView;Ljava/util/ArrayList;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->startAniForLoadingService()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/smartclip/SmartClipView;)Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    return-void
.end method

.method static synthetic access$5502(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    return p1
.end method

.method static synthetic access$5600(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/smartclip/SmartClipView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/smartclip/SmartClipView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkClosedCurve(III)V
    .registers 11
    .param p1, "resultCoordsX"    # I
    .param p2, "resultCoordsY"    # I
    .param p3, "markNumber"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1324
    const/4 v2, -0x1

    .line 1325
    .local v2, "markNumberFromMatrix":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_4
    const/4 v3, 0x6

    if-ge v1, v3, :cond_43

    .line 1326
    add-int v3, p2, v1

    if-ltz v3, :cond_1f

    if-ltz p1, :cond_1f

    add-int v3, p2, v1

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_1f

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_1f

    .line 1328
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    add-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1331
    :cond_1f
    if-eq v2, v5, :cond_65

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_65

    .line 1333
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_43

    .line 1334
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1335
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_35

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_60

    .line 1337
    :cond_35
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    .line 1338
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    .line 1339
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 1340
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    .line 1345
    :goto_3d
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 1375
    :cond_43
    :goto_43
    const/16 v0, 0xc

    .line 1376
    .local v0, "circleRadius":I
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x48

    if-gt v3, p1, :cond_5d

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x48

    if-lt v3, p1, :cond_5d

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x48

    if-gt v3, p2, :cond_5d

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x48

    if-ge v3, p2, :cond_5f

    .line 1378
    :cond_5d
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    .line 1380
    :cond_5f
    return-void

    .line 1342
    .end local v0    # "circleRadius":I
    :cond_60
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 1343
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    goto :goto_3d

    .line 1350
    :cond_65
    sub-int v3, p2, v1

    if-ltz v3, :cond_7d

    if-ltz p1, :cond_7d

    sub-int v3, p2, v1

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_7d

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_7d

    .line 1352
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    sub-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1355
    :cond_7d
    if-eq v2, v5, :cond_a7

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_a7

    .line 1357
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_43

    .line 1358
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1359
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_93

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_a2

    .line 1361
    :cond_93
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    .line 1362
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    .line 1363
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 1364
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    .line 1369
    :goto_9b
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    goto :goto_43

    .line 1366
    :cond_a2
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 1367
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    goto :goto_9b

    .line 1325
    :cond_a7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method

.method private checkClosedCurveForActionUp(III)V
    .registers 8
    .param p1, "resultCoordsX"    # I
    .param p2, "resultCoordsY"    # I
    .param p3, "markNumber"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1383
    const/16 v0, 0xc

    .line 1385
    .local v0, "circleRadius":I
    iget-boolean v1, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    if-ne v1, v3, :cond_32

    .line 1386
    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit16 v1, v1, -0xf0

    if-gt v1, p1, :cond_32

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit16 v1, v1, 0xf0

    if-lt v1, p1, :cond_32

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit16 v1, v1, -0xf0

    if-gt v1, p2, :cond_32

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit16 v1, v1, 0xf0

    if-lt v1, p2, :cond_32

    .line 1390
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1391
    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    if-eq v1, v2, :cond_2a

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    if-ne v1, v2, :cond_33

    .line 1393
    :cond_2a
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    .line 1397
    :goto_2c
    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 1400
    :cond_32
    return-void

    .line 1395
    :cond_33
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    goto :goto_2c
.end method

.method private getDegreesForRotation(I)F
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2245
    packed-switch p1, :pswitch_data_e

    .line 2253
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2247
    :pswitch_5
    const/high16 v0, 0x43870000

    goto :goto_4

    .line 2249
    :pswitch_8
    const/high16 v0, 0x43340000

    goto :goto_4

    .line 2251
    :pswitch_b
    const/high16 v0, 0x42b40000

    goto :goto_4

    .line 2245
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .registers 6

    .prologue
    .line 1083
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1084
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1085
    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1087
    .local v2, "topActivity":Landroid/content/ComponentName;
    return-object v2
.end method

.method private init()V
    .registers 16

    .prologue
    .line 663
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mHandler:Landroid/os/Handler;

    .line 664
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 665
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 666
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    .line 667
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 669
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 670
    .local v13, "size":Landroid/graphics/Point;
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    .line 671
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v13}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 673
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    .line 675
    .local v14, "wm":Landroid/view/IWindowManager;
    :try_start_5a
    invoke-interface {v14}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_328

    const/4 v0, 0x1

    :goto_61
    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_63} :catch_32b

    .line 681
    :goto_63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;

    .line 682
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;

    const-string v1, "com.sec.spen.flashannotatesvc"

    const-string v2, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    .line 686
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.diotek.mini_penmemo"

    const-string v3, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 690
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    .line 691
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    const-string v1, "com.sec.android.gesturepad"

    const-string v2, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 695
    const-string v0, "SmartClipView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMedianValueForGesturePosX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    .line 698
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    .line 700
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 701
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 702
    .local v7, "captureFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v0, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 708
    .end local v7    # "captureFilter":Landroid/content/IntentFilter;
    :cond_f6
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 709
    .local v11, "mediaFilter":Landroid/content/IntentFilter;
    if-eqz v11, :cond_112

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_112

    .line 710
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    const-string v0, "file"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 716
    :cond_112
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/smartclip/SmartClipView$3;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SmartClipView$3;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 772
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$4;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropHandler:Landroid/os/Handler;

    .line 792
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDirectionHandler:Landroid/os/Handler;

    .line 793
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipView;->setFocusableInTouchMode(Z)V

    .line 794
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mVC:Landroid/view/ViewConfiguration;

    .line 796
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 797
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->setDisplayDegrees()Z

    .line 799
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v0, :cond_338

    .line 800
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    .line 801
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    .line 807
    :goto_158
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayWidthForMatrix:I

    .line 808
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayHeightForMatrix:I

    .line 810
    new-instance v1, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayHeightForMatrix:I

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayWidthForMatrix:I

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v0, :cond_34a

    const/4 v0, 0x1

    :goto_16b
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;-><init>(IIZ)V

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    .line 812
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLastPointer:Z

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstPointer:Z

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    .line 821
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    .line 822
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    .line 823
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    .line 824
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    .line 825
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    .line 826
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    .line 827
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    .line 828
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    .line 829
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 830
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 831
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    .line 832
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    .line 834
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    .line 835
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    .line 836
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    .line 837
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    .line 839
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    .line 840
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    .line 841
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 842
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    .line 843
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    .line 844
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 845
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    .line 846
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointX:I

    .line 847
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointY:I

    .line 848
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointX:I

    .line 849
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointY:I

    .line 850
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 851
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    .line 852
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 853
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 855
    new-instance v9, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_34e

    const/4 v1, 0x0

    invoke-direct {v9, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 857
    .local v9, "dashPath":Landroid/graphics/DashPathEffect;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    .line 858
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 859
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 860
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 861
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 862
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 864
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    .line 865
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 866
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 867
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 868
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 869
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 872
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    .line 873
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 874
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 875
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 876
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 877
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 879
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    .line 880
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 881
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 882
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 883
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 884
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 892
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    .line 893
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 894
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 896
    new-instance v12, Lcom/android/server/smartclip/SmartClipView$PointerState;

    invoke-direct {v12}, Lcom/android/server/smartclip/SmartClipView$PointerState;-><init>()V

    .line 897
    .local v12, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    .line 901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 903
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    .line 905
    new-instance v0, Lcom/android/server/smartclip/GestureEffectManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/GestureEffectManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    .line 906
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPenLongPress:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mPenDoubleTap:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePad:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/GestureEffectManager;->init(Lcom/android/server/smartclip/SmartClipView;Landroid/os/Handler;Lcom/android/server/smartclip/SmartClipView$SPenVibrator;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 908
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_327

    .line 909
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 910
    .local v8, "country":Ljava/lang/String;
    const-string v0, "JP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_327

    .line 912
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    .line 913
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->load(I)V

    .line 916
    .end local v8    # "country":Ljava/lang/String;
    :cond_327
    return-void

    .line 675
    .end local v9    # "dashPath":Landroid/graphics/DashPathEffect;
    .end local v11    # "mediaFilter":Landroid/content/IntentFilter;
    .end local v12    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_328
    const/4 v0, 0x0

    goto/16 :goto_61

    .line 676
    :catch_32b
    move-exception v10

    .line 677
    .local v10, "ex":Landroid/os/RemoteException;
    const-string v0, "SmartClipView"

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z

    goto/16 :goto_63

    .line 803
    .end local v10    # "ex":Landroid/os/RemoteException;
    .restart local v11    # "mediaFilter":Landroid/content/IntentFilter;
    :cond_338
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    .line 804
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    goto/16 :goto_158

    .line 810
    :cond_34a
    const/4 v0, 0x0

    goto/16 :goto_16b

    .line 855
    nop

    :array_34e
    .array-data 4
        0x40a00000
        0x40000000
    .end array-data
.end method

.method private isPossibleCapture()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1065
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1066
    .local v0, "EDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 1067
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_20

    .line 1068
    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1069
    const-string v3, "SmartClipView"

    const-string v4, "MDM: Screen Capture Disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :goto_1f
    return v2

    .line 1075
    :cond_20
    iget-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    if-eq v4, v3, :cond_2c

    .line 1076
    const-string v3, "SmartClipView"

    const-string v4, "flashannotate couldn\'t by MDM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_2c
    move v2, v3

    .line 1079
    goto :goto_1f
.end method

.method private isSecureUnlockEnabled()Z
    .registers 4

    .prologue
    .line 2361
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_13

    .line 2363
    :try_start_4
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2368
    :goto_a
    return v1

    .line 2364
    :catch_b
    move-exception v0

    .line 2365
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartClipView"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2368
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .registers 4
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1092
    .local v0, "topComponentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTopActivity(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1096
    .local p1, "findList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1098
    .local v1, "topComponentName":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 1099
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1100
    const/4 v2, 0x1

    .line 1102
    :goto_1a
    return v2

    .line 1098
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1102
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method private markMatrixForCropping(FFFFI)V
    .registers 22
    .param p1, "oldCoordsX"    # F
    .param p2, "oldCoordsY"    # F
    .param p3, "newCoordsX"    # F
    .param p4, "newCoordsY"    # F
    .param p5, "markNumber"    # I

    .prologue
    .line 1185
    const/4 v10, 0x0

    .line 1186
    .local v10, "startCoordsX":F
    const/4 v11, 0x0

    .line 1187
    .local v11, "startCoordsY":F
    const/4 v2, 0x0

    .line 1188
    .local v2, "endCoordsX":F
    const/4 v3, 0x0

    .line 1189
    .local v3, "endCoordsY":F
    const/4 v7, 0x0

    .line 1190
    .local v7, "resultCoordsX":F
    const/4 v8, 0x0

    .line 1191
    .local v8, "resultCoordsY":F
    const/4 v9, 0x0

    .line 1192
    .local v9, "slope":F
    const/4 v5, 0x0

    .line 1194
    .local v5, "interceptY":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_16

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_36

    .line 1195
    :cond_16
    move/from16 v0, p1

    float-to-int v12, v0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    .line 1196
    move/from16 v0, p2

    float-to-int v12, v0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    .line 1202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 1203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1206
    :cond_36
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    add-float v13, p3, p1

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    add-float v14, p4, p2

    const/high16 v15, 0x40000000

    div-float/2addr v14, v15

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1, v13, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1209
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 1210
    .local v6, "point":Landroid/graphics/Point;
    add-float v12, p3, p1

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    float-to-int v12, v12

    add-float v13, p4, p2

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    cmpl-float v12, p1, p3

    if-nez v12, :cond_6e

    cmpl-float v12, p2, p4

    if-eqz v12, :cond_255

    .line 1215
    :cond_6e
    move/from16 v10, p1

    .line 1216
    move/from16 v11, p2

    .line 1217
    move/from16 v2, p3

    .line 1218
    move/from16 v3, p4

    .line 1220
    sub-float v12, v10, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_f7

    .line 1221
    sub-float v12, v3, v11

    sub-float v13, v2, v10

    div-float v9, v12, v13

    .line 1225
    :goto_83
    mul-float v12, v10, v9

    sub-float v5, v11, v12

    .line 1227
    cmpg-float v12, p1, p3

    if-gtz v12, :cond_19c

    .line 1228
    :goto_8b
    cmpg-float v12, v10, v2

    if-gtz v12, :cond_255

    .line 1229
    move v7, v10

    .line 1230
    mul-float v12, v10, v9

    add-float v8, v12, v5

    .line 1232
    float-to-int v12, v7

    float-to-int v13, v8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/smartclip/SmartClipView;->checkClosedCurve(III)V

    .line 1243
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_a9

    .line 1244
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 1247
    :cond_a9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, 0x3f800000

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f9

    .line 1248
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_b7
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float v13, v8, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_f9

    .line 1249
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    if-ltz v12, :cond_f4

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_f4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_f4

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_f4

    .line 1252
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1248
    :cond_f4
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 1223
    .end local v4    # "i":I
    :cond_f7
    const/4 v9, 0x0

    goto :goto_83

    .line 1256
    :cond_f9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, -0x40800000

    cmpg-float v12, v12, v13

    if-gez v12, :cond_146

    .line 1257
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_107
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float/2addr v13, v8

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_146

    .line 1258
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    if-ltz v12, :cond_143

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_143

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_143

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_143

    .line 1261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1257
    :cond_143
    add-int/lit8 v4, v4, 0x1

    goto :goto_107

    .line 1266
    .end local v4    # "i":I
    :cond_146
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 1267
    float-to-int v12, v8

    if-ltz v12, :cond_16d

    float-to-int v12, v7

    if-ltz v12, :cond_16d

    float-to-int v12, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_16d

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_16d

    .line 1270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    float-to-int v14, v7

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1228
    :cond_16d
    const/high16 v12, 0x3f800000

    add-float/2addr v10, v12

    goto/16 :goto_8b

    .line 1312
    :cond_172
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 1313
    float-to-int v12, v8

    if-ltz v12, :cond_199

    float-to-int v12, v7

    if-ltz v12, :cond_199

    float-to-int v12, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_199

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_199

    .line 1316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    float-to-int v14, v7

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1274
    :cond_199
    const/high16 v12, 0x3f800000

    sub-float/2addr v10, v12

    :cond_19c
    cmpl-float v12, v10, v2

    if-ltz v12, :cond_255

    .line 1275
    move v7, v10

    .line 1276
    mul-float v12, v10, v9

    add-float v8, v12, v5

    .line 1278
    float-to-int v12, v7

    float-to-int v13, v8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/smartclip/SmartClipView;->checkClosedCurve(III)V

    .line 1289
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1ba

    .line 1290
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 1293
    :cond_1ba
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, 0x3f800000

    cmpl-float v12, v12, v13

    if-lez v12, :cond_208

    .line 1294
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1c8
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float v13, v8, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_208

    .line 1295
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    if-ltz v12, :cond_205

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    if-ltz v12, :cond_205

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_205

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_205

    .line 1298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1294
    :cond_205
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c8

    .line 1302
    .end local v4    # "i":I
    :cond_208
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, -0x40800000

    cmpg-float v12, v12, v13

    if-gez v12, :cond_172

    .line 1303
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_216
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float/2addr v13, v8

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_172

    .line 1304
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    if-ltz v12, :cond_252

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    if-ltz v12, :cond_252

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_252

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_252

    .line 1307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1303
    :cond_252
    add-int/lit8 v4, v4, 0x1

    goto :goto_216

    .line 1321
    .end local v4    # "i":I
    :cond_255
    return-void
.end method

.method private playCaptureSound()V
    .registers 3

    .prologue
    .line 2188
    const-string v0, "service.camera.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2189
    const-string v0, "SmartClipView"

    const-string v1, "Camera is running!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    if-eqz v0, :cond_21

    .line 2192
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->play(I)V

    .line 2194
    :cond_21
    return-void
.end method

.method private setAboutStartingSuggestionService()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 2330
    iget-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-ne v4, v6, :cond_3e

    .line 2331
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2337
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 2340
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2341
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2343
    .local v3, "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.SmartClipService.SmartClipAppService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2346
    const-string v4, "SmartClipView"

    const-string v5, "addSPenEvent : SuggestionService is running!."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    .line 2356
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3e
    return-void

    .line 2351
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3f
    const-string v4, "SmartClipView"

    const-string v5, "addSPenEvent : SuggestionService is not running!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    goto :goto_1b
.end method

.method private setDisplayDegrees()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2284
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    .line 2285
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    .line 2287
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 2288
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iget v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-le v2, v5, :cond_95

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    :goto_20
    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mVerticalMovingSlop:I

    .line 2294
    :goto_24
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SmartClipView;->getDegreesForRotation(I)F

    move-result v1

    .line 2296
    .local v1, "degress":F
    const-string v2, "SmartClipView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentDisplayWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrentDisplayHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Rot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    const/4 v0, 0x0

    .line 2301
    .local v0, "changed":Z
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_7a

    const/high16 v2, 0x43340000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_a2

    .line 2303
    :cond_7a
    const-string v2, "SmartClipView"

    const-string v5, "setDisplayDegrees : mDisplayRoateDegress is 0"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-ne v2, v3, :cond_9f

    .line 2305
    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    .line 2306
    const/4 v0, 0x1

    .line 2322
    :goto_88
    if-eqz v0, :cond_94

    .line 2323
    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v2, :cond_b4

    move v2, v3

    :goto_91
    invoke-virtual {v5, v2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->setPortrait(Z)V

    .line 2326
    :cond_94
    return v0

    .line 2288
    .end local v0    # "changed":Z
    .end local v1    # "degress":F
    :cond_95
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    goto :goto_20

    .line 2291
    :cond_98
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mVerticalMovingSlop:I

    goto :goto_24

    .line 2308
    .restart local v0    # "changed":Z
    .restart local v1    # "degress":F
    :cond_9f
    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    goto :goto_88

    .line 2312
    :cond_a2
    const-string v2, "SmartClipView"

    const-string v5, "setDisplayDegrees : mDisplayRoateDegress is 1"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v2, :cond_b1

    .line 2315
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    .line 2316
    const/4 v0, 0x1

    goto :goto_88

    .line 2318
    :cond_b1
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    goto :goto_88

    :cond_b4
    move v2, v4

    .line 2323
    goto :goto_91
.end method

.method private setPointGroupClear()V
    .registers 5

    .prologue
    const/high16 v3, -0x40800000

    const/4 v2, -0x1

    .line 2000
    const-string v0, "SmartClipView"

    const-string v1, "setPointGroupClear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    .line 2002
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    .line 2003
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 2004
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    .line 2005
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointX:I

    .line 2006
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointY:I

    .line 2007
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointX:I

    .line 2008
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointY:I

    .line 2009
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    .line 2010
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    .line 2011
    return-void
.end method

.method private showToast(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2184
    return-void
.end method

.method private startAniForLoadingService()V
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000

    const/4 v6, 0x0

    .line 2015
    invoke-virtual {p0, v6}, Lcom/android/server/smartclip/SmartClipView;->setVisibility(I)V

    .line 2016
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2017
    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 2018
    .local v11, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2019
    .local v10, "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2020
    .local v9, "rectForAnimation":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2022
    .local v7, "bitmapForAnimation":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2023
    .local v8, "canvasForAnimation":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {v8, v10, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2025
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2026
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2028
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    .line 2030
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2032
    .local v0, "ani":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2033
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2034
    new-instance v1, Lcom/android/server/smartclip/SmartClipView$9;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SmartClipView$9;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2053
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2054
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->playVibrator()V

    .line 2055
    return-void
.end method


# virtual methods
.method public addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    .registers 33
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isKeyguardOn"    # Z
    .param p3, "isLiveGlanceView"    # Z

    .prologue
    .line 1406
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    .line 1407
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    if-nez v2, :cond_6ce

    .line 1408
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    .line 1409
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 1413
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1414
    .local v8, "action":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1416
    .local v24, "totalPointerSize":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-nez v2, :cond_39

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_40

    :cond_39
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_351

    :cond_40
    const/16 v2, 0x9

    if-eq v8, v2, :cond_351

    const/4 v2, 0x7

    if-eq v8, v2, :cond_351

    const/16 v2, 0xa

    if-eq v8, v2, :cond_351

    .line 1420
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-nez v2, :cond_6f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6f

    .line 1421
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1422
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 1423
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    .line 1425
    monitor-exit v28

    .line 1996
    .end local v8    # "action":I
    .end local v24    # "totalPointerSize":I
    :cond_6e
    :goto_6e
    return-void

    .line 1428
    .restart local v8    # "action":I
    .restart local v24    # "totalPointerSize":I
    :cond_6f
    if-eqz v8, :cond_76

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_171

    .line 1432
    :cond_76
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : addSPenEvent event down start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->updateRotation()V

    .line 1435
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setAboutStartingSuggestionService()V

    .line 1437
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_95

    .line 1439
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : can not cropping because SuggestionService is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    monitor-exit v28

    goto :goto_6e

    .line 1952
    .end local v8    # "action":I
    .end local v24    # "totalPointerSize":I
    :catchall_92
    move-exception v2

    monitor-exit v28
    :try_end_94
    .catchall {:try_start_1d .. :try_end_94} :catchall_92

    throw v2

    .line 1443
    .restart local v8    # "action":I
    .restart local v24    # "totalPointerSize":I
    :cond_95
    :try_start_95
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_a9

    .line 1444
    const-string v2, "SmartClipView"

    const-string v3, "CropThread is live!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1446
    monitor-exit v28

    goto :goto_6e

    .line 1449
    :cond_a9
    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v18, v2, 0x8

    .line 1451
    .local v18, "index":I
    if-nez v8, :cond_f3

    .line 1452
    const/16 v21, 0x0

    .local v21, "p":I
    :goto_b3
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_d1

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 1454
    .local v22, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->clearTrace()V

    .line 1455
    const/4 v2, 0x0

    move-object/from16 v0, v22

    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2602(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    .line 1452
    add-int/lit8 v21, v21, 0x1

    goto :goto_b3

    .line 1457
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_d1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    .line 1458
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    .line 1459
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    .line 1462
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 1463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    .line 1464
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    .line 1467
    .end local v21    # "p":I
    :cond_f3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    .line 1468
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    if-ge v2, v3, :cond_10f

    .line 1469
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    .line 1472
    :cond_10f
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1473
    .local v17, "id":I
    :goto_117
    move/from16 v0, v24

    move/from16 v1, v17

    if-gt v0, v1, :cond_12e

    .line 1474
    new-instance v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;-><init>()V

    .line 1475
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    add-int/lit8 v24, v24, 0x1

    .line 1477
    goto :goto_117

    .line 1479
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_12e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    if-ltz v2, :cond_148

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2600(Lcom/android/server/smartclip/SmartClipView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_14e

    .line 1480
    :cond_148
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    .line 1483
    :cond_14e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 1484
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2602(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    .line 1485
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLastPointer:Z

    .line 1490
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    .line 1492
    const-string v2, "SmartClipView"

    const-string v3, "mBrType : BROADCAST_VIDEOPLAYER_PAUSE SET"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    .end local v17    # "id":I
    .end local v18    # "index":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_171
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_181

    .line 1497
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : can not cropping because SuggestionService is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    monitor-exit v28

    goto/16 :goto_6e

    .line 1501
    :cond_181
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_19d

    .line 1502
    const-string v2, "SmartClipView"

    const-string v3, "CropThread is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1504
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1505
    monitor-exit v28

    goto/16 :goto_6e

    .line 1508
    :cond_19d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    .line 1513
    .local v13, "eventPointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    .line 1515
    .local v15, "historySize":I
    const/4 v14, 0x0

    .local v14, "historyPos":I
    :goto_1a6
    if-ge v14, v15, :cond_278

    .line 1516
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1aa
    move/from16 v0, v16

    if-ge v0, v13, :cond_274

    .line 1517
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1518
    .restart local v17    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    if-eqz v2, :cond_26a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    move-object/from16 v22, v2

    .line 1519
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :goto_1ca
    if-eqz v22, :cond_26e

    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2700(Lcom/android/server/smartclip/SmartClipView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    .line 1520
    .local v10, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_1d0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14, v10}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 1522
    if-eqz v22, :cond_266

    .line 1523
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/android/server/smartclip/SmartClipView$PointerState;->addTrace(FF)V

    .line 1524
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    const/high16 v3, -0x40800000

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1f6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    const/high16 v3, -0x40800000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_237

    .line 1525
    :cond_1f6
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    .line 1526
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    .line 1527
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    .line 1528
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    .line 1529
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 1530
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 1531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1533
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mPathOfCurveForDrawing reset 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1536
    :cond_237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v6, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    iget v7, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1540
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 1541
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 1516
    :cond_266
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1aa

    .line 1518
    .end local v10    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_26a
    const/16 v22, 0x0

    goto/16 :goto_1ca

    .line 1519
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_26e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_1d0

    .line 1515
    .end local v17    # "id":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_274
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1a6

    .line 1547
    .end local v16    # "i":I
    :cond_278
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_27a
    move/from16 v0, v16

    if-ge v0, v13, :cond_351

    .line 1548
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1549
    .restart local v17    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    if-eqz v2, :cond_347

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    move-object/from16 v22, v2

    .line 1550
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :goto_29a
    if-eqz v22, :cond_34b

    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2700(Lcom/android/server/smartclip/SmartClipView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    .line 1551
    .restart local v10    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_2a0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1553
    if-eqz v22, :cond_343

    .line 1554
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/android/server/smartclip/SmartClipView$PointerState;->addTrace(FF)V

    .line 1555
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    const/high16 v3, -0x40800000

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2c6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    const/high16 v3, -0x40800000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_307

    .line 1556
    :cond_2c6
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    .line 1557
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    .line 1558
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    .line 1559
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    .line 1560
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 1561
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 1562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1564
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mPathOfCurveForDrawing reset 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1567
    :cond_307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v6, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    iget v7, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1570
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 1571
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 1572
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v22

    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2802(Lcom/android/server/smartclip/SmartClipView$PointerState;I)I

    .line 1547
    :cond_343
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_27a

    .line 1549
    .end local v10    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_347
    const/16 v22, 0x0

    goto/16 :goto_29a

    .line 1550
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_34b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_2a0

    .line 1577
    .end local v13    # "eventPointerCount":I
    .end local v14    # "historyPos":I
    .end local v15    # "historySize":I
    .end local v16    # "i":I
    .end local v17    # "id":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_351
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    if-eqz v2, :cond_36f

    .line 1580
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mDisplayRoateChanged is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1582
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 1583
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1587
    :cond_36f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->getBoundRectOfPath()Landroid/graphics/Rect;

    move-result-object v9

    .line 1588
    .local v9, "boundRectOfPath":Landroid/graphics/Rect;
    if-eqz v9, :cond_37e

    .line 1589
    const/4 v2, 0x2

    if-ne v8, v2, :cond_4a0

    .line 1590
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/android/server/smartclip/SmartClipView;->requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z

    .line 1596
    :cond_37e
    :goto_37e
    const-string v2, "SmartClipView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MotionEvent, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const/4 v2, 0x1

    if-eq v8, v2, :cond_39e

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3f2

    .line 1601
    :cond_39e
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1608
    .local v23, "totalPointerCount":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    .line 1609
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    .line 1612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    sub-long v11, v2, v4

    .line 1618
    .local v11, "croppingTime":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v11, v2

    if-gez v2, :cond_4ab

    .line 1619
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1715
    :cond_3eb
    :goto_3eb
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1718
    .end local v11    # "croppingTime":J
    .end local v23    # "totalPointerCount":I
    :cond_3f2
    const/4 v2, 0x3

    if-ne v8, v2, :cond_403

    .line 1719
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : action_calcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1723
    :cond_403
    const/16 v2, 0xa

    if-ne v8, v2, :cond_415

    .line 1724
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : action is MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1728
    :cond_415
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    .line 1730
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    if-eqz v2, :cond_46f

    .line 1731
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_67a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_67a

    .line 1734
    const-string v2, "SmartClipView"

    const-string v3, "duplicated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1736
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1737
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    .line 1738
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 1739
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    .line 1740
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 1741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1950
    :goto_46a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1952
    :cond_46f
    monitor-exit v28
    :try_end_470
    .catchall {:try_start_95 .. :try_end_470} :catchall_92

    .line 1955
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    packed-switch v2, :pswitch_data_710

    .line 1978
    .end local v8    # "action":I
    .end local v9    # "boundRectOfPath":Landroid/graphics/Rect;
    .end local v24    # "totalPointerSize":I
    :goto_477
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-nez v2, :cond_705

    .line 1979
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_48c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6e

    .line 1981
    :cond_48c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_718

    :pswitch_493
    goto/16 :goto_6e

    .line 1988
    :pswitch_495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_6e

    .line 1591
    .restart local v8    # "action":I
    .restart local v9    # "boundRectOfPath":Landroid/graphics/Rect;
    .restart local v24    # "totalPointerSize":I
    :cond_4a0
    const/4 v2, 0x1

    if-ne v8, v2, :cond_37e

    .line 1592
    const/4 v2, 0x0

    :try_start_4a4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/android/server/smartclip/SmartClipView;->requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z

    goto/16 :goto_37e

    .line 1620
    .restart local v11    # "croppingTime":J
    .restart local v23    # "totalPointerCount":I
    :cond_4ab
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z

    if-nez v2, :cond_673

    .line 1621
    const/16 v21, 0x0

    .restart local v21    # "p":I
    :goto_4b3
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_54a

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 1623
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2900(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v25

    .line 1624
    .local v25, "traceCount":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_4cb
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_533

    .line 1625
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3000(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v2

    aget v26, v2, v16

    .line 1626
    .local v26, "x":F
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3100(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v2

    aget v27, v2, v16

    .line 1628
    .local v27, "y":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    if-nez v2, :cond_4f7

    .line 1629
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    .line 1630
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    .line 1631
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    .line 1624
    :goto_4f4
    add-int/lit8 v16, v16, 0x1

    goto :goto_4cb

    .line 1633
    :cond_4f7
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    .line 1634
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    .line 1635
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/smartclip/SmartClipView;->markMatrixForCropping(FFFFI)V

    .line 1637
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    .line 1638
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    .line 1639
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    goto :goto_4f4

    .line 1642
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_533
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->checkClosedCurveForActionUp(III)V

    .line 1621
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4b3

    .line 1646
    .end local v16    # "i":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .end local v25    # "traceCount":I
    :cond_54a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_636

    .line 1648
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mNumColsedCurves is 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1651
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 1664
    :cond_572
    :goto_572
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    if-nez v2, :cond_5ca

    .line 1665
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableGestureEffect:Z

    if-eqz v2, :cond_59c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/smartclip/GestureEffectManager;->checkDirectionGesture(FFFFLjava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_5ca

    .line 1666
    :cond_59c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5c2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5ca

    .line 1667
    :cond_5c2
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "so close pointer return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_5ca
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    if-nez v2, :cond_5f4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    if-nez v2, :cond_5f4

    .line 1675
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mIsUsablePath is false and mIsUsableSecondPath is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1678
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    .line 1680
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 1681
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 1682
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    .line 1685
    :cond_5f4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    if-nez v2, :cond_606

    .line 1692
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    .line 1694
    const-string v2, "SmartClipView"

    const-string v3, "mBrType : BROADCAST_VIDEOPLAYER_PLAY SET"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_606
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->isPossibleCapture()Z

    move-result v2

    if-nez v2, :cond_3eb

    .line 1702
    const-string v2, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3eb

    .line 1703
    const-string v2, "SmartClipView"

    const-string v3, "crop is not possible now by app!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1705
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    .line 1706
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 1707
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 1708
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    goto/16 :goto_3eb

    .line 1653
    :cond_636
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_572

    .line 1655
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mNumColsedCurves is 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1658
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 1660
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    goto/16 :goto_572

    .line 1712
    .end local v21    # "p":I
    :cond_673
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z

    goto/16 :goto_3eb

    .line 1744
    .end local v11    # "croppingTime":J
    .end local v23    # "totalPointerCount":I
    :cond_67a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    .line 1746
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/smartclip/SmartClipView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/smartclip/SmartClipView$8;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 1930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_696
    .catchall {:try_start_4a4 .. :try_end_696} :catchall_92

    goto/16 :goto_46a

    .line 1959
    :pswitch_698
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PAUSE"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1960
    .local v19, "intentForVideoPause":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1962
    const-string v2, "SmartClipView"

    const-string v3, "mContext.sendBroadcast : VIDEOPLAYER_PAUSE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_477

    .line 1966
    .end local v19    # "intentForVideoPause":Landroid/content/Intent;
    :pswitch_6b3
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1967
    .local v20, "intentForVideoPlay":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1969
    const-string v2, "SmartClipView"

    const-string v3, "mContext.sendBroadcast : VIDEOPLAYER_PLAY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_477

    .line 1973
    .end local v8    # "action":I
    .end local v9    # "boundRectOfPath":Landroid/graphics/Rect;
    .end local v20    # "intentForVideoPlay":Landroid/content/Intent;
    .end local v24    # "totalPointerSize":I
    :cond_6ce
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    .line 1974
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    .line 1975
    const-string v2, "SmartClipView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSPenEvent : isKeyguardOn is true, GlanceView is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SmartClipSvc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_477

    .line 1994
    :cond_705
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "this event couldn\'t send to GestureDetector"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    .line 1955
    nop

    :pswitch_data_710
    .packed-switch 0x1
        :pswitch_698
        :pswitch_6b3
    .end packed-switch

    .line 1981
    :pswitch_data_718
    .packed-switch 0x0
        :pswitch_495
        :pswitch_495
        :pswitch_495
        :pswitch_495
        :pswitch_493
        :pswitch_495
        :pswitch_495
    .end packed-switch
.end method

.method public closeView()V
    .registers 2

    .prologue
    .line 2416
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipView;->setVisibility(I)V

    .line 2417
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipView;->setCroppingMode(I)V

    .line 2418
    return-void
.end method

.method public cropDraggedRect()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2448
    const-string v3, "SmartClipView"

    const-string v4, "cropDraggedRect()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-nez v3, :cond_d

    .line 2554
    :cond_c
    :goto_c
    return v2

    .line 2454
    :cond_d
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2457
    :cond_19
    const-string v3, "SmartClipView"

    const-string v4, "Starting cropping dragged area!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const/4 v1, 0x0

    .line 2461
    .local v1, "croppedRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v3, :cond_2b

    .line 2462
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v3}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2465
    :cond_2b
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_39

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_3d

    .line 2466
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->getBoundRectOfPath()Landroid/graphics/Rect;

    move-result-object v1

    .line 2470
    :cond_3d
    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_43

    .line 2471
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2472
    :cond_43
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_49

    .line 2473
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2474
    :cond_49
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-le v3, v4, :cond_53

    .line 2475
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 2476
    :cond_53
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-le v3, v4, :cond_5d

    .line 2477
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 2480
    :cond_5d
    const-string v3, "SmartClipView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cropDraggedRect : croppedRect(adjusted) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    .line 2483
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    .line 2484
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    .line 2485
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    .line 2487
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    .line 2488
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    .line 2490
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    if-lez v3, :cond_c

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    if-lez v3, :cond_c

    .line 2494
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    .line 2495
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    .line 2496
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    .line 2497
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    .line 2499
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2500
    .local v0, "cropImgSaveHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/smartclip/SmartClipView$10;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SmartClipView$10;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2554
    const/4 v2, 0x1

    goto/16 :goto_c
.end method

.method protected drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)Z
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "color"    # I

    .prologue
    .line 2437
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2438
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2439
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2440
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2441
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2442
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2443
    const/4 v0, 0x1

    return v0
.end method

.method protected getBoundRectOfPath()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 2421
    const/4 v0, 0x0

    .line 2423
    .local v0, "boundsOfPath":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    if-eqz v2, :cond_21

    .line 2424
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 2426
    .local v1, "rectf":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2427
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "boundsOfPath":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2432
    .end local v1    # "rectf":Landroid/graphics/RectF;
    .restart local v0    # "boundsOfPath":Landroid/graphics/Rect;
    :cond_21
    return-object v0
.end method

.method public getCroppingMode()I
    .registers 2

    .prologue
    .line 2412
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    return v0
.end method

.method public isExclusiveModeActivated()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2401
    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-ne v1, v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 2404
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isLockScreenShowing()Z
    .registers 4

    .prologue
    .line 2372
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_13

    .line 2374
    :try_start_4
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2379
    :goto_a
    return v1

    .line 2375
    :catch_b
    move-exception v0

    .line 2376
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartClipView"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2379
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isShowingGestureEffect()Z
    .registers 2

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v0}, Lcom/android/server/smartclip/GestureEffectManager;->isShowingGestureEffect()Z

    move-result v0

    return v0
.end method

.method public makePathForClosedCurve(IIZ)Z
    .registers 26
    .param p1, "intersectionPointPrev"    # I
    .param p2, "intersectionPointLast"    # I
    .param p3, "isFirstCurve"    # Z

    .prologue
    .line 2058
    const/4 v4, 0x0

    .line 2059
    .local v4, "existOldCoords":Z
    const/4 v9, 0x0

    .line 2060
    .local v9, "oldCoordsX":F
    const/4 v10, 0x0

    .line 2061
    .local v10, "oldCoordsY":F
    const/4 v6, 0x0

    .line 2062
    .local v6, "newCoordsX":F
    const/4 v7, 0x0

    .line 2063
    .local v7, "newCoordsY":F
    const/4 v8, 0x0

    .line 2066
    .local v8, "numberOfAddTrace":I
    const-string v18, "SmartClipView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "makePathForClosedCurve : isFirstCurve : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    const-string v18, "SmartClipView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "makePathForClosedCurve : intersectionPointPrev : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", intersectionPointLast "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2073
    .local v14, "totalPointerCount":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_57
    if-ge v11, v14, :cond_152

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 2075
    .local v13, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2900(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v15

    .line 2076
    .local v15, "traceCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6c
    if-ge v5, v15, :cond_14e

    .line 2077
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3000(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v18

    aget v16, v18, v5

    .line 2078
    .local v16, "x":F
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3100(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v18

    aget v17, v18, v5

    .line 2080
    .local v17, "y":F
    move/from16 v0, p1

    if-gt v0, v8, :cond_da

    add-int/lit8 v18, p2, 0x1

    move/from16 v0, v18

    if-lt v0, v8, :cond_da

    .line 2081
    if-nez v4, :cond_106

    .line 2082
    move/from16 v9, v16

    .line 2083
    move/from16 v10, v17

    .line 2084
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_df

    .line 2085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2087
    float-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointX:I

    .line 2088
    float-to-int v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointY:I

    .line 2095
    :goto_b8
    const/4 v4, 0x1

    .line 2116
    :goto_b9
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 2117
    .local v12, "point":Landroid/graphics/Point;
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2121
    .end local v12    # "point":Landroid/graphics/Point;
    :cond_da
    add-int/lit8 v8, v8, 0x1

    .line 2076
    add-int/lit8 v5, v5, 0x1

    goto :goto_6c

    .line 2090
    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2092
    float-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointX:I

    .line 2093
    float-to-int v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointY:I

    goto :goto_b8

    .line 2097
    :cond_106
    move/from16 v6, v16

    .line 2098
    move/from16 v7, v17

    .line 2099
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_132

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    add-float v19, v6, v9

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    add-float v20, v7, v10

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2111
    :goto_12d
    move/from16 v9, v16

    .line 2112
    move/from16 v10, v17

    goto :goto_b9

    .line 2103
    :cond_132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    add-float v19, v6, v9

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    add-float v20, v7, v10

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_12d

    .line 2073
    .end local v16    # "x":F
    .end local v17    # "y":F
    :cond_14e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_57

    .line 2125
    .end local v5    # "i":I
    .end local v13    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .end local v15    # "traceCount":I
    :cond_152
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 2126
    .local v3, "boundsOfPath":Landroid/graphics/RectF;
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_191

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2135
    :goto_16e
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x42200000

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1a1

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x42200000

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1a1

    .line 2137
    const/16 v18, 0x0

    .line 2140
    :goto_190
    return v18

    .line 2129
    :cond_191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_16e

    .line 2140
    :cond_1a1
    const/16 v18, 0x1

    goto :goto_190
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 1107
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v1, p0}, Lcom/android/server/smartclip/GestureEffectManager;->onAttachedToWindow(Lcom/android/server/smartclip/SmartClipView;)V

    .line 1109
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 1110
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1111
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1112
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1113
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/smartclip/SmartClipView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1114
    return-void
.end method

.method public onDataExtractionResponseArrived(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    .registers 6
    .param p1, "response"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    .prologue
    .line 497
    iget-object v1, p1, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 498
    .local v1, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    if-eqz v1, :cond_12

    .line 499
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 501
    .local v0, "croppedRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/server/smartclip/SmartClipView;->setSmartClipDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    .line 502
    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    .line 503
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    .line 507
    .end local v0    # "croppedRect":Landroid/graphics/Rect;
    :goto_11
    return-void

    .line 505
    :cond_12
    const-string v2, "SmartClipView"

    const-string v3, "onDataExtractionResponseArrived : Repository is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, -0x40800000

    .line 1153
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1a

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1a

    .line 1154
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    const/high16 v4, 0x41000000

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1159
    :cond_1a
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1160
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1162
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_3f

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_3f

    .line 1163
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    const/high16 v4, 0x40800000

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1167
    :cond_3f
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-eq v2, v7, :cond_47

    iget-boolean v2, p0, Lcom/android/server/smartclip/SmartClipView;->mIsDisplayMetaArea:Z

    if-ne v2, v7, :cond_73

    .line 1168
    :cond_47
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v2, :cond_73

    .line 1170
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1171
    .local v0, "contentRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_73

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_73

    .line 1173
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1174
    .local v1, "paint":Landroid/graphics/Paint;
    const v2, 0x3087cefa

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1175
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1176
    const v2, -0x783106

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/smartclip/SmartClipView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)Z

    .line 1181
    .end local v0    # "contentRect":Landroid/graphics/Rect;
    .end local v1    # "paint":Landroid/graphics/Paint;
    :cond_73
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1119
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1120
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mHeaderBottom:I

    .line 1121
    return-void
.end method

.method protected requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z
    .registers 14
    .param p1, "rectToExtract"    # Landroid/graphics/Rect;
    .param p2, "ignoreRequestDuringExtraction"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 447
    if-nez p1, :cond_5

    .line 479
    :cond_4
    :goto_4
    return v5

    .line 450
    :cond_5
    const-string/jumbo v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 452
    .local v4, "windowManager":Landroid/view/IWindowManager;
    if-ne p2, v6, :cond_24

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    sub-long v0, v7, v9

    .line 455
    .local v0, "deltaTime":J
    iget-boolean v7, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    if-ne v7, v6, :cond_49

    .line 456
    const-wide/16 v7, 0x7d0

    cmp-long v7, v0, v7

    if-ltz v7, :cond_4

    .line 465
    .end local v0    # "deltaTime":J
    :cond_24
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    .line 469
    :try_start_2c
    iget v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    .line 470
    iget v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    const v8, 0x186a0

    if-le v7, v8, :cond_3c

    .line 471
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    .line 473
    :cond_3c
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    invoke-direct {v3, v7, p1}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;)V

    .line 474
    .local v3, "event":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    const/4 v7, 0x0

    invoke-interface {v4, v3, v7}, Landroid/view/IWindowManager;->dispatchSmartClipDataExtractionEvent(Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_47} :catch_50

    move v5, v6

    .line 479
    goto :goto_4

    .line 459
    .end local v3    # "event":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .restart local v0    # "deltaTime":J
    :cond_49
    const-wide/16 v7, 0x64

    cmp-long v7, v0, v7

    if-gez v7, :cond_24

    goto :goto_4

    .line 475
    .end local v0    # "deltaTime":J
    :catch_50
    move-exception v2

    .line 476
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SmartClipView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public resetVariable(I)V
    .registers 10
    .param p1, "totalPointerSize"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/high16 v5, -0x40800000

    const/4 v4, 0x0

    .line 2145
    const-string v2, "SmartClipView"

    const-string v3, "resetVariable : reset"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_d
    if-ge v0, p1, :cond_20

    .line 2148
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 2149
    .local v1, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    invoke-virtual {v1}, Lcom/android/server/smartclip/SmartClipView$PointerState;->clearTrace()V

    .line 2150
    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v1, v4}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2602(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    .line 2147
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2153
    .end local v1    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_20
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    .line 2154
    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    .line 2155
    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    .line 2156
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    .line 2157
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLastPointer:Z

    .line 2158
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstPointer:Z

    .line 2159
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    .line 2160
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    .line 2161
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    .line 2162
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    .line 2163
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    .line 2165
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 2166
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 2167
    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    .line 2168
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    .line 2169
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    .line 2170
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 2172
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2174
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_59

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_59

    .line 2175
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    invoke-virtual {v2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->reset()V

    .line 2178
    :cond_59
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    .line 2179
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    .line 2180
    return-void
.end method

.method public setCroppingMode(I)V
    .registers 2
    .param p1, "croppingMode"    # I

    .prologue
    .line 2408
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    .line 2409
    return-void
.end method

.method public setDoubleTapStateBySettingMenu(Z)V
    .registers 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 988
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 989
    return-void
.end method

.method public setFocusWindow(I)V
    .registers 2
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    .line 920
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    .line 921
    return-void
.end method

.method public setHapticEnabled(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 531
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    .line 532
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .registers 3
    .param p1, "isInvisible"    # Z

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/GestureEffectManager;->setPhoneWindowMangerFlag(Z)V

    .line 2390
    return-void
.end method

.method public setSmartClipDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .registers 3
    .param p1, "smartClipDataRepository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 2395
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 2396
    const/4 v0, 0x1

    return v0
.end method

.method public updateRotation()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2260
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "updateRotation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->setDisplayDegrees()Z

    move-result v1

    .line 2264
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 2265
    .local v0, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2900(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v2

    if-le v2, v5, :cond_32

    .line 2266
    if-ne v1, v5, :cond_28

    .line 2267
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 2269
    const-string v2, "SmartClipView"

    const-string v3, "setDisplayDegrees : mDisplayRoateChanged is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :goto_27
    return-void

    .line 2271
    :cond_28
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 2273
    const-string v2, "SmartClipView"

    const-string v3, "setDisplayDegrees : mDisplayRoateChanged is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 2276
    :cond_32
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 2278
    const-string v2, "SmartClipView"

    const-string v3, "setDisplayDegrees : mDisplayRoateChanged is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method
