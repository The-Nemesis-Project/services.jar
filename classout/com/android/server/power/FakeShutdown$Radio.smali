.class Lcom/android/server/power/FakeShutdown$Radio;
.super Ljava/lang/Object;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Radio"
.end annotation


# static fields
.field private static oldBluetoothStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 278
    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/FakeShutdown$Radio;->oldBluetoothStatus:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeAirplaneMode(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I

    .prologue
    .line 368
    const-string v1, "FakeShutdown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAirplaneMode state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 373
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    return-void
.end method

.method public static off(Landroid/content/Context;)V
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 281
    invoke-static {p0}, Lcom/android/server/power/FakeShutdown$Radio;->offBluetooth(Landroid/content/Context;)V

    .line 282
    const-string v1, "oldAirplaneStatus"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/server/power/FakeShutdown$SysSetting;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 284
    .local v0, "airplane":I
    if-eq v0, v3, :cond_10

    .line 285
    invoke-static {p0, v3}, Lcom/android/server/power/FakeShutdown$Radio;->changeAirplaneMode(Landroid/content/Context;I)V

    .line 288
    :cond_10
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/android/server/power/FakeShutdown$Radio;->waitForPhoneOff(I)V

    .line 290
    return-void
.end method

.method private static offBluetooth(Landroid/content/Context;)V
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 358
    const-string v0, "bluetooth_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->getSecure(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/power/FakeShutdown$Radio;->oldBluetoothStatus:I

    .line 361
    sget v0, Lcom/android/server/power/FakeShutdown$Radio;->oldBluetoothStatus:I

    if-ne v0, v2, :cond_1a

    .line 362
    const-string v0, "FakeShutdown"

    const-string v1, "!@ [p9p9] Settings.Secure.putInt - BLUETOOTH_ON 1"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v0, "bluetooth_on"

    invoke-static {p0, v0, v2}, Lcom/android/server/power/FakeShutdown$SysSetting;->putSecure(Landroid/content/Context;Ljava/lang/String;I)V

    .line 365
    :cond_1a
    return-void
.end method

.method public static on(Landroid/content/Context;)V
    .registers 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 293
    invoke-static {p0}, Lcom/android/server/power/FakeShutdown$Radio;->restoreAirplane(Landroid/content/Context;)V

    .line 294
    invoke-static {p0}, Lcom/android/server/power/FakeShutdown$Radio;->restoreBluetooth(Landroid/content/Context;)V

    .line 295
    return-void
.end method

.method private static restoreAirplane(Landroid/content/Context;)V
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 298
    const-string v1, "FakeShutdown"

    const-string v2, "!@restoreAirplaneMode"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v1, "oldAirplaneStatus"

    invoke-static {p0, v1, v3}, Lcom/android/server/power/FakeShutdown$SysSetting;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 302
    .local v0, "oldAirplaneStatus":I
    if-eq v0, v3, :cond_13

    .line 303
    invoke-static {p0, v0}, Lcom/android/server/power/FakeShutdown$Radio;->changeAirplaneMode(Landroid/content/Context;I)V

    .line 305
    :cond_13
    return-void
.end method

.method private static restoreBluetooth(Landroid/content/Context;)V
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 341
    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 343
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    const-string v2, "bluetooth_on"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/server/power/FakeShutdown$SysSetting;->getSecure(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/power/FakeShutdown$Radio;->oldBluetoothStatus:I

    .line 346
    :try_start_13
    sget v2, Lcom/android/server/power/FakeShutdown$Radio;->oldBluetoothStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    .line 347
    const-string v2, "FakeShutdown"

    const-string v3, "!@ [p9p9] bluetooth.enable();"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_22} :catch_23

    .line 353
    :cond_22
    :goto_22
    return-void

    .line 350
    :catch_23
    move-exception v1

    .line 351
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "FakeShutdown"

    const-string v3, "!@RemoteException during bluetooth enable"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_22
.end method

.method private static waitForPhoneOff(I)V
    .registers 10
    .param p0, "timeoutSec"    # I

    .prologue
    .line 309
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 310
    .local v3, "phone":Lcom/android/internal/telephony/ITelephony;
    const/4 v4, 0x0

    .line 312
    .local v4, "radioOff":Z
    const/16 v0, 0x1f4

    .line 313
    .local v0, "PHONE_STATE_POLL_SLEEP_MSEC":I
    mul-int/lit16 v6, p0, 0x3e8

    div-int/lit16 v5, v6, 0x1f4

    .line 315
    .local v5, "timeoutCount":I
    const-string v6, "FakeShutdown"

    const-string v7, "!@waitForPhoneOff"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v2, 0x0

    .local v2, "loopCount":I
    :goto_19
    if-ge v2, v5, :cond_2b

    .line 318
    :try_start_1b
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_51

    move-result v6

    if-nez v6, :cond_4f

    const/4 v4, 0x1

    .line 323
    :goto_22
    if-eqz v4, :cond_5b

    .line 324
    const-string v6, "FakeShutdown"

    const-string v7, "!@Radio turned off"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2b
    const-string v6, "FakeShutdown"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@off takes ms "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit16 v8, v2, 0x1f4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-nez v4, :cond_4e

    .line 334
    const-string v6, "FakeShutdown"

    const-string v7, "!@Radio turned off fail"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_4e
    return-void

    .line 318
    :cond_4f
    const/4 v4, 0x0

    goto :goto_22

    .line 319
    :catch_51
    move-exception v1

    .line 320
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v6, "FakeShutdown"

    const-string v7, "RemoteException during radio shutdown"

    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 321
    const/4 v4, 0x1

    goto :goto_22

    .line 327
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_5b
    const-string v6, "FakeShutdown"

    const-string v7, "!@before sleep"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 329
    const-string v6, "FakeShutdown"

    const-string v7, "!@after sleep"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method
