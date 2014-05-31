.class final Lcom/android/server/power/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/power/DisplayPowerController$Callbacks;
    }
.end annotation


# static fields
.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0xbb8L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0x7d0

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x1f4

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0xbb8L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final ELECTRON_BEAM_OFF_ANIMATION_DURATION_MILLIS:I = 0xc8

.field private static final ELECTRON_BEAM_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0xc8

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x1388L

.field private static final MSG_LIGHT_SENSOR_DEBOUNCED:I = 0x3

.field private static final MSG_PRINT_LAST_LIGHT_SENSOR_EVENT:I = 0x4

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field static final POWERSAVEMODE_BRIGHTNESS_OFFSET:I = 0x14

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x32

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x3e8L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0x190

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_ELECTRON_BEAM_ON_ANIMATION:Z

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final USE_TWILIGHT_ADJUSTMENT:Z


# instance fields
.field private final TAG_DAB:Ljava/lang/String;

.field private final TAG_SENSOR:Ljava/lang/String;

.field private lastLightSensorEventTime:J

.field private lastLightSensorValue:F

.field private lastRawBrightnessValue:F

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAutoBrightnessEnabled:Z

.field private mBrighteningLuxThreshold:F

.field private mBrightnessLevels:[I

.field private mBrightnessLevelsForEbookOnly:[I

.field private mBrightnessValueSlope:[D

.field private mBrightnessValueSlopeForEbookOnly:[D

.field private mBrightnessValues:[I

.field private mBrightnessValuesForEbookOnly:[I

.field private mCablRequest:Lcom/android/server/power/CABLControl;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mDarkeningLuxThreshold:F

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayReadyLocked:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDynamicAutoBrightnessEnabled:Z

.field private mElectronBeamFadesConfig:Z

.field private mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

.field private mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mEnablePrintDynamicAutoBrightnessSpecTable:Z

.field private final mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

.field private mHighHysteresis:F

.field private mHighHysteresisLevels:[I

.field private mHighHysteresisLevelsForEbookOnly:[I

.field private mHighHysteresisSlope:[D

.field private mHighHysteresisSlopeForEbookOnly:[D

.field private mHighHysteresisValues:[I

.field private mHighHysteresisValuesForEbookOnly:[I

.field private mIsEnabledTcon:Z

.field private mIsLockZone:Z

.field private mIsPrintedDynamicAutoBrightnessSpecTable:Z

.field private mIsTablet:Z

.field private mLastHBM:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLights:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private mLowHysteresis:F

.field private mLowHysteresisLevels:[I

.field private mLowHysteresisLevelsForEbookOnly:[I

.field private mLowHysteresisSlope:[D

.field private mLowHysteresisSlopeForEbookOnly:[D

.field private mLowHysteresisValues:[I

.field private mLowHysteresisValuesForEbookOnly:[I

.field private mLowLimitAtHighestAutoBrightnessLevel:I

.field private mMinimumBrightnessStepValue:I

.field private mMinimumExpressiveBrightnessValues:[I

.field private final mNotifier:Lcom/android/server/power/Notifier;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

.field private mPendingScreenOnEvenThoughProximityPositiveLocked:Z

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/power/DisplayPowerState;

.field private mPrevLuxLevel:I

.field private mPrevLuxRange:I

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mRecentLightSamples:I

.field private mRecentLongTermAverageLux:F

.field private mRecentShortTermAverageLux:F

.field private mSECAverageLux:F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessDimConfig:I

.field private mScreenBrightnessOnCover:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/RampAnimator",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnEvenThoughProximityPositive:Z

.field private mScreenOnWasBlocked:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTiltAngle:F

.field private final mTiltListener:Landroid/hardware/SensorEventListener;

.field private mTiltSensor:Landroid/hardware/Sensor;

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

.field private final mTwilight:Lcom/android/server/TwilightService;

.field private mTwilightChanged:Z

.field private final mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

.field private final mUseDefaultResources:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUsingScreenAutoBrightness:Z

.field private mValueOfVirtualZeroCandela:I

.field private mWaitProximityToggled:Z

.field private mWaitingForNegativeProximity:Z

.field private mWasTconMaxLevel:Z

.field private prevIsAutoBrightnessEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    .line 89
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 104
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V
    .registers 21
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "notifier"    # Lcom/android/server/power/Notifier;
    .param p4, "lights"    # Lcom/android/server/LightsService;
    .param p5, "twilight"    # Lcom/android/server/TwilightService;
    .param p6, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p7, "displayManager"    # Lcom/android/server/display/DisplayManagerService;
    .param p8, "displaySuspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p9, "displayBlanker"    # Lcom/android/server/power/DisplayBlanker;
    .param p10, "callbacks"    # Lcom/android/server/power/DisplayPowerController$Callbacks;
    .param p11, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 396
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v6, Ljava/lang/Object;

    invoke-direct/range {v6 .. v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 288
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 291
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 292
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 348
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 351
    const/high16 v6, 0x3f800000

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 373
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    .line 377
    const-string v6, "[DAB] "

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->TAG_DAB:Ljava/lang/String;

    .line 378
    const-string v6, "[sensor] "

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->TAG_SENSOR:Ljava/lang/String;

    .line 381
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mCablRequest:Lcom/android/server/power/CABLControl;

    .line 384
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    .line 668
    new-instance v6, Lcom/android/server/power/DisplayPowerController$1;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$1;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1090
    new-instance v6, Lcom/android/server/power/DisplayPowerController$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$2;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1317
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    .line 1318
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    .line 1573
    const/high16 v6, 0x437f0000

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->lastRawBrightnessValue:F

    .line 1574
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastHBM:Z

    .line 1575
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWasTconMaxLevel:Z

    .line 1756
    new-instance v6, Lcom/android/server/power/DisplayPowerController$3;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$3;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1769
    new-instance v6, Lcom/android/server/power/DisplayPowerController$4;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$4;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1782
    new-instance v6, Lcom/android/server/power/DisplayPowerController$5;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$5;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1937
    new-instance v6, Lcom/android/server/power/DisplayPowerController$7;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$7;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1966
    new-instance v6, Lcom/android/server/power/DisplayPowerController$8;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$8;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1993
    new-instance v6, Lcom/android/server/power/DisplayPowerController$9;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$9;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    .line 2005
    const/high16 v6, -0x40800000

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    .line 2006
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    .line 2008
    new-instance v6, Lcom/android/server/power/DisplayPowerController$10;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$10;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTiltListener:Landroid/hardware/SensorEventListener;

    .line 2082
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mIsTablet:Z

    .line 2088
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    .line 2089
    const/16 v6, 0xfa

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 2354
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxLevel:I

    .line 2355
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->prevIsAutoBrightnessEnabled:Z

    .line 2356
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z

    .line 2386
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxRange:I

    .line 2496
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mEnablePrintDynamicAutoBrightnessSpecTable:Z

    .line 2497
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseDefaultResources:Z

    .line 397
    new-instance v6, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v6, p0, p1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    .line 398
    iput-object p3, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    .line 399
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 400
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    .line 401
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    .line 402
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    .line 404
    iput-object p4, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    .line 405
    iput-object p5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    .line 406
    iput-object p6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 407
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 409
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 411
    .local v3, "resources":Landroid/content/res/Resources;
    const v6, 0x10e002f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 414
    const v6, 0x10e002c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 418
    .local v5, "screenBrightnessMinimum":I
    const v6, 0x111001a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 422
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->isTablet()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mIsTablet:Z

    .line 424
    invoke-static {p2}, Lcom/android/server/power/CABLControl;->getInstance(Landroid/content/Context;)Lcom/android/server/power/CABLControl;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mCablRequest:Lcom/android/server/power/CABLControl;

    .line 427
    new-instance v6, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v6}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    .line 429
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_1dc

    .line 430
    const v6, 0x1110073

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    .line 435
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v6, :cond_233

    .line 436
    const-string v6, "DisplayPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DAB] Dynamic AutoBrightness is Enabled. mDynamicAutoBrightnessEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const v6, 0x10e0050

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 440
    const v6, 0x10e0051

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    .line 443
    const v6, 0x1070039

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    .line 445
    const v6, 0x107003a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    .line 447
    const v6, 0x107003b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    .line 449
    const v6, 0x107003c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    .line 451
    const v6, 0x107003d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    .line 453
    const v6, 0x107003e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    .line 457
    const v6, 0x107003f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    .line 459
    const v6, 0x1070040

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    .line 461
    const v6, 0x1070041

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    .line 463
    const v6, 0x1070042

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    .line 465
    const v6, 0x1070043

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    .line 467
    const v6, 0x1070044

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    .line 471
    const v6, 0x1070038

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    .line 473
    const v6, 0x10e004f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumBrightnessStepValue:I

    .line 475
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initDynamicAutoBrightnessSlopeTables()V

    .line 477
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 480
    .local v2, "minAutoBrightness":I
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 483
    if-ge v2, v5, :cond_1d3

    .line 484
    move v5, v2

    .line 510
    .end local v2    # "minAutoBrightness":I
    :cond_1d3
    :goto_1d3
    const v6, 0x10e0030

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    .line 514
    :cond_1dc
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 515
    const/16 v6, 0xff

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 517
    const v6, 0x111001d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    .line 521
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 522
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_20b

    .line 523
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v6

    const/high16 v7, 0x40a00000

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    .line 528
    :cond_20b
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_221

    .line 530
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 532
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    .line 536
    :cond_221
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_232

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v6, :cond_232

    .line 537
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    .line 539
    :cond_232
    return-void

    .line 489
    :cond_233
    const v6, 0x1070021

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 491
    .local v1, "lux":[I
    const v6, 0x1070023

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 494
    .local v4, "screenBrightness":[I
    invoke-static {v1, v4}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 495
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v6, :cond_293

    .line 496
    const-string v6, "DisplayPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "must be monotic and have exactly one more entry than "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "config_autoBrightnessLevels (size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "which must be strictly increasing.  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Auto-brightness will be disabled."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    goto/16 :goto_1d3

    .line 504
    :cond_293
    const/4 v6, 0x0

    aget v6, v4, v6

    if-ge v6, v5, :cond_1d3

    .line 505
    const/4 v6, 0x0

    aget v5, v4, v6

    goto/16 :goto_1d3
.end method

.method static synthetic access$000(Lcom/android/server/power/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$Callbacks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerController;JZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/DisplayPowerController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/DisplayPowerController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/DisplayPowerController;JF)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/power/DisplayPowerController;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorEventTime:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/server/power/DisplayPowerController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # F

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorValue:F

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/power/DisplayPowerController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/power/DisplayPowerController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/power/DisplayPowerController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # F

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/SuspendBlocker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->printLastLightSensorEvent()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/DisplayPowerController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerController;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method private animateScreenBrightness(II)V
    .registers 6
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-eqz v0, :cond_e

    .line 1069
    const-string v0, "DisplayPowerController"

    const-string v1, "forceLcdBacklightOff!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/4 p1, 0x0

    .line 1073
    :cond_e
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (PSM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v2, v2, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AB limit:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") MB Limit:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") MAdj:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1086
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->onScreenBrightness(I)V

    .line 1088
    :cond_af
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .registers 10
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 1293
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1294
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 1295
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1296
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    .line 1306
    :goto_f
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    .line 1307
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    .line 1308
    return-void

    .line 1298
    :cond_14
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v0, p1, v2

    .line 1299
    .local v0, "timeDelta":J
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1301
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    goto :goto_f
.end method

.method private applyLightSensorMeasurementSEC(JF)V
    .registers 10
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v5, 0x1

    .line 1263
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1264
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    if-ne v3, v5, :cond_12

    .line 1265
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    .line 1286
    :goto_d
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    .line 1287
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    .line 1288
    return-void

    .line 1268
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    .line 1269
    .local v0, "prevLockZone":Z
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    const/high16 v4, 0x428c0000

    cmpg-float v3, v3, v4

    if-gez v3, :cond_55

    .line 1270
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    .line 1274
    :goto_1e
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    if-eqz v3, :cond_2a

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    cmpg-float v3, p3, v3

    if-gez v3, :cond_2a

    .line 1275
    iget p3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1277
    :cond_2a
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    if-eq v0, v3, :cond_48

    .line 1278
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSTEMP : mIsLockZone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_48
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v1, p1, v3

    .line 1282
    .local v1, "timeDelta":J
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    add-float/2addr v3, p3

    const/high16 v4, 0x3f000000

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    goto :goto_d

    .line 1272
    .end local v1    # "timeDelta":J
    :cond_55
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    goto :goto_1e
.end method

.method private blockScreenOn()V
    .registers 3

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v0, :cond_18

    .line 1013
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 1014
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 1015
    const-string v0, "DisplayPowerController"

    const-string v1, "Screen Readiness under inspection."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1020
    :cond_18
    return-void
.end method

.method private static clamp(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1053
    if-gt p0, p1, :cond_3

    .line 1059
    .end local p1    # "min":I
    :goto_2
    return p1

    .line 1056
    .restart local p1    # "min":I
    :cond_3
    if-lt p0, p2, :cond_7

    move p1, p2

    .line 1057
    goto :goto_2

    :cond_7
    move p1, p0

    .line 1059
    goto :goto_2
.end method

.method private static clampAbsoluteBrightness(I)I
    .registers 3
    .param p0, "value"    # I

    .prologue
    .line 1049
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 1045
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .registers 5

    .prologue
    .line 1178
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    .line 1179
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1180
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 1182
    :cond_11
    return-void
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .registers 15
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    .prologue
    const/high16 v12, 0x3fa00000

    .line 543
    :try_start_2
    array-length v2, p1

    .line 544
    .local v2, "n":I
    new-array v5, v2, [F

    .line 545
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 546
    .local v6, "y":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    .line 547
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_12
    if-ge v1, v2, :cond_26

    .line 548
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 549
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 552
    :cond_26
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 553
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_7e

    .line 554
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/high16 v4, 0x3f800000

    .local v4, "v":F
    :goto_48
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_7e

    .line 556
    const-string v7, "DisplayPowerController"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_73} :catch_75

    .line 555
    mul-float/2addr v4, v12

    goto :goto_48

    .line 560
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_75
    move-exception v0

    .line 561
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "DisplayPowerController"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_7e
    return-object v3
.end method

.method private debounceLightSensor()V
    .registers 7

    .prologue
    .line 1497
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_47

    .line 1498
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1499
    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_40

    .line 1500
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_37

    .line 1501
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_37
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v2, :cond_48

    .line 1505
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurementSEC(JF)V

    .line 1510
    :cond_40
    :goto_40
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v2, :cond_4e

    .line 1511
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLuxSEC(J)V

    .line 1516
    .end local v0    # "time":J
    :cond_47
    :goto_47
    return-void

    .line 1507
    .restart local v0    # "time":J
    :cond_48
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    goto :goto_40

    .line 1513
    :cond_4e
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    goto :goto_47
.end method

.method private debounceProximitySensor()V
    .registers 8

    .prologue
    .line 1158
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v3, :cond_25

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_25

    .line 1161
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1162
    .local v1, "now":J
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_26

    .line 1164
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1165
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    .line 1166
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1175
    .end local v1    # "now":J
    :cond_25
    :goto_25
    return-void

    .line 1170
    .restart local v1    # "now":J
    :cond_26
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1171
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1172
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_25
.end method

.method private dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2439
    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v9, :cond_272

    .line 2440
    const-string v6, ""

    .line 2441
    .local v6, "mStrLowHysteresisPoints":Ljava/lang/String;
    const-string v2, ""

    .line 2442
    .local v2, "mStrBrightnessValuePoints":Ljava/lang/String;
    const-string v4, ""

    .line 2443
    .local v4, "mStrHighHysteresisPoints":Ljava/lang/String;
    const-string v8, ""

    .line 2445
    .local v8, "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    const-string v9, "[DAB] Dynamic Auto Brightness Tables :"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2446
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mValueOfVirtualZeroCandela = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2447
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mLowLimitAtHighestAutoBrightnessLevel = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2448
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mMinimumBrightnessStepValue = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumBrightnessStepValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2449
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_91

    .line 2450
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2449
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 2452
    :cond_91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrLowHysteresisPoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2453
    const/4 v1, 0x0

    :goto_a8
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_df

    .line 2454
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2453
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 2456
    :cond_df
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrBrightnessValuePoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2457
    const/4 v1, 0x0

    :goto_f6
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_12d

    .line 2458
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2457
    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    .line 2460
    :cond_12d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrHighHysteresisPoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2461
    const/4 v1, 0x0

    :goto_144
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    array-length v9, v9

    if-ge v1, v9, :cond_167

    .line 2462
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2461
    add-int/lit8 v1, v1, 0x1

    goto :goto_144

    .line 2464
    :cond_167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrMinimumExpressiveBrightnessValues = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2467
    const-string v7, ""

    .line 2468
    .local v7, "mStrLowHysteresisPointsForEbookOnly":Ljava/lang/String;
    const-string v3, ""

    .line 2469
    .local v3, "mStrBrightnessValuePointsForEbookOnly":Ljava/lang/String;
    const-string v5, ""

    .line 2471
    .local v5, "mStrHighHysteresisPointsForEbookOnly":Ljava/lang/String;
    const-string v9, "[DAB] "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2472
    const/4 v1, 0x0

    :goto_189
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_1c0

    .line 2473
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2472
    add-int/lit8 v1, v1, 0x1

    goto :goto_189

    .line 2475
    :cond_1c0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrLowHysteresisPointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2476
    const/4 v1, 0x0

    :goto_1d7
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_20e

    .line 2477
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2476
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d7

    .line 2479
    :cond_20e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrBrightnessValuePointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2480
    const/4 v1, 0x0

    :goto_225
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_25c

    .line 2481
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2480
    add-int/lit8 v1, v1, 0x1

    goto :goto_225

    .line 2483
    :cond_25c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrHighHysteresisPointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_272
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_272} :catch_273

    .line 2489
    .end local v1    # "i":I
    .end local v2    # "mStrBrightnessValuePoints":Ljava/lang/String;
    .end local v3    # "mStrBrightnessValuePointsForEbookOnly":Ljava/lang/String;
    .end local v4    # "mStrHighHysteresisPoints":Ljava/lang/String;
    .end local v5    # "mStrHighHysteresisPointsForEbookOnly":Ljava/lang/String;
    .end local v6    # "mStrLowHysteresisPoints":Ljava/lang/String;
    .end local v7    # "mStrLowHysteresisPointsForEbookOnly":Ljava/lang/String;
    .end local v8    # "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    :cond_272
    :goto_272
    return-void

    .line 2486
    :catch_273
    move-exception v0

    .line 2487
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] dumpAutoBrightnessTables"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_272
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1829
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1830
    const-string v0, "Display Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentShortTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLongTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsingScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1861
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_29c

    .line 1862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1865
    :cond_29c
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2bc

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1869
    :cond_2bc
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-eqz v0, :cond_2c5

    .line 1870
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1873
    :cond_2c5
    const-string v0, "SEC concepts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1874
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V

    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTiltSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    return-void
.end method

.method private fileWriteInt(Ljava/lang/String;I)V
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2404
    const/4 v2, 0x0

    .line 2405
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DAB] fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    :try_start_23
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_3d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_63

    .line 2422
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_2d
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 2423
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_70

    move-object v2, v3

    .line 2432
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :cond_3c
    :goto_3c
    return-void

    .line 2409
    :catch_3d
    move-exception v0

    .line 2411
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3e
    const-string v4, "/sys/class/tcon/tcon/auto_br"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 2412
    const-string v4, "DisplayPowerController"

    const-string v5, "[DAB] /sys/class/tcon/tcon/auto_br file not found."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2413
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z

    .line 2415
    :cond_50
    const-string v4, "/sys/class/tcon/tcon/lux"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2416
    const-string v4, "DisplayPowerController"

    const-string v5, "[DAB] /sys/class/tcon/tcon/lux file not found."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2417
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_62} :catch_63

    goto :goto_3c

    .line 2424
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_63
    move-exception v0

    .line 2425
    .local v0, "e":Ljava/io/IOException;
    :goto_64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2427
    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_3c

    .line 2428
    :catch_6b
    move-exception v1

    .line 2429
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 2424
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_70
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_64
.end method

.method private getDynamicAutoBrightnessHighHysteresis(F)F
    .registers 13
    .param p1, "cd"    # F

    .prologue
    const-wide v9, 0x3f847ae147ae147bL

    const-wide/16 v5, 0x0

    .line 2241
    const/4 v2, 0x0

    .line 2242
    .local v2, "lux":F
    const/4 v1, 0x0

    .line 2244
    .local v1, "i":I
    :try_start_9
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v3, v3, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_6a

    .line 2245
    const/4 v1, 0x1

    :goto_10
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1e

    .line 2246
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2e

    .line 2248
    :cond_1e
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_31

    .line 2249
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 2250
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    aget v3, v3, v1

    int-to-float v2, v3

    .line 2280
    .end local v2    # "lux":F
    :goto_2d
    return v2

    .line 2245
    .restart local v2    # "lux":F
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2252
    :cond_31
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_62

    .line 2253
    const-wide/high16 v3, 0x4024000000000000L

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto :goto_2d

    .line 2255
    :cond_62
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_2d

    .line 2261
    :cond_6a
    const/4 v1, 0x1

    :goto_6b
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    array-length v3, v3

    if-ge v1, v3, :cond_79

    .line 2262
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_89

    .line 2264
    :cond_79
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    if-lt v1, v3, :cond_8c

    .line 2265
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 2266
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v2, v3

    goto :goto_2d

    .line 2261
    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 2268
    :cond_8c
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_be

    .line 2269
    const-wide/high16 v3, 0x4024000000000000L

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto/16 :goto_2d

    .line 2271
    :cond_be
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c4} :catch_c7

    int-to-float v2, v3

    goto/16 :goto_2d

    .line 2277
    :catch_c7
    move-exception v0

    .line 2279
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessHighHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2280
    const v2, 0x459c4000

    goto/16 :goto_2d
.end method

.method private getDynamicAutoBrightnessLowHysteresis(F)F
    .registers 13
    .param p1, "cd"    # F

    .prologue
    const-wide v9, 0x3f847ae147ae147bL

    const-wide/16 v5, 0x0

    .line 2190
    const/4 v2, 0x0

    .line 2191
    .local v2, "lux":F
    const/4 v1, 0x0

    .line 2193
    .local v1, "i":I
    :try_start_9
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v3, v3, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_6a

    .line 2194
    const/4 v1, 0x1

    :goto_10
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1e

    .line 2195
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2e

    .line 2200
    :cond_1e
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_31

    .line 2201
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    .line 2234
    .end local v2    # "lux":F
    :goto_2d
    return v2

    .line 2194
    .restart local v2    # "lux":F
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2203
    :cond_31
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_62

    .line 2204
    const-wide/high16 v3, 0x4024000000000000L

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto :goto_2d

    .line 2207
    :cond_62
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_2d

    .line 2213
    :cond_6a
    const/4 v1, 0x1

    :goto_6b
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    array-length v3, v3

    if-ge v1, v3, :cond_79

    .line 2214
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_89

    .line 2218
    :cond_79
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    if-lt v1, v3, :cond_8c

    .line 2219
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_2d

    .line 2213
    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 2221
    :cond_8c
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_be

    .line 2222
    const-wide/high16 v3, 0x4024000000000000L

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto/16 :goto_2d

    .line 2225
    :cond_be
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c4} :catch_c7

    int-to-float v2, v3

    goto/16 :goto_2d

    .line 2231
    :catch_c7
    move-exception v0

    .line 2233
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessLowHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2234
    const v2, 0x459c4000

    goto/16 :goto_2d
.end method

.method private getDynamicAutoBrightnessValue(F)F
    .registers 13
    .param p1, "lux"    # F

    .prologue
    const-wide/16 v5, 0x0

    const-wide v9, 0x3f847ae147ae147bL

    .line 2141
    const/4 v0, 0x0

    .line 2142
    .local v0, "cd":F
    const/4 v2, 0x0

    .line 2143
    .local v2, "i":I
    :try_start_9
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v3, v3, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_68

    .line 2144
    const/4 v2, 0x1

    :goto_10
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1e

    .line 2145
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    aget v3, v3, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2e

    .line 2149
    :cond_1e
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    array-length v3, v3

    if-lt v2, v3, :cond_31

    .line 2150
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    .line 2183
    .end local v0    # "cd":F
    :goto_2d
    return v0

    .line 2144
    .restart local v0    # "cd":F
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2152
    :cond_31
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_60

    .line 2153
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    float-to-double v5, p1

    add-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v0, v3

    goto :goto_2d

    .line 2156
    :cond_60
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    goto :goto_2d

    .line 2162
    :cond_68
    const/4 v2, 0x1

    :goto_69
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    array-length v3, v3

    if-ge v2, v3, :cond_77

    .line 2163
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    aget v3, v3, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_87

    .line 2167
    :cond_77
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    array-length v3, v3

    if-lt v2, v3, :cond_8a

    .line 2168
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    goto :goto_2d

    .line 2162
    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 2170
    :cond_8a
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_ba

    .line 2171
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    float-to-double v5, p1

    add-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v0, v3

    goto/16 :goto_2d

    .line 2174
    :cond_ba
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c0} :catch_c3

    int-to-float v0, v3

    goto/16 :goto_2d

    .line 2180
    :catch_c3
    move-exception v1

    .line 2182
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessValue"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2183
    const/high16 v0, 0x437f0000

    goto/16 :goto_2d
.end method

.method private getFinalBrightness(I)I
    .registers 6
    .param p1, "origTarget"    # I

    .prologue
    .line 1520
    move v0, p1

    .line 1523
    .local v0, "modiTarget":I
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v2, v2, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    if-eqz v2, :cond_11

    .line 1524
    add-int/lit8 v1, p1, -0x14

    .line 1525
    .local v1, "powerSaveModeBrightness":I
    if-lez p1, :cond_11

    .line 1526
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1531
    .end local v1    # "powerSaveModeBrightness":I
    :cond_11
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    if-gez v2, :cond_6f

    .line 1532
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    if-le v0, v2, :cond_2a

    .line 1533
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1546
    :cond_2a
    :goto_2a
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    if-eqz v2, :cond_4e

    .line 1547
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-ltz v2, :cond_3e

    .line 1548
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-le v0, v2, :cond_3e

    .line 1549
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    .line 1552
    :cond_3e
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ltz v2, :cond_4e

    .line 1553
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ge v0, v2, :cond_4e

    .line 1554
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    .line 1560
    :cond_4e
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    if-ltz v2, :cond_5e

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    if-ge v0, v2, :cond_5e

    .line 1561
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    .line 1564
    :cond_5e
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    if-ltz v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    if-le v0, v2, :cond_6e

    .line 1565
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    .line 1568
    :cond_6e
    return v0

    .line 1537
    :cond_6f
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    if-lez v2, :cond_2a

    .line 1538
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    if-ge v0, v2, :cond_2a

    .line 1539
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2a
.end method

.method private getFinalDynamicAutoBrightnessValue(FF)I
    .registers 11
    .param p1, "lux"    # F
    .param p2, "origDynamicBrightness"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 2118
    float-to-int v1, p2

    .line 2119
    .local v1, "finalBrightness":I
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 2122
    .local v0, "autoBrightnessAdj":F
    const v2, 0x459c4000

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_14

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    if-ge v1, v2, :cond_14

    .line 2124
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 2127
    :cond_14
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mIsTablet:Z

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_31

    .line 2128
    float-to-double v2, v0

    const-wide v4, -0x4026666666666666L

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v6

    if-le v1, v2, :cond_32

    .line 2129
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v6

    .line 2135
    :cond_31
    :goto_31
    return v1

    .line 2130
    :cond_32
    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v7

    if-ge v1, v2, :cond_31

    .line 2131
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v7

    goto :goto_31
.end method

.method private getSlope(IIIIZ)D
    .registers 16
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "bx"    # I
    .param p4, "by"    # I
    .param p5, "bReverse"    # Z

    .prologue
    const-wide v8, 0x3f847ae147ae147bL

    .line 2336
    const-wide/16 v0, 0x0

    .line 2337
    .local v0, "slope":D
    if-eq p1, p3, :cond_b

    if-ne p2, p4, :cond_e

    .line 2338
    :cond_b
    const-wide/16 v0, 0x0

    .line 2346
    :goto_d
    return-wide v0

    .line 2340
    :cond_e
    if-eqz p5, :cond_23

    .line 2341
    int-to-double v2, p3

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p1

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sub-int v4, p4, p2

    int-to-double v4, v4

    div-double v0, v2, v4

    goto :goto_d

    .line 2343
    :cond_23
    sub-int v2, p4, p2

    int-to-double v2, v2

    int-to-double v4, p3

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    int-to-double v6, p1

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double v0, v2, v4

    goto :goto_d
.end method

.method private static getTwilightGamma(JJJ)F
    .registers 15
    .param p0, "now"    # J
    .param p2, "lastSunset"    # J
    .param p4, "nextSunrise"    # J

    .prologue
    const-wide/32 v7, 0x6ddd00

    const-wide/16 v5, 0x0

    const v4, 0x4adbba00

    const/high16 v0, 0x3fc00000

    const/high16 v1, 0x3f800000

    .line 1729
    cmp-long v2, p2, v5

    if-ltz v2, :cond_1c

    cmp-long v2, p4, v5

    if-ltz v2, :cond_1c

    cmp-long v2, p0, p2

    if-ltz v2, :cond_1c

    cmp-long v2, p0, p4

    if-lez v2, :cond_1e

    :cond_1c
    move v0, v1

    .line 1744
    :cond_1d
    :goto_1d
    return v0

    .line 1734
    :cond_1e
    add-long v2, p2, v7

    cmp-long v2, p0, v2

    if-gez v2, :cond_2d

    .line 1735
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_1d

    .line 1739
    :cond_2d
    sub-long v2, p4, v7

    cmp-long v2, p0, v2

    if-lez v2, :cond_1d

    .line 1740
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_1d
.end method

.method private handleLightSensorEvent(JF)V
    .registers 6
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1248
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v0, :cond_11

    .line 1250
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurementSEC(JF)V

    .line 1251
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLuxSEC(J)V

    .line 1257
    :goto_10
    return-void

    .line 1254
    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1255
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    goto :goto_10
.end method

.method private handleProximitySensorEvent(JZ)V
    .registers 8
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1129
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_b

    .line 1130
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_c

    if-nez p3, :cond_c

    .line 1155
    :cond_b
    :goto_b
    return-void

    .line 1133
    :cond_c
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v2, :cond_12

    if-nez p3, :cond_b

    .line 1140
    :cond_12
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1141
    if-eqz p3, :cond_4a

    .line 1142
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1143
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1151
    :goto_22
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sensor] mPendingProximity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DebounceTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_b

    .line 1146
    :cond_4a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1147
    const-wide/16 v0, 0x32

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_22
.end method

.method private initDynamicAutoBrightnessSlopeTables()V
    .registers 16

    .prologue
    .line 2287
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v12, v0, -0x1

    .line 2288
    .local v12, "lengthOfLowHysteresisSlope":I
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    .line 2289
    .local v8, "lengthOfBrightnessValueSlope":I
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    .line 2291
    .local v10, "lengthOfHighHysteresisSlope":I
    new-array v0, v12, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    .line 2292
    new-array v0, v8, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    .line 2293
    new-array v0, v10, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    .line 2294
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1c
    if-ge v7, v12, :cond_3f

    .line 2295
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    .line 2294
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 2298
    :cond_3f
    const/4 v7, 0x0

    :goto_40
    if-ge v7, v8, :cond_63

    .line 2299
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    .line 2298
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 2302
    :cond_63
    const/4 v7, 0x0

    :goto_64
    if-ge v7, v10, :cond_87

    .line 2303
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    .line 2302
    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    .line 2308
    :cond_87
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v13, v0, -0x1

    .line 2309
    .local v13, "lengthOfLowHysteresisSlopeForEbookOnly":I
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 2310
    .local v9, "lengthOfBrightnessValueSlopeForEbookOnly":I
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v11, v0, -0x1

    .line 2312
    .local v11, "lengthOfHighHysteresisSlopeForEbookOnly":I
    new-array v0, v13, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    .line 2313
    new-array v0, v9, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    .line 2314
    new-array v0, v11, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    .line 2316
    const/4 v7, 0x0

    :goto_a3
    if-ge v7, v13, :cond_c6

    .line 2317
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    .line 2316
    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    .line 2320
    :cond_c6
    const/4 v7, 0x0

    :goto_c7
    if-ge v7, v9, :cond_ea

    .line 2321
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    .line 2320
    add-int/lit8 v7, v7, 0x1

    goto :goto_c7

    .line 2324
    :cond_ea
    const/4 v7, 0x0

    :goto_eb
    if-ge v7, v11, :cond_116

    .line 2325
    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10b} :catch_10e

    .line 2324
    add-int/lit8 v7, v7, 0x1

    goto :goto_eb

    .line 2330
    .end local v7    # "i":I
    .end local v8    # "lengthOfBrightnessValueSlope":I
    .end local v9    # "lengthOfBrightnessValueSlopeForEbookOnly":I
    .end local v10    # "lengthOfHighHysteresisSlope":I
    .end local v11    # "lengthOfHighHysteresisSlopeForEbookOnly":I
    .end local v12    # "lengthOfLowHysteresisSlope":I
    .end local v13    # "lengthOfLowHysteresisSlopeForEbookOnly":I
    :catch_10e
    move-exception v6

    .line 2331
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] initDynamicAutoBrightnessSlopeTables"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2333
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_116
    return-void
.end method

.method private initialize()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 650
    new-instance v0, Lcom/android/server/power/DisplayPowerState;

    new-instance v1, Lcom/android/server/power/ElectronBeam;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/power/ElectronBeam;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerState;-><init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    .line 654
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_5e

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    .line 656
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 657
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 659
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_66

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    .line 661
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 662
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 664
    new-instance v0, Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v2, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    .line 666
    return-void

    .line 654
    :array_5e
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 659
    :array_66
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private isTablet()Z
    .registers 3

    .prologue
    .line 2084
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2085
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_13

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private static lerp(FFF)F
    .registers 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 1748
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .registers 3
    .param p0, "value"    # I

    .prologue
    .line 1063
    invoke-static {p0}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000

    div-float/2addr v0, v1

    return v0
.end method

.method private printDynamicAutoBrightnessSpecTable()V
    .registers 1

    .prologue
    .line 2501
    return-void
.end method

.method private printLastLightSensorEvent()V
    .registers 5

    .prologue
    .line 1959
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_2a

    .line 1960
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DAB] printLastLightSensorEvent : lastLightSensorEventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastLightSensorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :cond_2a
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 1879
    packed-switch p0, :pswitch_data_12

    .line 1887
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 1881
    :pswitch_8
    const-string v0, "Unknown"

    goto :goto_7

    .line 1883
    :pswitch_b
    const-string v0, "Negative"

    goto :goto_7

    .line 1885
    :pswitch_e
    const-string v0, "Positive"

    goto :goto_7

    .line 1879
    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private sendBrightnessLevel(FZ)V
    .registers 7
    .param p1, "lux"    # F
    .param p2, "isAutoBrightnessEnabled"    # Z

    .prologue
    .line 2358
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    .line 2359
    .local v0, "brightnessLevelFile":Ljava/lang/String;
    const-string v1, "/sys/class/tcon/tcon/auto_br"

    .line 2360
    .local v1, "brightnessModeFile":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2363
    .local v2, "luxLevel":I
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->prevIsAutoBrightnessEnabled:Z

    if-eq v3, p2, :cond_15

    .line 2364
    iput-boolean p2, p0, Lcom/android/server/power/DisplayPowerController;->prevIsAutoBrightnessEnabled:Z

    .line 2365
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z

    if-eqz v3, :cond_15

    .line 2366
    if-eqz p2, :cond_28

    const/4 v3, 0x1

    :goto_12
    invoke-direct {p0, v1, v3}, Lcom/android/server/power/DisplayPowerController;->fileWriteInt(Ljava/lang/String;I)V

    .line 2370
    :cond_15
    if-eqz p2, :cond_4e

    .line 2371
    const/high16 v3, 0x41700000

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2a

    const/4 v2, 0x1

    .line 2380
    :goto_1e
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxLevel:I

    if-eq v3, v2, :cond_27

    .line 2381
    invoke-direct {p0, v0, v2}, Lcom/android/server/power/DisplayPowerController;->fileWriteInt(Ljava/lang/String;I)V

    .line 2382
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxLevel:I

    .line 2384
    :cond_27
    return-void

    .line 2366
    :cond_28
    const/4 v3, 0x0

    goto :goto_12

    .line 2372
    :cond_2a
    const/high16 v3, 0x43160000

    cmpg-float v3, p1, v3

    if-gez v3, :cond_32

    const/4 v2, 0x2

    goto :goto_1e

    .line 2373
    :cond_32
    const/high16 v3, 0x447a0000

    cmpg-float v3, p1, v3

    if-gez v3, :cond_3a

    const/4 v2, 0x3

    goto :goto_1e

    .line 2374
    :cond_3a
    const v3, 0x459c4000

    cmpg-float v3, p1, v3

    if-gez v3, :cond_43

    const/4 v2, 0x4

    goto :goto_1e

    .line 2375
    :cond_43
    const v3, 0x471c4000

    cmpg-float v3, p1, v3

    if-gez v3, :cond_4c

    const/4 v2, 0x5

    goto :goto_1e

    .line 2376
    :cond_4c
    const/4 v2, 0x6

    goto :goto_1e

    .line 2378
    :cond_4e
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method private sendLux(F)V
    .registers 5
    .param p1, "lux"    # F

    .prologue
    .line 2388
    const-string v0, "/sys/class/tcon/tcon/lux"

    .line 2389
    .local v0, "luxFile":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v2, v2, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v2, :cond_1d

    .line 2390
    const/4 v1, 0x0

    .line 2392
    .local v1, "luxRange":I
    const/high16 v2, 0x43160000

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1e

    const/4 v1, 0x0

    .line 2396
    :goto_10
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxRange:I

    if-eq v2, v1, :cond_1d

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z

    if-eqz v2, :cond_1d

    .line 2397
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->fileWriteInt(Ljava/lang/String;I)V

    .line 2398
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxRange:I

    .line 2401
    .end local v1    # "luxRange":I
    :cond_1d
    return-void

    .line 2393
    .restart local v1    # "luxRange":I
    :cond_1e
    const v2, 0x469c4000

    cmpg-float v2, p1, v2

    if-gez v2, :cond_27

    const/4 v1, 0x1

    goto :goto_10

    .line 2394
    :cond_27
    const/4 v1, 0x2

    goto :goto_10
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .registers 3

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1779
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1780
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .registers 3

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1766
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1767
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .registers 3

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1753
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1754
    return-void
.end method

.method private sendUpdatePowerState()V
    .registers 3

    .prologue
    .line 635
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 636
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 637
    monitor-exit v1

    .line 638
    return-void

    .line 637
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 641
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_15

    .line 642
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 643
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 644
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 645
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 647
    .end local v0    # "msg":Landroid/os/Message;
    :cond_15
    return-void
.end method

.method private setAmbientLux(F)V
    .registers 4
    .param p1, "lux"    # F

    .prologue
    .line 1311
    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1312
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v1, 0x3f8ccccd

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    .line 1313
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    .line 1314
    return-void
.end method

.method private setLightSensorEnabled(ZZ)V
    .registers 11
    .param p1, "enable"    # Z
    .param p2, "updateAutoBrightness"    # Z

    .prologue
    const-wide/16 v6, 0x64

    const v5, 0x30d40

    const/4 v4, 0x0

    .line 1192
    if-eqz p1, :cond_55

    .line 1193
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-nez v0, :cond_46

    .line 1194
    const/4 p2, 0x1

    .line 1195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    .line 1198
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 1199
    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] setLightSensorEnabled : registerListener mLightSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1202
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v1, "setLightSensorEnabled::registerListener(LightSensor)"

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1204
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1206
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v1, "setLightSensorEnabled::registerListener(TiltSensor)"

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1229
    :cond_46
    :goto_46
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/DisplayPowerController;->sendBrightnessLevel(FZ)V

    .line 1231
    if-eqz p2, :cond_54

    .line 1233
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v0, :cond_81

    .line 1234
    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    .line 1240
    :cond_54
    :goto_54
    return-void

    .line 1210
    :cond_55
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_46

    .line 1211
    iput-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1212
    iput-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1213
    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1214
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1216
    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] setLightSensorEnabled : unregisterListener mLightSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1219
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1223
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    goto :goto_46

    .line 1237
    :cond_81
    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto :goto_54
.end method

.method private setPendingProximityDebounceTime(J)V
    .registers 7
    .param p1, "debounceTime"    # J

    .prologue
    .line 1185
    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    .line 1186
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1188
    :cond_d
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1189
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1098
    if-eqz p1, :cond_2c

    .line 1099
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_2b

    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1103
    const-string v0, "DisplayPowerController"

    const-string v1, "[sensor] setProximitySensorEnabled::registerListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 1107
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1110
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v1, "setProximitySensorEnabled::registerListener"

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1126
    :cond_2b
    :goto_2b
    return-void

    .line 1114
    :cond_2c
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_2b

    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1118
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1119
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1120
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1121
    const-string v0, "DisplayPowerController"

    const-string v1, "[sensor] setProximitySensorEnabled::unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1123
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_2b
.end method

.method private setScreenOn(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_9
    if-ne v0, p1, :cond_17

    .line 1035
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->setScreenOn(Z)V

    .line 1036
    if-eqz p1, :cond_1a

    .line 1037
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOn()V

    .line 1042
    :cond_17
    :goto_17
    return-void

    .line 1034
    :cond_18
    const/4 v0, 0x0

    goto :goto_9

    .line 1039
    :cond_1a
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOff()V

    goto :goto_17
.end method

.method private unblockScreenOn()V
    .registers 7

    .prologue
    .line 1023
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-eqz v0, :cond_30

    .line 1024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 1025
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 1026
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen Readiness inspection completed after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_30
    return-void
.end method

.method private updateAmbientLux(J)V
    .registers 16
    .param p1, "time"    # J

    .prologue
    const-wide/16 v11, 0xbb8

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 1388
    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v4, :cond_78

    .line 1389
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    add-long v2, v4, v6

    .line 1391
    .local v2, "timeWhenSensorWarmedUp":J
    cmp-long v4, p1, v2

    if-gez v4, :cond_1a

    .line 1392
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1494
    .end local v2    # "timeWhenSensorWarmedUp":J
    :cond_19
    :goto_19
    return-void

    .line 1396
    .restart local v2    # "timeWhenSensorWarmedUp":J
    :cond_1a
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1397
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1398
    iput v10, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1399
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1400
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_5c

    .line 1401
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Initializing: , mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_5c
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1489
    .end local v2    # "timeWhenSensorWarmedUp":J
    :cond_5f
    :goto_5f
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_6f

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_19

    .line 1491
    :cond_6f
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const-wide/16 v5, 0x190

    add-long/2addr v5, p1

    invoke-virtual {v4, v9, v5, v6}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_19

    .line 1407
    :cond_78
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12f

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12f

    .line 1410
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v4, :cond_d3

    .line 1411
    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1412
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1413
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_d3

    .line 1414
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Possibly brightened, waiting for 3000 ms: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_d3
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v0, v4, v11

    .line 1423
    .local v0, "debounceTime":J
    cmp-long v4, p1, v0

    if-gez v4, :cond_e2

    .line 1424
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_19

    .line 1427
    :cond_e2
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1428
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_12a

    .line 1429
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Brightened: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_12a
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_5f

    .line 1436
    .end local v0    # "debounceTime":J
    :cond_12f
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1ed

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1ed

    .line 1439
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v4, :cond_18b

    .line 1440
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1441
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1442
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_18b

    .line 1443
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Possibly darkened, waiting for 3000 ms: mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_18b
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v0, v4, v11

    .line 1452
    .restart local v0    # "debounceTime":J
    cmp-long v4, p1, v0

    if-gez v4, :cond_19a

    .line 1453
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_19

    .line 1458
    :cond_19a
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->setAmbientLux(F)V

    .line 1459
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_1e8

    .line 1460
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Darkened: mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_1e8
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_5f

    .line 1467
    .end local v0    # "debounceTime":J
    :cond_1ed
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v4, :cond_5f

    .line 1469
    iput v10, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1470
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1471
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_5f

    .line 1472
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Canceled debounce: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f
.end method

.method private updateAmbientLuxSEC(J)V
    .registers 14
    .param p1, "time"    # J

    .prologue
    const-wide/16 v9, 0xbb8

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1333
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-eqz v2, :cond_14

    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    sub-long v2, p1, v2

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    .line 1335
    :cond_14
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1336
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1337
    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1338
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1339
    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    .line 1382
    :cond_21
    :goto_21
    return-void

    .line 1344
    :cond_22
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_48

    .line 1345
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v2, :cond_32

    .line 1346
    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1347
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1349
    :cond_32
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v0, v2, v9

    .line 1350
    .local v0, "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_42

    .line 1351
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1352
    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    goto :goto_21

    .line 1354
    :cond_42
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v2, v8, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_21

    .line 1360
    .end local v0    # "debounceTime":J
    :cond_48
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6f

    .line 1361
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v2, :cond_59

    .line 1362
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1363
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1365
    :cond_59
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v0, v2, v9

    .line 1366
    .restart local v0    # "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_69

    .line 1369
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1370
    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    goto :goto_21

    .line 1372
    :cond_69
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v2, v8, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_21

    .line 1378
    .end local v0    # "debounceTime":J
    :cond_6f
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v2, :cond_21

    .line 1379
    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1380
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    goto :goto_21
.end method

.method private updateAutoBrightness(Z)V
    .registers 16
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 1665
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v2, :cond_c

    .line 1667
    const-string v2, "DisplayPowerController"

    const-string v3, "[DAB] mAmbientLuxValid is false!, Failed to update auto brightness."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :cond_b
    :goto_b
    return-void

    .line 1672
    :cond_c
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v13

    .line 1673
    .local v13, "value":F
    const/high16 v8, 0x3f800000

    .line 1675
    .local v8, "gamma":F
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_58

    .line 1677
    const/high16 v2, 0x40400000

    const/high16 v3, 0x3f800000

    const/high16 v4, -0x40800000

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v5, v5, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    neg-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Landroid/util/FloatMath;->pow(FF)F

    move-result v6

    .line 1680
    .local v6, "adjGamma":F
    mul-float/2addr v8, v6

    .line 1681
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_58

    .line 1682
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoBrightness: adjGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    .end local v6    # "adjGamma":F
    :cond_58
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v2, :cond_b0

    .line 1687
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v2}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v12

    .line 1688
    .local v12, "state":Lcom/android/server/TwilightService$TwilightState;
    if-eqz v12, :cond_b0

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 1689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1690
    .local v0, "now":J
    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v7

    .line 1692
    .local v7, "earlyGamma":F
    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v10

    .line 1694
    .local v10, "lateGamma":F
    mul-float v2, v7, v10

    mul-float/2addr v8, v2

    .line 1695
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_b0

    .line 1696
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoBrightness: earlyGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lateGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    .end local v0    # "now":J
    .end local v7    # "earlyGamma":F
    .end local v10    # "lateGamma":F
    .end local v12    # "state":Lcom/android/server/TwilightService$TwilightState;
    :cond_b0
    const/high16 v2, 0x3f800000

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_ec

    .line 1703
    move v9, v13

    .line 1704
    .local v9, "in":F
    invoke-static {v13, v8}, Landroid/util/FloatMath;->pow(FF)F

    move-result v13

    .line 1705
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_ec

    .line 1706
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoBrightness: gamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", out="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    .end local v9    # "in":F
    :cond_ec
    const/high16 v2, 0x437f0000

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v11

    .line 1713
    .local v11, "newScreenAutoBrightness":I
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v2, v11, :cond_b

    .line 1714
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_124

    .line 1715
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_124
    iput v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1721
    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1722
    if-eqz p1, :cond_b

    .line 1723
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    goto/16 :goto_b
.end method

.method private updateAutoBrightnessSEC(Z)V
    .registers 19
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 1577
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v14, :cond_e

    .line 1579
    const-string v14, "DisplayPowerController"

    const-string v15, "[DAB] no lux value from sensor manager"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :goto_d
    return-void

    .line 1584
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->getDynamicAutoBrightnessValue(F)F

    move-result v11

    .line 1585
    .local v11, "value":F
    const/high16 v4, 0x3f800000

    .line 1587
    .local v4, "gamma":F
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/power/DisplayPowerController;->getDynamicAutoBrightnessLowHysteresis(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    .line 1588
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/power/DisplayPowerController;->getDynamicAutoBrightnessHighHysteresis(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    .line 1590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v14, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 1591
    .local v3, "autoBrightnessAdj":F
    sget-boolean v14, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-nez v14, :cond_184

    .line 1613
    :cond_38
    :goto_38
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/android/server/power/DisplayPowerController;->getFinalDynamicAutoBrightnessValue(FF)I

    move-result v14

    int-to-float v11, v14

    .line 1615
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v10

    .line 1617
    .local v10, "newScreenAutoBrightness":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->lastRawBrightnessValue:F

    cmpl-float v14, v11, v14

    if-nez v14, :cond_5c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_e2

    .line 1618
    :cond_5c
    const-string v15, "DisplayPowerController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DAB] updateAutoBrightnessSEC : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "("

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ")    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " < "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " < "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ("

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v14, v14, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-eqz v14, :cond_205

    const-string v14, " (ebook)"

    :goto_d5
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_e2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v15, 0x471c4000

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_209

    const/4 v9, 0x1

    .line 1626
    .local v9, "needHBM":Z
    :goto_ee
    const/4 v5, 0x0

    .line 1627
    .local v5, "isHBMChanged":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/power/DisplayPowerController;->mLastHBM:Z

    if-eq v14, v9, :cond_12e

    .line 1628
    const-string v15, "DisplayPowerController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DAB] HBM is "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v9, :cond_20c

    const-string v14, "Enabled"

    :goto_108
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ". mScreenAutoBrightness = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/power/DisplayPowerController;->mLastHBM:Z

    .line 1632
    const/4 v5, 0x1

    .line 1635
    :cond_12e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v15, 0x469c4000

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_210

    const/4 v7, 0x1

    .line 1636
    .local v7, "isTconMaxLevel":Z
    :goto_13a
    const/4 v6, 0x0

    .line 1637
    .local v6, "isTconLevelChanged":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z

    if-eqz v14, :cond_153

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/power/DisplayPowerController;->mWasTconMaxLevel:Z

    if-eq v14, v7, :cond_153

    .line 1638
    const-string v14, "DisplayPowerController"

    const-string v15, "[DAB] The Ambient Lux is over than 20000."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/power/DisplayPowerController;->mWasTconMaxLevel:Z

    .line 1641
    const/4 v6, 0x1

    .line 1644
    :cond_153
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v14, v10, :cond_213

    .line 1645
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1646
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1647
    if-eqz p1, :cond_17e

    .line 1648
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    .line 1649
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v15, v15, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/DisplayPowerController;->sendBrightnessLevel(FZ)V

    .line 1650
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->sendLux(F)V

    .line 1660
    :cond_17e
    :goto_17e
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/DisplayPowerController;->lastRawBrightnessValue:F

    goto/16 :goto_d

    .line 1591
    .end local v5    # "isHBMChanged":Z
    .end local v6    # "isTconLevelChanged":Z
    .end local v7    # "isTconMaxLevel":Z
    .end local v9    # "needHBM":Z
    .end local v10    # "newScreenAutoBrightness":I
    :cond_184
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-eqz v14, :cond_38

    .line 1593
    const/high16 v14, 0x3f800000

    const/high16 v15, -0x40800000

    neg-float v0, v3

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v15, -0x3f600000

    mul-float v2, v14, v15

    .line 1594
    .local v2, "adjLevel":F
    const/4 v14, 0x0

    cmpl-float v14, v2, v14

    if-lez v14, :cond_1fb

    const v14, 0x3f8ccccd

    move v15, v14

    :goto_1a5
    const/4 v14, 0x0

    cmpl-float v14, v2, v14

    if-lez v14, :cond_200

    move v14, v2

    :goto_1ab
    invoke-static {v15, v14}, Landroid/util/FloatMath;->pow(FF)F

    move-result v1

    .line 1595
    .local v1, "adjGamma":F
    mul-float/2addr v4, v1

    .line 1596
    sget-boolean v14, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_1cc

    .line 1597
    const-string v14, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DAB] updateAutoBrightnessSEC: adjGamma="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_1cc
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    mul-float/2addr v14, v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    int-to-float v15, v15

    add-float v12, v14, v15

    .line 1602
    .local v12, "valueFromGamma":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/power/DisplayPowerController;->mMinimumBrightnessStepValue:I

    .line 1603
    .local v8, "minBrightnessStep":I
    float-to-int v14, v2

    mul-int/2addr v14, v8

    float-to-int v15, v11

    add-int v13, v14, v15

    .line 1604
    .local v13, "valueFromOffset":I
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-lez v14, :cond_1ee

    int-to-float v14, v13

    cmpg-float v14, v12, v14

    if-ltz v14, :cond_1f8

    :cond_1ee
    const/4 v14, 0x0

    cmpg-float v14, v3, v14

    if-gez v14, :cond_202

    int-to-float v14, v13

    cmpl-float v14, v12, v14

    if-lez v14, :cond_202

    .line 1607
    :cond_1f8
    int-to-float v11, v13

    goto/16 :goto_38

    .line 1594
    .end local v1    # "adjGamma":F
    .end local v8    # "minBrightnessStep":I
    .end local v12    # "valueFromGamma":F
    .end local v13    # "valueFromOffset":I
    :cond_1fb
    const v14, 0x3f666666

    move v15, v14

    goto :goto_1a5

    :cond_200
    neg-float v14, v2

    goto :goto_1ab

    .line 1610
    .restart local v1    # "adjGamma":F
    .restart local v8    # "minBrightnessStep":I
    .restart local v12    # "valueFromGamma":F
    .restart local v13    # "valueFromOffset":I
    :cond_202
    move v11, v12

    goto/16 :goto_38

    .line 1618
    .end local v1    # "adjGamma":F
    .end local v2    # "adjLevel":F
    .end local v8    # "minBrightnessStep":I
    .end local v12    # "valueFromGamma":F
    .end local v13    # "valueFromOffset":I
    .restart local v10    # "newScreenAutoBrightness":I
    :cond_205
    const-string v14, ""

    goto/16 :goto_d5

    .line 1625
    :cond_209
    const/4 v9, 0x0

    goto/16 :goto_ee

    .line 1628
    .restart local v5    # "isHBMChanged":Z
    .restart local v9    # "needHBM":Z
    :cond_20c
    const-string v14, "Disabled"

    goto/16 :goto_108

    .line 1635
    :cond_210
    const/4 v7, 0x0

    goto/16 :goto_13a

    .line 1654
    .restart local v6    # "isTconLevelChanged":Z
    .restart local v7    # "isTconMaxLevel":Z
    :cond_213
    if-eqz p1, :cond_17e

    if-nez v5, :cond_219

    if-eqz v6, :cond_17e

    .line 1655
    :cond_219
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v15, v15, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/DisplayPowerController;->sendBrightnessLevel(FZ)V

    .line 1656
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->sendLux(F)V

    goto/16 :goto_17e
.end method

.method private updatePowerState()V
    .registers 16

    .prologue
    const/4 v9, 0x2

    const/high16 v14, 0x3f800000

    const/4 v13, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "mustInitialize":Z
    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 689
    .local v4, "updateAutoBrightness":Z
    const/4 v5, 0x0

    .line 690
    .local v5, "wasDim":Z
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 692
    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 693
    const/4 v6, 0x0

    :try_start_10
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 694
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v6, :cond_18

    .line 695
    monitor-exit v10

    .line 1009
    :cond_17
    :goto_17
    return-void

    .line 698
    :cond_18
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v6, :cond_141

    .line 699
    new-instance v6, Lcom/android/server/power/DisplayPowerRequest;

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v6, v11}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    .line 700
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 701
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 703
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 704
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 706
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 707
    const/4 v0, 0x1

    .line 732
    :cond_37
    :goto_37
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v6, :cond_1a8

    move v1, v7

    .line 733
    .local v1, "mustNotify":Z
    :goto_3c
    monitor-exit v10
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_1a3

    .line 736
    if-eqz v0, :cond_42

    .line 737
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initialize()V

    .line 773
    :cond_42
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    if-nez v6, :cond_50

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v6, v7, :cond_50

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v6, :cond_50

    .line 774
    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    .line 776
    :cond_50
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    if-eqz v6, :cond_5c

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-nez v6, :cond_5c

    .line 777
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 778
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    .line 780
    :cond_5c
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_238

    .line 781
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v6, :cond_1ef

    .line 783
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v6, :cond_1ab

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-nez v6, :cond_1ab

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    if-nez v6, :cond_1ab

    .line 787
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 788
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 855
    :cond_80
    :goto_80
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_9c

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_9c

    .line 856
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v6, :cond_23c

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_23c

    move v6, v7

    :goto_99
    invoke-direct {p0, v6, v4}, Lcom/android/server/power/DisplayPowerController;->setLightSensorEnabled(ZZ)V

    .line 861
    :cond_9c
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_251

    .line 864
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v6, :cond_23f

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v6, :cond_23f

    .line 866
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 867
    .local v3, "target":I
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 868
    .local v2, "slow":Z
    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 879
    :goto_b4
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v6, v9, :cond_bc

    .line 880
    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    .line 884
    :cond_bc
    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->getFinalBrightness(I)I

    move-result v3

    .line 887
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v6, v7, :cond_248

    .line 889
    add-int/lit8 v6, v3, -0xa

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 891
    const/4 v2, 0x0

    .line 896
    :cond_cf
    :goto_cf
    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v10

    if-eqz v2, :cond_24d

    const/16 v6, 0x1f4

    :goto_d7
    invoke-direct {p0, v10, v6}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(II)V

    .line 904
    .end local v2    # "slow":Z
    .end local v3    # "target":I
    :goto_da
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v6, :cond_106

    .line 905
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_283

    .line 910
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_106

    .line 914
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 916
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-eqz v6, :cond_255

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_255

    .line 918
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->blockScreenOn()V

    .line 993
    :cond_106
    :goto_106
    if-eqz v1, :cond_17

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 998
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 999
    :try_start_129
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v6, :cond_13b

    .line 1000
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1002
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_13b

    .line 1003
    const-string v6, "DisplayPowerController"

    const-string v8, "Display ready!"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_13b
    monitor-exit v7
    :try_end_13c
    .catchall {:try_start_129 .. :try_end_13c} :catchall_306

    .line 1007
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto/16 :goto_17

    .line 708
    .end local v1    # "mustNotify":Z
    :cond_141
    :try_start_141
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v6, :cond_37

    .line 709
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v11, v11, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_152

    .line 711
    const/4 v4, 0x1

    .line 714
    :cond_152
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-eq v6, v11, :cond_179

    .line 716
    const-string v6, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DAB] updatePowerState : autoBrightnessForEbookOnly : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v12, v12, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v4, 0x1

    .line 720
    :cond_179
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v6, v7, :cond_1a6

    move v5, v7

    .line 721
    :goto_180
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v6, v11}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 722
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v6, v11

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 723
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 725
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    iget-boolean v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    or-int/2addr v6, v11

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 726
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 728
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 729
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    goto/16 :goto_37

    .line 733
    :catchall_1a3
    move-exception v6

    monitor-exit v10
    :try_end_1a5
    .catchall {:try_start_141 .. :try_end_1a5} :catchall_1a3

    throw v6

    :cond_1a6
    move v5, v8

    .line 720
    goto :goto_180

    :cond_1a8
    move v1, v8

    .line 732
    goto/16 :goto_3c

    .line 792
    .restart local v1    # "mustNotify":Z
    :cond_1ab
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 794
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v6, v7, :cond_1dd

    .line 795
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-nez v6, :cond_1c0

    .line 796
    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 797
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 798
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    goto/16 :goto_80

    .line 800
    :cond_1c0
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_80

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v6, :cond_80

    .line 801
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 802
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 803
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v6, :cond_1d8

    .line 804
    const-string v6, "DisplayPowerController"

    const-string v10, "[sensor] proximity : mScreenOnEvenThoughProximityPositive is true"

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_1d8
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto/16 :goto_80

    .line 809
    :cond_1dd
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-nez v6, :cond_80

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_80

    .line 810
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 811
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 812
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto/16 :goto_80

    .line 819
    :cond_1ef
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v6, :cond_225

    .line 821
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 822
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_20e

    .line 823
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 824
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 825
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 826
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 827
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_80

    .line 828
    :cond_20e
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-eq v6, v7, :cond_80

    .line 829
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 830
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_221

    .line 831
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 832
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 833
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 835
    :cond_221
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_80

    .line 840
    :cond_225
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 841
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 843
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_80

    .line 844
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 845
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 846
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto/16 :goto_80

    .line 850
    :cond_238
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_80

    :cond_23c
    move v6, v8

    .line 856
    goto/16 :goto_99

    .line 874
    :cond_23f
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v6, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 875
    .restart local v3    # "target":I
    const/4 v2, 0x0

    .line 876
    .restart local v2    # "slow":Z
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_b4

    .line 892
    :cond_248
    if-eqz v5, :cond_cf

    .line 894
    const/4 v2, 0x0

    goto/16 :goto_cf

    .line 896
    :cond_24d
    const/16 v6, 0x7d0

    goto/16 :goto_d7

    .line 900
    .end local v2    # "slow":Z
    .end local v3    # "target":I
    :cond_251
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_da

    .line 920
    :cond_255
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 936
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_269

    .line 937
    const-string v6, "DisplayPowerController"

    const-string v7, "!@ElectronBeam exit"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_269
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 941
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6, v14}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 942
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    .line 944
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v7, "ElectronBeam exit"

    const-wide/16 v8, 0xa

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    goto/16 :goto_106

    .line 952
    :cond_283
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_106

    .line 953
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_106

    .line 955
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->isAlpmMode:Z

    if-eqz v6, :cond_2ca

    .line 956
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_2c2

    .line 957
    const-string v6, "DisplayPowerController"

    const-string v7, "!@ALPM : ElectronBeam exit"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 960
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6, v14}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 961
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    .line 963
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v7, "ALPM : ElectronBeam exit"

    const-wide/16 v9, 0xa

    invoke-virtual {v6, v7, v9, v10}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 966
    :cond_2c2
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 967
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    goto/16 :goto_106

    .line 970
    :cond_2ca
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_2dc

    .line 971
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 972
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    goto/16 :goto_106

    .line 973
    :cond_2dc
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    if-eqz v8, :cond_2e3

    move v7, v9

    :cond_2e3
    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerState;->prepareElectronBeam(I)Z

    move-result v6

    if-eqz v6, :cond_2ff

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_2ff

    .line 979
    const-string v6, "DisplayPowerController"

    const-string v7, "!@ElectronBeam entry"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_106

    .line 983
    :cond_2ff
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_106

    .line 1006
    :catchall_306
    move-exception v6

    :try_start_307
    monitor-exit v7
    :try_end_308
    .catchall {:try_start_307 .. :try_end_308} :catchall_306

    throw v6
.end method

.method private static wantScreenOn(I)Z
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 1892
    packed-switch p0, :pswitch_data_8

    .line 1897
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1895
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1892
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1792
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1793
    const-string v0, "Display Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingScreenOnEvenThoughProximityPositiveLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenOnEvenThoughProximityPositive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1806
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_3 .. :try_end_b4} :catchall_171

    .line 1808
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1809
    const-string v0, "Display Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessOnCover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1820
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$6;-><init>(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1826
    return-void

    .line 1806
    :catchall_171
    move-exception v0

    :try_start_172
    monitor-exit v1
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw v0
.end method

.method public getScreenBrightnessOnCover()I
    .registers 2

    .prologue
    .line 2567
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    return v0
.end method

.method public isProximitySensorAvailable()Z
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public requestPowerState(Lcom/android/server/power/DisplayPowerRequest;ZZ)Z
    .registers 9
    .param p1, "request"    # Lcom/android/server/power/DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z
    .param p3, "screenOnEvenThoughProximityPositive"    # Z

    .prologue
    .line 589
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_26

    .line 590
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_26
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 595
    const/4 v0, 0x0

    .line 597
    .local v0, "changed":Z
    if-eqz p2, :cond_34

    :try_start_2c
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_34

    .line 599
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 600
    const/4 v0, 0x1

    .line 604
    :cond_34
    if-eqz p3, :cond_58

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    if-nez v1, :cond_58

    .line 606
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 607
    const/4 v0, 0x1

    .line 608
    const-string v1, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPendingScreenOnEvenThoughProximityPositiveLocked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_58
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_79

    .line 614
    new-instance v1, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    .line 615
    const/4 v0, 0x1

    .line 621
    :cond_64
    :goto_64
    if-eqz v0, :cond_69

    .line 622
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 625
    :cond_69
    if-eqz v0, :cond_75

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_75

    .line 626
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 627
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 630
    :cond_75
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    .line 616
    :cond_79
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 617
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 618
    const/4 v0, 0x1

    goto :goto_64

    .line 631
    :catchall_88
    move-exception v1

    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_2c .. :try_end_8a} :catchall_88

    throw v1
.end method
