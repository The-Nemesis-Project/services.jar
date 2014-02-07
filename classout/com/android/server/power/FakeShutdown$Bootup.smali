.class Lcom/android/server/power/FakeShutdown$Bootup;
.super Ljava/lang/Thread;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bootup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/FakeShutdown;


# direct methods
.method private constructor <init>(Lcom/android/server/power/FakeShutdown;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/FakeShutdown$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/FakeShutdown;
    .param p2, "x1"    # Lcom/android/server/power/FakeShutdown$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/power/FakeShutdown$Bootup;-><init>(Lcom/android/server/power/FakeShutdown;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 220
    const-string v2, "FakeShutdown"

    const-string v3, "!@call powermanager wakeup()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v17

    .line 224
    .local v17, "powerManagerService":Landroid/os/IPowerManager;
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_14c

    .line 230
    :goto_1a
    const/4 v1, 0x0

    .line 231
    .local v1, "cpuBooster":Landroid/os/DVFSHelper;
    new-instance v1, Landroid/os/DVFSHelper;

    .end local v1    # "cpuBooster":Landroid/os/DVFSHelper;
    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AMS_CAMERA_LAUNCH_BOOST"

    const/16 v4, 0xe

    const-wide/16 v5, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 233
    .restart local v1    # "cpuBooster":Landroid/os/DVFSHelper;
    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v14

    .line 234
    .local v14, "coreTable":[I
    if-eqz v14, :cond_152

    .line 235
    const-string v2, "CORE_NUM"

    const/4 v3, 0x0

    aget v3, v14, v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 239
    :goto_39
    if-eqz v1, :cond_42

    .line 240
    const/16 v7, 0xbb8

    .line 241
    .local v7, "CPU_BOOSTING_TIMEOUT":I
    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 245
    .end local v7    # "CPU_BOOSTING_TIMEOUT":I
    :cond_42
    const-string v8, "/system/media/warmboot.qmg"

    .line 252
    .local v8, "WARMBOOT_ANIM_PATH":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    # invokes: Lcom/android/server/power/FakeShutdown;->vibrate(IZ)V
    invoke-static {v2, v3, v4}, Lcom/android/server/power/FakeShutdown;->access$300(Lcom/android/server/power/FakeShutdown;IZ)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$400(Lcom/android/server/power/FakeShutdown;)Landroid/os/UEventObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UEventObserver;->stopObserving()V

    .line 258
    :try_start_59
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_60} :catch_15b

    .line 263
    :goto_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    # invokes: Lcom/android/server/power/FakeShutdown;->lauchCamera()Z
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$500(Lcom/android/server/power/FakeShutdown;)Z

    move-result v13

    .line 265
    .local v13, "cameraMode":Z
    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 268
    .local v9, "airplaneMode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)I

    move-result v2

    if-eq v9, v2, :cond_90

    .line 269
    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v3}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)I

    move-result v3

    # invokes: Lcom/android/server/power/FakeShutdown;->changeAirplaneMode(Landroid/content/Context;I)V
    invoke-static {v2, v3}, Lcom/android/server/power/FakeShutdown;->access$700(Landroid/content/Context;I)V

    .line 270
    :cond_90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v2, v3}, Lcom/android/server/power/FakeShutdown;->access$602(Lcom/android/server/power/FakeShutdown;I)I

    .line 271
    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oldAirplaneMode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v12

    .line 278
    .local v12, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v2, v3}, Lcom/android/server/power/FakeShutdown;->access$802(Lcom/android/server/power/FakeShutdown;I)I

    .line 281
    :try_start_c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$800(Lcom/android/server/power/FakeShutdown;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_db

    .line 282
    const-string v2, "FakeShutdown"

    const-string v3, "!@ [p9p9] bluetooth.enable();"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-interface {v12}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_db} :catch_165

    .line 292
    :cond_db
    :goto_db
    # getter for: Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$900()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 293
    const/4 v2, 0x5

    :try_start_e1
    # setter for: Lcom/android/server/power/FakeShutdown;->sFakeState:I
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1002(I)I

    .line 294
    monitor-exit v3
    :try_end_e5
    .catchall {:try_start_e1 .. :try_end_e5} :catchall_171

    .line 296
    if-eqz v13, :cond_ee

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    # invokes: Lcom/android/server/power/FakeShutdown;->waitForCamera()V
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1100(Lcom/android/server/power/FakeShutdown;)V

    .line 300
    :cond_ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1200(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v2

    if-nez v2, :cond_174

    .line 301
    const-string v2, "FakeShutdown"

    const-string v3, "anim dialog not exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_ff
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->releaseWakeLocks()V

    .line 309
    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    .line 311
    .local v11, "audioManager":Landroid/media/AudioManager;
    const-string v2, "shutdown"

    const-string v3, "0"

    invoke-virtual {v11, v2, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :try_start_115
    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v10

    .line 317
    .local v10, "alarmManager":Landroid/app/IAlarmManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v10, v2, v3}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_124
    .catch Landroid/os/RemoteException; {:try_start_115 .. :try_end_124} :catch_188

    .line 322
    .end local v10    # "alarmManager":Landroid/app/IAlarmManager;
    :goto_124
    const-string v2, "FakeShutdown"

    const-string v3, "!@FAKE_STATE = NOTHING"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    # getter for: Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$900()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 324
    const/4 v2, 0x0

    :try_start_131
    # setter for: Lcom/android/server/power/FakeShutdown;->sFakeState:I
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1002(I)I

    .line 325
    const-string v2, "sys.fakeShutdown.state"

    const-string v4, "power_on"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    monitor-exit v3
    :try_end_13c
    .catchall {:try_start_131 .. :try_end_13c} :catchall_191

    .line 328
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    .line 330
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->cancelHandler()V

    .line 332
    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1302(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/FakeShutdown;

    .line 333
    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$202(Landroid/content/Context;)Landroid/content/Context;

    .line 334
    return-void

    .line 225
    .end local v1    # "cpuBooster":Landroid/os/DVFSHelper;
    .end local v8    # "WARMBOOT_ANIM_PATH":Ljava/lang/String;
    .end local v9    # "airplaneMode":I
    .end local v11    # "audioManager":Landroid/media/AudioManager;
    .end local v12    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .end local v13    # "cameraMode":Z
    .end local v14    # "coreTable":[I
    :catch_14c
    move-exception v15

    .line 226
    .local v15, "e":Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1a

    .line 237
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v1    # "cpuBooster":Landroid/os/DVFSHelper;
    .restart local v14    # "coreTable":[I
    :cond_152
    const-string v2, "FakeShutdown"

    const-string v3, "coreTable is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 259
    .restart local v8    # "WARMBOOT_ANIM_PATH":Ljava/lang/String;
    :catch_15b
    move-exception v15

    .line 260
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v2, "FakeShutdown"

    const-string v3, "!@is service dead?"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_60

    .line 285
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v9    # "airplaneMode":I
    .restart local v12    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .restart local v13    # "cameraMode":Z
    :catch_165
    move-exception v16

    .line 286
    .local v16, "ex":Landroid/os/RemoteException;
    const-string v2, "FakeShutdown"

    const-string v3, "!@RemoteException during bluetooth enable"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_db

    .line 294
    .end local v16    # "ex":Landroid/os/RemoteException;
    :catchall_171
    move-exception v2

    :try_start_172
    monitor-exit v3
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw v2

    .line 303
    :cond_174
    const-string v2, "FakeShutdown"

    const-string v3, "!@anim dlg cancel"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1200(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->cancel()V

    goto/16 :goto_ff

    .line 318
    .restart local v11    # "audioManager":Landroid/media/AudioManager;
    :catch_188
    move-exception v15

    .line 319
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v2, "FakeShutdown"

    const-string v3, "!@is service dead?"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_124

    .line 326
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_191
    move-exception v2

    :try_start_192
    monitor-exit v3
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    throw v2
.end method
