.class public final Lcom/android/server/OemExtendedApi3LMService;
.super Landroid/os/IOemExtendedApi3LM$Stub;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
    }
.end annotation


# static fields
.field public static final ACTION_EMERGENCY_LOCK_ENABLED:Ljava/lang/String; = "android.action.emergencylockenabled"

.field private static final API_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "my_profile_enabled"

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNSUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OemExtendedApi3LM"

.field private static final is3LMAllowed:Z


# instance fields
.field private binder:Lcom/samsung/felicaremotelock/IFelica;

.field private isSimulatorPermitted:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Landroid/os/IDeviceManager3LM;

.field private mEmergencyLockState:I

.field private mHapticFeedbackVibrationIntensity:I

.field private mLockScreenSettings:I

.field private final mOem:Landroid/os/IDeviceManagerRestrictable3LM;

.field private mOneSegState:I

.field private mOwnerInfo:Ljava/lang/String;

.field private mOwnerInfoEnabled:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oem"    # Landroid/os/IDeviceManagerRestrictable3LM;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    invoke-direct {p0}, Landroid/os/IOemExtendedApi3LM$Stub;-><init>()V

    .line 58
    iput-boolean v3, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    .line 67
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mOwnerInfoEnabled:I

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->binder:Lcom/samsung/felicaremotelock/IFelica;

    .line 74
    new-instance v1, Lcom/android/server/OemExtendedApi3LMService$1;

    invoke-direct {v1, p0}, Lcom/android/server/OemExtendedApi3LMService$1;-><init>(Lcom/android/server/OemExtendedApi3LMService;)V

    iput-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mConnection:Landroid/content/ServiceConnection;

    .line 162
    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lcom/android/server/OemExtendedApi3LMService;->mOem:Landroid/os/IDeviceManagerRestrictable3LM;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 165
    const-string v1, "DeviceManager3LM"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IDeviceManager3LM;

    iput-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    .line 167
    new-instance v1, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    invoke-direct {v1, p1}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    .line 168
    iput v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mOneSegState:I

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/felicaremotelock/IFelica;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "OemExtendedApi3LM"

    const-string v2, "OemExtendedApi3LMService:  Bind to Felica Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 174
    iput v3, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockState:I

    .line 175
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/OemExtendedApi3LMService;Lcom/samsung/felicaremotelock/IFelica;)Lcom/samsung/felicaremotelock/IFelica;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemExtendedApi3LMService;
    .param p1, "x1"    # Lcom/samsung/felicaremotelock/IFelica;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->binder:Lcom/samsung/felicaremotelock/IFelica;

    return-object p1
.end method

.method private isAccessPermitted()Z
    .registers 2

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 233
    return-void
.end method

.method public getEmergencyLockState()I
    .registers 4

    .prologue
    .line 370
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3LM getEmergencyLockState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockState:I

    return v0
.end method

.method public getFelicaState()I
    .registers 2

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public getInfraredState()I
    .registers 2

    .prologue
    .line 351
    const/4 v0, -0x1

    return v0
.end method

.method public getIsSimulatorPermitted()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    return v0
.end method

.method public getOneSegState()I
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 224
    const/4 v0, -0x1

    return v0
.end method

.method public setEmergencyLock(ZLjava/lang/String;Z)Z
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "alarm"    # Z

    .prologue
    .line 396
    const/4 v0, 0x1

    return v0
.end method

.method public setEmergencyLockState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 375
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3LM setEmergencyLockState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 378
    :goto_1e
    return-void

    .line 377
    :cond_1f
    iput p1, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockState:I

    goto :goto_1e
.end method

.method public setFelicaState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 286
    return-void
.end method

.method public setInfraredState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 362
    return-void
.end method

.method public setOneSegState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 330
    return-void
.end method

.method public setisSimulatorPermitted(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 89
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM extended3LM setisSimulatorPermitted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-boolean p1, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    .line 91
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oem extended isSimulatorPermitted is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
