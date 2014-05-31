.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final DIR_ENCRYPTION:Z

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z

.field private static final is3LMPowerSavingEnabled:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 205
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2016
    return-void
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1993
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1995
    :try_start_c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1996
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1999
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_23

    .line 2005
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_22
    :goto_22
    return-void

    .line 2001
    :catch_23
    move-exception v0

    .line 2002
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting fingerprint service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1985
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1986
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1989
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1990
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .registers 229

    .prologue
    .line 213
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 217
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 219
    const/16 v7, -0x13

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 222
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 223
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 227
    const-string/jumbo v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v192

    .line 229
    .local v192, "shutdownAction":Ljava/lang/String;
    if-eqz v192, :cond_57

    invoke-virtual/range {v192 .. v192}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_57

    .line 230
    const/4 v7, 0x0

    move-object/from16 v0, v192

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_1b3

    const/16 v182, 0x1

    .line 233
    .local v182, "reboot":Z
    :goto_3e
    invoke-virtual/range {v192 .. v192}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_1b7

    .line 234
    const/4 v7, 0x1

    invoke-virtual/range {v192 .. v192}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v192

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v181

    .line 239
    .local v181, "reason":Ljava/lang/String;
    :goto_50
    move/from16 v0, v182

    move-object/from16 v1, v181

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 243
    .end local v181    # "reason":Ljava/lang/String;
    .end local v182    # "reboot":Z
    :cond_57
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v130

    .line 244
    .local v130, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v130

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1bb

    const/16 v129, 0x0

    .line 246
    .local v129, "factoryTest":I
    :goto_69
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 248
    .local v33, "headless":Z
    const/16 v142, 0x0

    .line 249
    .local v142, "installer":Lcom/android/server/pm/Installer;
    const/16 v70, 0x0

    .line 250
    .local v70, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v100, 0x0

    .line 251
    .local v100, "contentService":Lcom/android/server/content/ContentService;
    const/16 v145, 0x0

    .line 252
    .local v145, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 253
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v118, 0x0

    .line 254
    .local v118, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v79, 0x0

    .line 255
    .local v79, "battery":Lcom/android/server/BatteryService;
    const/16 v216, 0x0

    .line 256
    .local v216, "vibrator":Lcom/android/server/VibratorService;
    const/16 v72, 0x0

    .line 257
    .local v72, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v158, 0x0

    .line 258
    .local v158, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 259
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 260
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v164, 0x0

    .line 261
    .local v164, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v92, 0x0

    .line 262
    .local v92, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v88, 0x0

    .line 263
    .local v88, "cneObj":Ljava/lang/Object;
    const/16 v224, 0x0

    .line 264
    .local v224, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v221, 0x0

    .line 267
    .local v221, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v119, 0x0

    .line 270
    .local v119, "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    const/16 v223, 0x0

    .line 272
    .local v223, "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    const/16 v191, 0x0

    .line 273
    .local v191, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v174, 0x0

    .line 274
    .local v174, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 275
    .local v5, "context":Landroid/content/Context;
    const/16 v226, 0x0

    .line 276
    .local v226, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v80, 0x0

    .line 277
    .local v80, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v121, 0x0

    .line 278
    .local v121, "dock":Lcom/android/server/DockObserver;
    const/16 v213, 0x0

    .line 279
    .local v213, "usb":Lcom/android/server/usb/UsbService;
    const/16 v189, 0x0

    .line 280
    .local v189, "serial":Lcom/android/server/SerialService;
    const/16 v209, 0x0

    .line 281
    .local v209, "twilight":Lcom/android/server/TwilightService;
    const/16 v211, 0x0

    .line 282
    .local v211, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v183, 0x0

    .line 283
    .local v183, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v166, 0x0

    .line 284
    .local v166, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v89, 0x0

    .line 285
    .local v89, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v141, 0x0

    .line 286
    .local v141, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v199, 0x0

    .line 287
    .local v199, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v162, 0x0

    .line 288
    .local v162, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    const/16 v96, 0x0

    .line 290
    .local v96, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v105, 0x0

    .line 292
    .local v105, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v150, 0x0

    .line 294
    .local v150, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v107, 0x0

    .line 295
    .local v107, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v176, 0x0

    .line 299
    .local v176, "powerSaving":Lcom/android/server/PowerSaving3LMService;
    const/16 v179, 0x0

    .line 301
    .local v179, "rcpManagerService":Lcom/android/server/RCPManagerService;
    const/16 v173, 0x0

    .line 305
    .local v173, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v98, 0x0

    .line 306
    .local v98, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    const-string v7, "1"

    const-string v9, "ro.config.knox"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    .line 310
    .local v62, "knoxV1Enabled":Z
    const/16 v204, 0x0

    .line 311
    .local v204, "timaService":Lcom/android/server/TimaService;
    const/16 v202, 0x0

    .line 314
    .local v202, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v160, 0x0

    .line 318
    .local v160, "msapwifi":Lcom/android/server/MsapWifiService;
    :try_start_df
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_1c1

    .line 325
    :goto_e2
    new-instance v227, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v227

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 326
    .local v227, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v227 .. v227}, Landroid/os/HandlerThread;->start()V

    .line 327
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v227 .. v227}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 328
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    const/16 v24, 0x0

    .line 346
    .local v24, "onlyCore":Z
    const/16 v132, 0x0

    .line 351
    .local v132, "firstBoot":Z
    :try_start_109
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v143, Lcom/android/server/pm/Installer;

    invoke-direct/range {v143 .. v143}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_115
    .catch Ljava/lang/RuntimeException; {:try_start_109 .. :try_end_115} :catch_1cd

    .line 353
    .end local v142    # "installer":Lcom/android/server/pm/Installer;
    .local v143, "installer":Lcom/android/server/pm/Installer;
    :try_start_115
    invoke-virtual/range {v143 .. v143}, Lcom/android/server/pm/Installer;->ping()Z

    .line 355
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v175, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v175 .. v175}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_124
    .catch Ljava/lang/RuntimeException; {:try_start_115 .. :try_end_124} :catch_1601

    .line 357
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v175, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_124
    const-string v7, "power"

    move-object/from16 v0, v175

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 379
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static/range {v129 .. v129}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_135
    .catch Ljava/lang/RuntimeException; {:try_start_124 .. :try_end_135} :catch_1606

    move-result-object v5

    move-object/from16 v4, v175

    .end local v175    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v142, v143

    .line 386
    .end local v143    # "installer":Lcom/android/server/pm/Installer;
    .restart local v142    # "installer":Lcom/android/server/pm/Installer;
    :goto_13a
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v115

    .line 387
    .local v115, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v112

    .line 388
    .local v112, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v110

    .line 389
    .local v110, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v117

    .line 390
    .local v117, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v111

    .line 391
    .local v111, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v116

    .line 392
    .local v116, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v114

    .line 393
    .local v114, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v113

    .line 396
    .local v113, "disableNetwork":Z
    :try_start_172
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_180
    .catch Ljava/lang/RuntimeException; {:try_start_172 .. :try_end_180} :catch_1549

    .line 398
    .end local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_180
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 400
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v7

    if-eqz v7, :cond_1e0

    .line 403
    const/16 v193, 0x0

    .local v193, "simSlotNum":I
    :goto_195
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    move/from16 v0, v193

    if-ge v0, v7, :cond_1f1

    .line 404
    const-string/jumbo v7, "telephony.registry"

    move/from16 v0, v193

    invoke-static {v7, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    move/from16 v0, v193

    invoke-direct {v9, v5, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b0
    .catch Ljava/lang/RuntimeException; {:try_start_180 .. :try_end_1b0} :catch_f8a

    .line 403
    add-int/lit8 v193, v193, 0x1

    goto :goto_195

    .line 230
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v62    # "knoxV1Enabled":Z
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .end local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v88    # "cneObj":Ljava/lang/Object;
    .end local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v100    # "contentService":Lcom/android/server/content/ContentService;
    .end local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v107    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .end local v110    # "disableBluetooth":Z
    .end local v111    # "disableLocation":Z
    .end local v112    # "disableMedia":Z
    .end local v113    # "disableNetwork":Z
    .end local v114    # "disableNonCoreServices":Z
    .end local v115    # "disableStorage":Z
    .end local v116    # "disableSystemUI":Z
    .end local v117    # "disableTelephony":Z
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v121    # "dock":Lcom/android/server/DockObserver;
    .end local v129    # "factoryTest":I
    .end local v130    # "factoryTestStr":Ljava/lang/String;
    .end local v132    # "firstBoot":Z
    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v142    # "installer":Lcom/android/server/pm/Installer;
    .end local v145    # "lights":Lcom/android/server/LightsService;
    .end local v150    # "mHMS":Lcom/android/server/HarmonyEASService;
    .end local v158    # "mountService":Lcom/android/server/MountService;
    .end local v160    # "msapwifi":Lcom/android/server/MsapWifiService;
    .end local v162    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v164    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v166    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v173    # "personaService":Lcom/android/server/pm/PersonaManagerService;
    .end local v174    # "pm":Landroid/content/pm/IPackageManager;
    .end local v176    # "powerSaving":Lcom/android/server/PowerSaving3LMService;
    .end local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v183    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v189    # "serial":Lcom/android/server/SerialService;
    .end local v191    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v193    # "simSlotNum":I
    .end local v199    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v202    # "timaObserver":Lcom/android/server/TimaObserver;
    .end local v204    # "timaService":Lcom/android/server/TimaService;
    .end local v209    # "twilight":Lcom/android/server/TwilightService;
    .end local v211    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v213    # "usb":Lcom/android/server/usb/UsbService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .end local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v223    # "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    .end local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v226    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v227    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_1b3
    const/16 v182, 0x0

    goto/16 :goto_3e

    .line 236
    .restart local v182    # "reboot":Z
    :cond_1b7
    const/16 v181, 0x0

    .restart local v181    # "reason":Ljava/lang/String;
    goto/16 :goto_50

    .line 244
    .end local v181    # "reason":Ljava/lang/String;
    .end local v182    # "reboot":Z
    .restart local v130    # "factoryTestStr":Ljava/lang/String;
    :cond_1bb
    invoke-static/range {v130 .. v130}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v129

    goto/16 :goto_69

    .line 319
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v62    # "knoxV1Enabled":Z
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v88    # "cneObj":Ljava/lang/Object;
    .restart local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v100    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v107    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .restart local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v121    # "dock":Lcom/android/server/DockObserver;
    .restart local v129    # "factoryTest":I
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v142    # "installer":Lcom/android/server/pm/Installer;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v150    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v158    # "mountService":Lcom/android/server/MountService;
    .restart local v160    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v162    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v164    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v166    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v173    # "personaService":Lcom/android/server/pm/PersonaManagerService;
    .restart local v174    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v176    # "powerSaving":Lcom/android/server/PowerSaving3LMService;
    .restart local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v183    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v189    # "serial":Lcom/android/server/SerialService;
    .restart local v191    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v199    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v202    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v204    # "timaService":Lcom/android/server/TimaService;
    .restart local v209    # "twilight":Lcom/android/server/TwilightService;
    .restart local v211    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v213    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v223    # "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    .restart local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v226    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_1c1
    move-exception v125

    .line 320
    .local v125, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting ServiceKeeper"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e2

    .line 381
    .end local v125    # "e":Ljava/lang/Exception;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v132    # "firstBoot":Z
    .restart local v227    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_1cd
    move-exception v125

    .line 382
    .local v125, "e":Ljava/lang/RuntimeException;
    :goto_1ce
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13a

    .line 407
    .end local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v125    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v110    # "disableBluetooth":Z
    .restart local v111    # "disableLocation":Z
    .restart local v112    # "disableMedia":Z
    .restart local v113    # "disableNetwork":Z
    .restart local v114    # "disableNonCoreServices":Z
    .restart local v115    # "disableStorage":Z
    .restart local v116    # "disableSystemUI":Z
    .restart local v117    # "disableTelephony":Z
    :cond_1e0
    :try_start_1e0
    new-instance v200, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v200

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_1e0 .. :try_end_1e7} :catch_f8a

    .line 408
    .end local v199    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v200, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1e7
    const-string/jumbo v7, "telephony.registry"

    move-object/from16 v0, v200

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1ef
    .catch Ljava/lang/RuntimeException; {:try_start_1e7 .. :try_end_1ef} :catch_1556

    move-object/from16 v199, v200

    .line 412
    .end local v200    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v199    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_1f1
    :try_start_1f1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_213

    .line 413
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v163, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_209
    .catch Ljava/lang/RuntimeException; {:try_start_1f1 .. :try_end_209} :catch_f8a

    .line 415
    .end local v162    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .local v163, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_209
    const-string/jumbo v7, "telephony.msim.registry"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_211
    .catch Ljava/lang/RuntimeException; {:try_start_209 .. :try_end_211} :catch_1563

    move-object/from16 v162, v163

    .line 418
    .end local v163    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v162    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :cond_213
    :try_start_213
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 421
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 423
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_239

    .line 424
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    :cond_239
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v104

    .line 431
    .local v104, "cryptState":Ljava/lang/String;
    const-string/jumbo v7, "trigger_restart_min_framework"

    move-object/from16 v0, v104

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f68

    .line 432
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/16 v24, 0x1

    .line 440
    :cond_25b
    :goto_25b
    const-string v7, "1"

    const-string v9, "ro.config.tima"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_268
    .catch Ljava/lang/RuntimeException; {:try_start_213 .. :try_end_268} :catch_f8a

    move-result v201

    .line 441
    .local v201, "timaEnabled":Z
    if-eqz v201, :cond_2b2

    .line 443
    :try_start_26b
    const-string v7, "SystemServer"

    const-string v9, "TIMA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v205, Lcom/android/server/TimaService;

    move-object/from16 v0, v205

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_279
    .catch Ljava/lang/Throwable; {:try_start_26b .. :try_end_279} :catch_f7d
    .catch Ljava/lang/RuntimeException; {:try_start_26b .. :try_end_279} :catch_f8a

    .line 445
    .end local v204    # "timaService":Lcom/android/server/TimaService;
    .local v205, "timaService":Lcom/android/server/TimaService;
    :try_start_279
    const-string/jumbo v7, "tima"

    move-object/from16 v0, v205

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_281
    .catch Ljava/lang/Throwable; {:try_start_279 .. :try_end_281} :catch_15fc
    .catch Ljava/lang/RuntimeException; {:try_start_279 .. :try_end_281} :catch_1570

    move-object/from16 v204, v205

    .line 451
    .end local v205    # "timaService":Lcom/android/server/TimaService;
    .restart local v204    # "timaService":Lcom/android/server/TimaService;
    :goto_283
    :try_start_283
    const-string v7, "SystemServer"

    const-string v9, "TIMA Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v203, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v203

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_291
    .catch Ljava/lang/Throwable; {:try_start_283 .. :try_end_291} :catch_fa5
    .catch Ljava/lang/RuntimeException; {:try_start_283 .. :try_end_291} :catch_f8a

    .end local v202    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v203, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v202, v203

    .line 458
    .end local v203    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v202    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_293
    :try_start_293
    const-string v7, "3.0"

    const-string v9, "ro.config.timaversion"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v206

    .line 459
    .local v206, "timaversion":Z
    if-eqz v206, :cond_2b2

    .line 460
    const-string v7, "SystemServer"

    const-string v9, "Added TIMA keystore provider"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v7, Landroid/security/TimaKeyStoreProvider;

    invoke-direct {v7}, Landroid/security/TimaKeyStoreProvider;-><init>()V

    invoke-static {v7}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 466
    .end local v206    # "timaversion":Z
    :cond_2b2
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    if-eqz v129, :cond_fb2

    const/4 v7, 0x1

    :goto_2bc
    move-object/from16 v0, v142

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v174

    .line 470
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2cb
    .catch Ljava/lang/RuntimeException; {:try_start_293 .. :try_end_2cb} :catch_f8a

    .line 472
    :try_start_2cb
    invoke-interface/range {v174 .. v174}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2ce
    .catch Landroid/os/RemoteException; {:try_start_2cb .. :try_end_2ce} :catch_14c3
    .catch Ljava/lang/RuntimeException; {:try_start_2cb .. :try_end_2ce} :catch_f8a

    move-result v132

    .line 476
    :goto_2cf
    :try_start_2cf
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 478
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 481
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string/jumbo v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 486
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v144

    .line 487
    .local v144, "knoxVerInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v144

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31a

    const-string v7, "1.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v144

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_317
    .catch Ljava/lang/RuntimeException; {:try_start_2cf .. :try_end_317} :catch_f8a

    move-result v7

    if-eqz v7, :cond_32b

    .line 489
    :cond_31a
    :try_start_31a
    const-string v7, "SystemServer"

    const-string v9, "SEAMS"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v7, "SEAMService"

    new-instance v9, Lcom/android/server/SEAMService;

    invoke-direct {v9, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32b
    .catch Ljava/lang/Throwable; {:try_start_31a .. :try_end_32b} :catch_fb5
    .catch Ljava/lang/RuntimeException; {:try_start_31a .. :try_end_32b} :catch_f8a

    .line 498
    :cond_32b
    :goto_32b
    :try_start_32b
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v215

    .line 499
    .local v215, "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v215

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_352

    .line 500
    const-string v7, "SystemServer"

    const-string v9, "Persona Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v173

    .line 502
    const-string v7, "persona"

    move-object/from16 v0, v173

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 505
    :cond_352
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_35a
    .catch Ljava/lang/RuntimeException; {:try_start_32b .. :try_end_35a} :catch_f8a

    .line 510
    :try_start_35a
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v71, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_368
    .catch Ljava/lang/Throwable; {:try_start_35a .. :try_end_368} :catch_fc1
    .catch Ljava/lang/RuntimeException; {:try_start_35a .. :try_end_368} :catch_f8a

    .line 512
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v71, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_368
    const-string v7, "account"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36f
    .catch Ljava/lang/Throwable; {:try_start_368 .. :try_end_36f} :catch_15f7
    .catch Ljava/lang/RuntimeException; {:try_start_368 .. :try_end_36f} :catch_157d

    move-object/from16 v70, v71

    .line 518
    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_371
    :try_start_371
    const-string v7, ""

    const-string v9, "KT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_392

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z
    :try_end_37e
    .catch Ljava/lang/RuntimeException; {:try_start_371 .. :try_end_37e} :catch_f8a

    move-result v7

    if-nez v7, :cond_392

    .line 520
    :try_start_381
    const-string v7, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_392
    .catch Ljava/lang/Throwable; {:try_start_381 .. :try_end_392} :catch_fcd
    .catch Ljava/lang/RuntimeException; {:try_start_381 .. :try_end_392} :catch_f8a

    .line 528
    :cond_392
    :goto_392
    :try_start_392
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v7, 0x1

    move/from16 v0, v129

    if-ne v0, v7, :cond_fd9

    const/4 v7, 0x1

    :goto_39f
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v100

    .line 534
    new-instance v106, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v106

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_3aa
    .catch Ljava/lang/RuntimeException; {:try_start_392 .. :try_end_3aa} :catch_f8a

    .line 536
    .end local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v106, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_3aa
    sget-boolean v7, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v7, :cond_3b5

    .line 537
    const-string v7, "DirEncryptService"

    move-object/from16 v0, v106

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b5
    .catch Ljava/lang/Throwable; {:try_start_3aa .. :try_end_3b5} :catch_fdc
    .catch Ljava/lang/RuntimeException; {:try_start_3aa .. :try_end_3b5} :catch_158a

    :cond_3b5
    move-object/from16 v105, v106

    .line 546
    .end local v106    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_3b7
    if-eqz v62, :cond_3d7

    .line 548
    :try_start_3b9
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Container Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v99, Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;-><init>(Landroid/content/Context;)V
    :try_end_3c7
    .catch Ljava/lang/Throwable; {:try_start_3b9 .. :try_end_3c7} :catch_fea
    .catch Ljava/lang/RuntimeException; {:try_start_3b9 .. :try_end_3c7} :catch_f8a

    .line 550
    .end local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .local v99, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :try_start_3c7
    const-string v7, "container_service"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 551
    const-string v7, "SystemServer"

    const-string v9, "Container Service service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d5
    .catch Ljava/lang/Throwable; {:try_start_3c7 .. :try_end_3d5} :catch_15f2
    .catch Ljava/lang/RuntimeException; {:try_start_3c7 .. :try_end_3d5} :catch_1597

    move-object/from16 v98, v99

    .line 558
    .end local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :cond_3d7
    :goto_3d7
    :try_start_3d7
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 561
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_3ed
    .catch Ljava/lang/RuntimeException; {:try_start_3d7 .. :try_end_3ed} :catch_f8a

    .line 564
    .end local v145    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_3ed
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_3f9
    .catch Ljava/lang/RuntimeException; {:try_start_3ed .. :try_end_3f9} :catch_15a4

    .line 566
    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_3f9
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 570
    const-string v7, "SystemServer"

    const-string v9, "TactileAssist Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v198, Lcom/android/server/TactileAssistService;

    move-object/from16 v0, v198

    invoke-direct {v0, v5}, Lcom/android/server/TactileAssistService;-><init>(Landroid/content/Context;)V

    .line 572
    .local v198, "tactileAssist":Lcom/android/server/TactileAssistService;
    const-string/jumbo v7, "tactileassist"

    move-object/from16 v0, v198

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 576
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v217, Lcom/android/server/VibratorService;

    move-object/from16 v0, v217

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_422
    .catch Ljava/lang/RuntimeException; {:try_start_3f9 .. :try_end_422} :catch_15ad

    .line 578
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .local v217, "vibrator":Lcom/android/server/VibratorService;
    :try_start_422
    const-string/jumbo v7, "vibrator"

    move-object/from16 v0, v217

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 581
    const-string v7, "SystemServer"

    const-string v9, "SSRM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_431
    .catch Ljava/lang/RuntimeException; {:try_start_422 .. :try_end_431} :catch_101c

    .line 583
    const/16 v82, 0x0

    .line 584
    .local v82, "cfmsClass":Ljava/lang/Class;
    :try_start_433
    const-string v7, "eng"

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1009

    .line 585
    new-instance v87, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v87

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 586
    .local v87, "clsLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v87

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v82

    .line 590
    .end local v87    # "clsLoader":Ldalvik/system/PathClassLoader;
    :goto_452
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v82

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v83

    .line 591
    .local v83, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    aput-object v10, v7, v9

    move-object/from16 v0, v83

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v194

    check-cast v194, Landroid/os/IBinder;

    .line 592
    .local v194, "ssrmService":Landroid/os/IBinder;
    const-string v7, "CustomFrequencyManagerService"

    move-object/from16 v0, v194

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_481
    .catch Ljava/lang/Exception; {:try_start_433 .. :try_end_481} :catch_1011
    .catch Ljava/lang/RuntimeException; {:try_start_433 .. :try_end_481} :catch_101c

    .line 598
    .end local v83    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v194    # "ssrmService":Landroid/os/IBinder;
    :goto_481
    :try_start_481
    const-string v7, "SystemServer"

    const-string v9, "Adaptive Display Color Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v120, Lcom/android/server/AdaptiveDisplayColorService;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V
    :try_end_48f
    .catch Ljava/lang/RuntimeException; {:try_start_481 .. :try_end_48f} :catch_101c

    .line 601
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .local v120, "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    :try_start_48f
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v97, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v97

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_49d
    .catch Ljava/lang/RuntimeException; {:try_start_48f .. :try_end_49d} :catch_15b4

    .line 603
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v97, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_49d
    const-string v7, "consumer_ir"

    move-object/from16 v0, v97

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 607
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 611
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4c5
    .catch Ljava/lang/RuntimeException; {:try_start_49d .. :try_end_4c5} :catch_15bf

    .line 613
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_4c5
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 615
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 618
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 620
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4fc
    .catch Ljava/lang/RuntimeException; {:try_start_4c5 .. :try_end_4fc} :catch_15cc

    .line 623
    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_4fc
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52a

    .line 624
    const-string v7, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v7, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {v9, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 627
    const-string v7, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v7, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 631
    :cond_52a
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v7, 0x1

    move/from16 v0, v129

    if-eq v0, v7, :cond_1025

    const/16 v22, 0x1

    :goto_538
    if-nez v132, :cond_1029

    const/16 v23, 0x1

    :goto_53c
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v226

    .line 635
    const-string/jumbo v7, "window"

    move-object/from16 v0, v226

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 636
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 638
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v226

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 640
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v7

    move-object/from16 v0, v226

    invoke-virtual {v7, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 643
    invoke-virtual/range {v226 .. v226}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 644
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 646
    move-object/from16 v0, v226

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 647
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 652
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_102d

    .line 653
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_592
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v215

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5ba

    .line 675
    const-string v7, "SystemServer"

    const-string v9, "RCP Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5aa
    .catch Ljava/lang/RuntimeException; {:try_start_4fc .. :try_end_5aa} :catch_103b

    .line 677
    :try_start_5aa
    new-instance v180, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v180

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5b1
    .catch Ljava/lang/Throwable; {:try_start_5aa .. :try_end_5b1} :catch_108e
    .catch Ljava/lang/RuntimeException; {:try_start_5aa .. :try_end_5b1} :catch_103b

    .line 678
    .end local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .local v180, "rcpManagerService":Lcom/android/server/RCPManagerService;
    :try_start_5b1
    const-string v7, "rcp"

    move-object/from16 v0, v180

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b8
    .catch Ljava/lang/Throwable; {:try_start_5b1 .. :try_end_5b8} :catch_15ed
    .catch Ljava/lang/RuntimeException; {:try_start_5b1 .. :try_end_5b8} :catch_15e2

    move-object/from16 v179, v180

    .end local v180    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    :cond_5ba
    :goto_5ba
    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v216, v217

    .line 689
    .end local v82    # "cfmsClass":Ljava/lang/Class;
    .end local v104    # "cryptState":Ljava/lang/String;
    .end local v144    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v198    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v201    # "timaEnabled":Z
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    :goto_5c0
    const/16 v108, 0x0

    .line 691
    .local v108, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v127, 0x0

    .line 693
    .local v127, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v196, 0x0

    .line 694
    .local v196, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v139, 0x0

    .line 695
    .local v139, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v73, 0x0

    .line 696
    .local v73, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v168, 0x0

    .line 697
    .local v168, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v219, 0x0

    .line 698
    .local v219, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v146, 0x0

    .line 699
    .local v146, "location":Lcom/android/server/LocationManagerService;
    const/16 v187, 0x0

    .line 700
    .local v187, "secGeofence":Landroid/os/IBinder;
    const/16 v185, 0x0

    .line 701
    .local v185, "sLocation":Landroid/os/IBinder;
    const/16 v101, 0x0

    .line 702
    .local v101, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v207, 0x0

    .line 703
    .local v207, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v148, 0x0

    .line 704
    .local v148, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v123, 0x0

    .line 705
    .local v123, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v76, 0x0

    .line 706
    .local v76, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v177, 0x0

    .line 707
    .local v177, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v152, 0x0

    .line 710
    .local v152, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v129

    if-eq v0, v7, :cond_611

    .line 714
    :try_start_5e7
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v140, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v140

    move-object/from16 v1, v226

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_5f7
    .catch Ljava/lang/Throwable; {:try_start_5e7 .. :try_end_5f7} :catch_109a

    .line 716
    .end local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v140, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_5f7
    const-string v7, "input_method"

    move-object/from16 v0, v140

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5fe
    .catch Ljava/lang/Throwable; {:try_start_5f7 .. :try_end_5fe} :catch_1544

    move-object/from16 v139, v140

    .line 722
    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_600
    :try_start_600
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_611
    .catch Ljava/lang/Throwable; {:try_start_600 .. :try_end_611} :catch_10a7

    .line 732
    :cond_611
    :goto_611
    :try_start_611
    const-string v7, "SystemServer"

    const-string v9, "Window Manager displayReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual/range {v226 .. v226}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_61b
    .catch Ljava/lang/Throwable; {:try_start_611 .. :try_end_61b} :catch_10b4

    .line 739
    :goto_61b
    :try_start_61b
    const-string v7, "SystemServer"

    const-string v9, "Package Manager performBootDexOpt"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-interface/range {v174 .. v174}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_625
    .catch Ljava/lang/Throwable; {:try_start_61b .. :try_end_625} :catch_10c0

    .line 746
    :goto_625
    :try_start_625
    const-string v7, "SystemServer"

    const-string v9, "ActivityManagerNative showBootMessage"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040685

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_63f
    .catch Landroid/os/RemoteException; {:try_start_625 .. :try_end_63f} :catch_1541

    .line 755
    :goto_63f
    if-eqz v62, :cond_646

    .line 757
    if-eqz v98, :cond_646

    :try_start_643
    invoke-virtual/range {v98 .. v98}, Lcom/sec/knox/container/EnterpriseContainerService;->preSystemReady()V
    :try_end_646
    .catch Ljava/lang/Throwable; {:try_start_643 .. :try_end_646} :catch_10cc

    .line 764
    :cond_646
    :goto_646
    const/4 v7, 0x1

    move/from16 v0, v129

    if-eq v0, v7, :cond_1611

    .line 766
    :try_start_64b
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v109, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v109

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_659
    .catch Ljava/lang/Throwable; {:try_start_64b .. :try_end_659} :catch_10d8

    .line 768
    .end local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v109, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_659
    const-string v7, "device_policy"

    move-object/from16 v0, v109

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_660
    .catch Ljava/lang/Throwable; {:try_start_659 .. :try_end_660} :catch_153c

    move-object/from16 v108, v109

    .line 773
    .end local v109    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :goto_662
    if-nez v115, :cond_68a

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68a

    .line 780
    :try_start_673
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v159, Lcom/android/server/MountService;

    move-object/from16 v0, v159

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_681
    .catch Ljava/lang/Throwable; {:try_start_673 .. :try_end_681} :catch_10e5

    .line 782
    .end local v158    # "mountService":Lcom/android/server/MountService;
    .local v159, "mountService":Lcom/android/server/MountService;
    :try_start_681
    const-string v7, "mount"

    move-object/from16 v0, v159

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_688
    .catch Ljava/lang/Throwable; {:try_start_681 .. :try_end_688} :catch_1537

    move-object/from16 v158, v159

    .line 790
    .end local v159    # "mountService":Lcom/android/server/MountService;
    .restart local v158    # "mountService":Lcom/android/server/MountService;
    :cond_68a
    :goto_68a
    :try_start_68a
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-eqz v105, :cond_69d

    .line 792
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_69d
    .catch Ljava/lang/Throwable; {:try_start_68a .. :try_end_69d} :catch_10f2

    .line 800
    :cond_69d
    :goto_69d
    if-nez v114, :cond_6f3

    .line 802
    :try_start_69f
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v149, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v149

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_6ad
    .catch Ljava/lang/Throwable; {:try_start_69f .. :try_end_6ad} :catch_10ff

    .line 804
    .end local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v149, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_6ad
    const-string v7, "lock_settings"

    move-object/from16 v0, v149

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b4
    .catch Ljava/lang/Throwable; {:try_start_6ad .. :try_end_6b4} :catch_1532

    move-object/from16 v148, v149

    .line 818
    .end local v149    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_6b6
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v215

    .line 819
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v215

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6ce

    .line 821
    :try_start_6cb
    invoke-virtual/range {v173 .. v173}, Lcom/android/server/pm/PersonaManagerService;->preSystemReady()V
    :try_end_6ce
    .catch Ljava/lang/Throwable; {:try_start_6cb .. :try_end_6ce} :catch_110c

    .line 830
    :cond_6ce
    :goto_6ce
    :try_start_6ce
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v128, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v174

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v7, v0

    move-object/from16 v0, v128

    move-object/from16 v1, v108

    invoke-direct {v0, v5, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_6e3
    .catch Ljava/lang/Throwable; {:try_start_6ce .. :try_end_6e3} :catch_1118

    .line 832
    .end local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v128, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_6e3
    const-string v7, "enterprise_policy"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 833
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f1
    .catch Ljava/lang/Throwable; {:try_start_6e3 .. :try_end_6f1} :catch_152d

    move-object/from16 v127, v128

    .line 842
    .end local v128    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .restart local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_6f3
    :goto_6f3
    :try_start_6f3
    const-string v7, "SystemServer"

    const-string v9, "HarmonyEAS service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v151, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_701
    .catch Ljava/lang/Throwable; {:try_start_6f3 .. :try_end_701} :catch_1124

    .line 844
    .end local v150    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v151, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_701
    const-string v7, "harmony_eas_service"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 845
    const-string v7, "SystemServer"

    const-string v9, "Harmony EAS service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70f
    .catch Ljava/lang/Throwable; {:try_start_701 .. :try_end_70f} :catch_1528

    move-object/from16 v150, v151

    .line 851
    .end local v151    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v150    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_711
    if-nez v116, :cond_72d

    .line 853
    :try_start_713
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-instance v197, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v197

    move-object/from16 v1, v226

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_723
    .catch Ljava/lang/Throwable; {:try_start_713 .. :try_end_723} :catch_1130

    .line 855
    .end local v196    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v197, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_723
    const-string/jumbo v7, "statusbar"

    move-object/from16 v0, v197

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72b
    .catch Ljava/lang/Throwable; {:try_start_723 .. :try_end_72b} :catch_1523

    move-object/from16 v196, v197

    .line 861
    .end local v197    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v196    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_72d
    :goto_72d
    if-nez v114, :cond_740

    .line 863
    :try_start_72f
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_740
    .catch Ljava/lang/Throwable; {:try_start_72f .. :try_end_740} :catch_113d

    .line 876
    :cond_740
    :goto_740
    :try_start_740
    const-string v7, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const-string v7, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v5}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_751
    .catch Ljava/lang/Throwable; {:try_start_740 .. :try_end_751} :catch_114a

    .line 883
    :goto_751
    if-nez v113, :cond_765

    .line 885
    :try_start_753
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 887
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_765
    .catch Ljava/lang/Throwable; {:try_start_753 .. :try_end_765} :catch_1156

    .line 893
    :cond_765
    :goto_765
    if-nez v114, :cond_77f

    .line 895
    :try_start_767
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance v208, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v208

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_775
    .catch Ljava/lang/Throwable; {:try_start_767 .. :try_end_775} :catch_1163

    .line 897
    .end local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v208, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_775
    const-string/jumbo v7, "textservices"

    move-object/from16 v0, v208

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77d
    .catch Ljava/lang/Throwable; {:try_start_775 .. :try_end_77d} :catch_151e

    move-object/from16 v207, v208

    .line 903
    .end local v208    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_77f
    :goto_77f
    if-nez v113, :cond_160d

    .line 905
    :try_start_781
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    new-instance v165, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v165

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_793
    .catch Ljava/lang/Throwable; {:try_start_781 .. :try_end_793} :catch_1170

    .line 907
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v165, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_793
    const-string v7, "netstats"

    move-object/from16 v0, v165

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_79a
    .catch Ljava/lang/Throwable; {:try_start_793 .. :try_end_79a} :catch_1519

    move-object/from16 v29, v165

    .line 913
    .end local v165    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_79c
    :try_start_79c
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_7b0
    .catch Ljava/lang/Throwable; {:try_start_79c .. :try_end_7b0} :catch_117d

    .line 917
    .end local v164    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_7b0
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7b7
    .catch Ljava/lang/Throwable; {:try_start_7b0 .. :try_end_7b7} :catch_1516

    .line 923
    :goto_7b7
    :try_start_7b7
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v225, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v225

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_7c5
    .catch Ljava/lang/Throwable; {:try_start_7b7 .. :try_end_7c5} :catch_118c

    .line 925
    .end local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v225, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_7c5
    const-string/jumbo v7, "wifip2p"

    move-object/from16 v0, v225

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7cd
    .catch Ljava/lang/Throwable; {:try_start_7c5 .. :try_end_7cd} :catch_1511

    move-object/from16 v224, v225

    .line 931
    .end local v225    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_7cf
    :try_start_7cf
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v222, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v222

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_7dd
    .catch Ljava/lang/Throwable; {:try_start_7cf .. :try_end_7dd} :catch_1199

    .line 933
    .end local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v222, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_7dd
    const-string/jumbo v7, "wifi"

    move-object/from16 v0, v222

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e5
    .catch Ljava/lang/Throwable; {:try_start_7dd .. :try_end_7e5} :catch_150c

    move-object/from16 v221, v222

    .line 940
    .end local v222    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_7e7
    :try_start_7e7
    const-string v7, "SystemServer"

    const-string v9, "MSAP Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v161, Lcom/android/server/MsapWifiService;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/MsapWifiService;-><init>(Landroid/content/Context;)V
    :try_end_7f5
    .catch Ljava/lang/Throwable; {:try_start_7e7 .. :try_end_7f5} :catch_11a6

    .line 942
    .end local v160    # "msapwifi":Lcom/android/server/MsapWifiService;
    .local v161, "msapwifi":Lcom/android/server/MsapWifiService;
    :try_start_7f5
    const-string v7, "msapwifi"

    move-object/from16 v0, v161

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7fc
    .catch Ljava/lang/Throwable; {:try_start_7f5 .. :try_end_7fc} :catch_1507

    move-object/from16 v160, v161

    .line 949
    .end local v161    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v160    # "msapwifi":Lcom/android/server/MsapWifiService;
    :goto_7fe
    :try_start_7fe
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v93, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v93

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_812
    .catch Ljava/lang/Throwable; {:try_start_7fe .. :try_end_812} :catch_11b3

    .line 952
    .end local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v93, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_812
    const-string v7, "connectivity"

    move-object/from16 v0, v93

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 953
    move-object/from16 v0, v29

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 954
    move-object/from16 v0, v25

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 956
    invoke-virtual/range {v224 .. v224}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 957
    invoke-virtual/range {v221 .. v221}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_82d
    .catch Ljava/lang/Throwable; {:try_start_812 .. :try_end_82d} :catch_1502

    move-object/from16 v92, v93

    .line 1006
    .end local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_82f
    :try_start_82f
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v191

    .line 1008
    const-string v7, "servicediscovery"

    move-object/from16 v0, v191

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_841
    .catch Ljava/lang/Throwable; {:try_start_82f .. :try_end_841} :catch_11c0

    .line 1015
    :goto_841
    if-nez v114, :cond_855

    .line 1017
    :try_start_843
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const-string/jumbo v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_855
    .catch Ljava/lang/Throwable; {:try_start_843 .. :try_end_855} :catch_11cd

    .line 1030
    :cond_855
    :goto_855
    if-eqz v158, :cond_86e

    if-nez v24, :cond_86e

    .line 1032
    const-string/jumbo v7, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "trigger_restart_min_framework"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_86e

    .line 1033
    invoke-virtual/range {v158 .. v158}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 1037
    :cond_86e
    if-eqz v70, :cond_87a

    .line 1038
    :try_start_870
    const-string v7, "SystemServer"

    const-string v9, "accountManager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-virtual/range {v70 .. v70}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_87a
    .catch Ljava/lang/Throwable; {:try_start_870 .. :try_end_87a} :catch_11da

    .line 1046
    :cond_87a
    :goto_87a
    if-eqz v100, :cond_886

    .line 1047
    :try_start_87c
    const-string v7, "SystemServer"

    const-string v9, "contentService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_886
    .catch Ljava/lang/Throwable; {:try_start_87c .. :try_end_886} :catch_11e6

    .line 1055
    :cond_886
    :goto_886
    :try_start_886
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    new-instance v169, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v169

    move-object/from16 v1, v196

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_896
    .catch Ljava/lang/Throwable; {:try_start_886 .. :try_end_896} :catch_11f2

    .line 1057
    .end local v168    # "notification":Lcom/android/server/NotificationManagerService;
    .local v169, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_896
    const-string v7, "notification"

    move-object/from16 v0, v169

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1058
    move-object/from16 v0, v25

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_8a4
    .catch Ljava/lang/Throwable; {:try_start_896 .. :try_end_8a4} :catch_14fd

    move-object/from16 v168, v169

    .line 1064
    .end local v169    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v168    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_8a6
    :try_start_8a6
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8b7
    .catch Ljava/lang/Throwable; {:try_start_8a6 .. :try_end_8b7} :catch_11ff

    .line 1071
    :goto_8b7
    if-nez v111, :cond_8e7

    .line 1073
    :try_start_8b9
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    new-instance v147, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v147

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8c7
    .catch Ljava/lang/Throwable; {:try_start_8b9 .. :try_end_8c7} :catch_120c

    .line 1075
    .end local v146    # "location":Lcom/android/server/LocationManagerService;
    .local v147, "location":Lcom/android/server/LocationManagerService;
    :try_start_8c7
    const-string v7, "location"

    move-object/from16 v0, v147

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8ce
    .catch Ljava/lang/Throwable; {:try_start_8c7 .. :try_end_8ce} :catch_14f8

    move-object/from16 v146, v147

    .line 1081
    .end local v147    # "location":Lcom/android/server/LocationManagerService;
    .restart local v146    # "location":Lcom/android/server/LocationManagerService;
    :goto_8d0
    :try_start_8d0
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v102, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_8de
    .catch Ljava/lang/Throwable; {:try_start_8d0 .. :try_end_8de} :catch_1219

    .line 1083
    .end local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v102, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_8de
    const-string v7, "country_detector"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8e5
    .catch Ljava/lang/Throwable; {:try_start_8de .. :try_end_8e5} :catch_14f3

    move-object/from16 v101, v102

    .line 1090
    .end local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_8e7
    :goto_8e7
    :try_start_8e7
    const-string v7, "SystemServer"

    const-string v9, "SecGeofence Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string v7, "com.samsung.geofence.SecGeofenceLoader"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v188

    .line 1092
    .local v188, "secGeofenceLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getSecGeofenceService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v9, v10

    move-object/from16 v0, v188

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v134

    .line 1093
    .local v134, "getSecGeofenceService":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v134

    invoke-virtual {v0, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v187, v0

    .line 1094
    const-string v7, "sec_geofence"

    move-object/from16 v0, v187

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1095
    const-string v7, "SystemServer"

    const-string v9, "Loading SecGeofenceService has been completed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_924
    .catch Ljava/lang/Throwable; {:try_start_8e7 .. :try_end_924} :catch_1226

    .line 1100
    .end local v134    # "getSecGeofenceService":Ljava/lang/reflect/Method;
    .end local v188    # "secGeofenceLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_924
    :try_start_924
    const-string v7, "SystemServer"

    const-string v9, "SLocation Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const-string v7, "com.samsung.location.SLocationLoader"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v186

    .line 1102
    .local v186, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getSLocationService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v9, v10

    move-object/from16 v0, v186

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v133

    .line 1103
    .local v133, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v133

    invoke-virtual {v0, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v185, v0

    .line 1104
    const-string v7, "sec_location"

    move-object/from16 v0, v185

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1105
    const-string v7, "SystemServer"

    const-string v9, "Loading SLocationService has been completed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_961
    .catch Ljava/lang/Throwable; {:try_start_924 .. :try_end_961} :catch_1230

    .line 1110
    .end local v133    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v186    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_961
    if-nez v114, :cond_974

    .line 1112
    :try_start_963
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_974
    .catch Ljava/lang/Throwable; {:try_start_963 .. :try_end_974} :catch_124f

    .line 1121
    :cond_974
    :goto_974
    :try_start_974
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_98c
    .catch Ljava/lang/Throwable; {:try_start_974 .. :try_end_98c} :catch_125c

    .line 1128
    :goto_98c
    if-nez v114, :cond_9b5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110032

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_9b5

    .line 1131
    :try_start_99b
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    if-nez v33, :cond_9b5

    .line 1133
    new-instance v220, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v220

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9ab
    .catch Ljava/lang/Throwable; {:try_start_99b .. :try_end_9ab} :catch_1269

    .line 1134
    .end local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v220, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_9ab
    const-string/jumbo v7, "wallpaper"

    move-object/from16 v0, v220

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9b3
    .catch Ljava/lang/Throwable; {:try_start_9ab .. :try_end_9b3} :catch_14ee

    move-object/from16 v219, v220

    .line 1141
    .end local v220    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_9b5
    :goto_9b5
    if-nez v112, :cond_9d7

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9d7

    .line 1143
    :try_start_9c6
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9d7
    .catch Ljava/lang/Throwable; {:try_start_9c6 .. :try_end_9d7} :catch_1276

    .line 1150
    :cond_9d7
    :goto_9d7
    if-nez v114, :cond_9e9

    .line 1152
    :try_start_9d9
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    new-instance v122, Lcom/android/server/DockObserver;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_9e7
    .catch Ljava/lang/Throwable; {:try_start_9d9 .. :try_end_9e7} :catch_1283

    .end local v121    # "dock":Lcom/android/server/DockObserver;
    .local v122, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v121, v122

    .line 1160
    .end local v122    # "dock":Lcom/android/server/DockObserver;
    .restart local v121    # "dock":Lcom/android/server/DockObserver;
    :cond_9e9
    :goto_9e9
    if-nez v112, :cond_9fe

    .line 1162
    :try_start_9eb
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_9fe
    .catch Ljava/lang/Throwable; {:try_start_9eb .. :try_end_9fe} :catch_1290

    .line 1171
    :cond_9fe
    :goto_9fe
    if-nez v114, :cond_a2f

    .line 1173
    :try_start_a00
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    new-instance v214, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v214

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_a0e
    .catch Ljava/lang/Throwable; {:try_start_a00 .. :try_end_a0e} :catch_129d

    .line 1176
    .end local v213    # "usb":Lcom/android/server/usb/UsbService;
    .local v214, "usb":Lcom/android/server/usb/UsbService;
    :try_start_a0e
    const-string/jumbo v7, "usb"

    move-object/from16 v0, v214

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a16
    .catch Ljava/lang/Throwable; {:try_start_a0e .. :try_end_a16} :catch_14e9

    move-object/from16 v213, v214

    .line 1182
    .end local v214    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v213    # "usb":Lcom/android/server/usb/UsbService;
    :goto_a18
    :try_start_a18
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    new-instance v190, Lcom/android/server/SerialService;

    move-object/from16 v0, v190

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_a26
    .catch Ljava/lang/Throwable; {:try_start_a18 .. :try_end_a26} :catch_12aa

    .line 1185
    .end local v189    # "serial":Lcom/android/server/SerialService;
    .local v190, "serial":Lcom/android/server/SerialService;
    :try_start_a26
    const-string v7, "serial"

    move-object/from16 v0, v190

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a2d
    .catch Ljava/lang/Throwable; {:try_start_a26 .. :try_end_a2d} :catch_14e4

    move-object/from16 v189, v190

    .line 1192
    .end local v190    # "serial":Lcom/android/server/SerialService;
    .restart local v189    # "serial":Lcom/android/server/SerialService;
    :cond_a2f
    :goto_a2f
    :try_start_a2f
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v210, Lcom/android/server/TwilightService;

    move-object/from16 v0, v210

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_a3d
    .catch Ljava/lang/Throwable; {:try_start_a2f .. :try_end_a3d} :catch_12b6

    .end local v209    # "twilight":Lcom/android/server/TwilightService;
    .local v210, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v209, v210

    .line 1199
    .end local v210    # "twilight":Lcom/android/server/TwilightService;
    .restart local v209    # "twilight":Lcom/android/server/TwilightService;
    :goto_a3f
    :try_start_a3f
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    new-instance v212, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v212

    move-object/from16 v1, v209

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_a4f
    .catch Ljava/lang/Throwable; {:try_start_a3f .. :try_end_a4f} :catch_12c3

    .end local v211    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v212, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v211, v212

    .line 1207
    .end local v212    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v211    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_a51
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a6e

    .line 1210
    :try_start_a5d
    const-string v7, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const-string v7, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a6e
    .catch Ljava/lang/Throwable; {:try_start_a5d .. :try_end_a6e} :catch_12d0

    .line 1218
    :cond_a6e
    :goto_a6e
    if-nez v114, :cond_aa8

    .line 1220
    :try_start_a70
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a81
    .catch Ljava/lang/Throwable; {:try_start_a70 .. :try_end_a81} :catch_12dc

    .line 1228
    :goto_a81
    :try_start_a81
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    new-instance v74, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_a8f
    .catch Ljava/lang/Throwable; {:try_start_a81 .. :try_end_a8f} :catch_12e8

    .line 1230
    .end local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v74, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_a8f
    const-string v7, "appwidget"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a96
    .catch Ljava/lang/Throwable; {:try_start_a8f .. :try_end_a96} :catch_14df

    move-object/from16 v73, v74

    .line 1236
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_a98
    :try_start_a98
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    new-instance v184, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v184

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_aa6
    .catch Ljava/lang/Throwable; {:try_start_a98 .. :try_end_aa6} :catch_12f5

    .end local v183    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v184, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v183, v184

    .line 1242
    .end local v184    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v183    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_aa8
    :goto_aa8
    const-string v7, "ro.SecEDS.enable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1244
    .local v69, "SecEDSEnable":Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const-string v7, "false"

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_aea

    .line 1252
    :try_start_ad2
    const-string v7, "SystemServer"

    const-string v9, "Starting SecEDSEnable Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/16 v126, 0x0

    .line 1256
    .local v126, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "com.android.server.SecExternalDisplayService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v126

    .line 1258
    if-nez v126, :cond_1302

    .line 1260
    const-string v7, "SystemServer"

    const-string v9, "eds Service not exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aea
    .catch Ljava/lang/Throwable; {:try_start_ad2 .. :try_end_aea} :catch_1330

    .line 1287
    .end local v126    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_aea
    :goto_aea
    :try_start_aea
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_afb
    .catch Ljava/lang/Throwable; {:try_start_aea .. :try_end_afb} :catch_133c

    .line 1294
    :goto_afb
    :try_start_afb
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v170

    .line 1295
    .local v170, "pM":Landroid/content/pm/PackageManager;
    if-eqz v170, :cond_b31

    .line 1296
    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v170

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x2

    if-eq v7, v9, :cond_b1d

    const-string v7, "com.sec.feature.multiwindow"

    move-object/from16 v0, v170

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b31

    .line 1299
    :cond_b1d
    const-string v7, "SystemServer"

    const-string v9, "Spen USP Level 2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const-string/jumbo v7, "spengestureservice"

    new-instance v9, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v226

    invoke-direct {v9, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b31
    .catch Ljava/lang/Throwable; {:try_start_afb .. :try_end_b31} :catch_1349

    .line 1327
    .end local v170    # "pM":Landroid/content/pm/PackageManager;
    :cond_b31
    :goto_b31
    :try_start_b31
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v171

    .line 1328
    .local v171, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v171, :cond_b55

    .line 1329
    const-string v7, "com.sec.feature.lotus"

    move-object/from16 v0, v171

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_b55

    .line 1330
    const-string v7, "SystemServer"

    const-string v9, "GlanceCard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const-string v7, "glancecardservice"

    new-instance v9, Lcom/android/server/glancecard/GlanceCardManagerService;

    move-object/from16 v0, v226

    invoke-direct {v9, v5, v0}, Lcom/android/server/glancecard/GlanceCardManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b55
    .catch Ljava/lang/Throwable; {:try_start_b31 .. :try_end_b55} :catch_1356

    .line 1343
    .end local v171    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_b55
    :goto_b55
    :try_start_b55
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b66
    .catch Ljava/lang/Throwable; {:try_start_b55 .. :try_end_b66} :catch_1363

    .line 1350
    :goto_b66
    if-nez v113, :cond_b78

    .line 1352
    :try_start_b68
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    new-instance v167, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v167

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_b76
    .catch Ljava/lang/Throwable; {:try_start_b68 .. :try_end_b76} :catch_1370

    .end local v166    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v167, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v166, v167

    .line 1385
    .end local v167    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v166    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_b78
    :goto_b78
    if-nez v112, :cond_b91

    .line 1387
    :try_start_b7a
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    new-instance v90, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v90

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_b88
    .catch Ljava/lang/Throwable; {:try_start_b7a .. :try_end_b88} :catch_137d

    .line 1389
    .end local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v90, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_b88
    const-string v7, "commontime_management"

    move-object/from16 v0, v90

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b8f
    .catch Ljava/lang/Throwable; {:try_start_b88 .. :try_end_b8f} :catch_14da

    move-object/from16 v89, v90

    .line 1395
    .end local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_b91
    :goto_b91
    if-nez v113, :cond_b9f

    .line 1397
    :try_start_b93
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_b9f
    .catch Ljava/lang/Throwable; {:try_start_b93 .. :try_end_b9f} :catch_138a

    .line 1404
    :cond_b9f
    :goto_b9f
    if-nez v114, :cond_bc7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111004c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_bc7

    .line 1407
    :try_start_bae
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    new-instance v124, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v124

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_bbe
    .catch Ljava/lang/Throwable; {:try_start_bae .. :try_end_bbe} :catch_1397

    .line 1410
    .end local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v124, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_bbe
    const-string v7, "dreams"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_bc5
    .catch Ljava/lang/Throwable; {:try_start_bbe .. :try_end_bc5} :catch_14d5

    move-object/from16 v123, v124

    .line 1416
    .end local v124    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_bc7
    :goto_bc7
    if-nez v114, :cond_be0

    .line 1418
    :try_start_bc9
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    new-instance v77, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_bd7
    .catch Ljava/lang/Throwable; {:try_start_bc9 .. :try_end_bd7} :catch_13a4

    .line 1420
    .end local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v77, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_bd7
    const-string v7, "assetatlas"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_bde
    .catch Ljava/lang/Throwable; {:try_start_bd7 .. :try_end_bde} :catch_14d0

    move-object/from16 v76, v77

    .line 1427
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_be0
    :goto_be0
    :try_start_be0
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_bec
    .catch Ljava/lang/Throwable; {:try_start_be0 .. :try_end_bec} :catch_13b1

    .line 1435
    :goto_bec
    const-string v7, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_ABSOLUTE_ENABLE=FALSE - true"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :try_start_bf3
    const-string v7, "SystemServer"

    const-string v9, "Absolute Persistence Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const-string v7, "ABTPersistenceService"

    new-instance v9, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c04
    .catch Ljava/lang/Throwable; {:try_start_bf3 .. :try_end_c04} :catch_13be

    .line 1447
    :goto_c04
    :try_start_c04
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    new-instance v178, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v178

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c12
    .catch Ljava/lang/Throwable; {:try_start_c04 .. :try_end_c12} :catch_13ca

    .line 1449
    .end local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v178, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_c12
    const-string v7, "print"

    move-object/from16 v0, v178

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c19
    .catch Ljava/lang/Throwable; {:try_start_c12 .. :try_end_c19} :catch_14cb

    move-object/from16 v177, v178

    .line 1454
    .end local v178    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_c1b
    if-nez v114, :cond_c34

    .line 1456
    :try_start_c1d
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    new-instance v153, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v153

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_c2b
    .catch Ljava/lang/Throwable; {:try_start_c1d .. :try_end_c2b} :catch_13d7

    .line 1458
    .end local v152    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v153, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_c2b
    const-string v7, "media_router"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c32
    .catch Ljava/lang/Throwable; {:try_start_c2b .. :try_end_c32} :catch_14c6

    move-object/from16 v152, v153

    .line 1478
    .end local v153    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v152    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_c34
    :goto_c34
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v172

    .line 1479
    .local v172, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v7, "com.sec.feature.minimode"

    move-object/from16 v0, v172

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cfd

    .line 1481
    :try_start_c42
    const-string v7, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    const-string v155, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 1483
    .local v155, "minimodeFrameworkDexPath":Ljava/lang/String;
    const-string v157, "/data/dalvik-cache/minimode.dex"

    .line 1485
    .local v157, "minimodeGenDexPath":Ljava/lang/String;
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v155

    invoke-interface {v7, v0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v195

    .line 1486
    .local v195, "stat":Llibcore/io/StructStat;
    if-eqz v195, :cond_cc4

    .line 1487
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v155

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v157

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_cc4

    .line 1488
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v157

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v155

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    new-instance v156, Ljava/io/File;

    invoke-direct/range {v156 .. v157}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1490
    .local v156, "minimodeGenDexFile":Ljava/io/File;
    move-object/from16 v0, v195

    iget-wide v9, v0, Llibcore/io/StructStat;->st_mtime:J

    move-object/from16 v0, v156

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v7

    if-eqz v7, :cond_cc4

    .line 1491
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v157

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v195

    iget-wide v12, v0, Llibcore/io/StructStat;->st_mtime:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    .end local v156    # "minimodeGenDexFile":Ljava/io/File;
    :cond_cc4
    new-instance v84, Ldalvik/system/DexClassLoader;

    const-string v7, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, v84

    invoke-direct {v0, v7, v9, v10, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1498
    .local v84, "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v84

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v67

    .line 1499
    .local v67, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v67

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 1500
    .local v68, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v68

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cfd
    .catch Ljava/lang/Throwable; {:try_start_c42 .. :try_end_cfd} :catch_13e4

    .line 1509
    .end local v67    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v68    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v84    # "cl":Ljava/lang/ClassLoader;
    .end local v155    # "minimodeFrameworkDexPath":Ljava/lang/String;
    .end local v157    # "minimodeGenDexPath":Ljava/lang/String;
    .end local v195    # "stat":Llibcore/io/StructStat;
    :cond_cfd
    :goto_cfd
    const-string v7, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v172

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d1c

    .line 1511
    :try_start_d07
    const-string v7, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    new-instance v78, Landroid/app/BarBeamService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1514
    .local v78, "barbeam":Landroid/app/BarBeamService;
    const-string v7, "barbeam"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d1c
    .catch Ljava/lang/Throwable; {:try_start_d07 .. :try_end_d1c} :catch_13f0

    .line 1522
    .end local v78    # "barbeam":Landroid/app/BarBeamService;
    :cond_d1c
    :goto_d1c
    :try_start_d1c
    const-string v7, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const-string v7, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v5}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d2d
    .catch Ljava/lang/Throwable; {:try_start_d1c .. :try_end_d2d} :catch_13fc

    .line 1530
    :goto_d2d
    :try_start_d2d
    const-string v7, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const-string/jumbo v7, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d3f
    .catch Ljava/lang/Throwable; {:try_start_d2d .. :try_end_d3f} :catch_1408

    .line 1538
    :goto_d3f
    const-string v7, "com.sec.feature.cover.flip"

    move-object/from16 v0, v172

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d53

    const-string v7, "com.sec.feature.cover.sview"

    move-object/from16 v0, v172

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d68

    .line 1541
    :cond_d53
    :try_start_d53
    const-string v7, "SystemServer"

    const-string v9, "CoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    new-instance v103, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v103

    invoke-direct {v0, v5}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;)V

    .line 1543
    .local v103, "cover":Lcom/android/server/cover/CoverManagerService;
    const-string v7, "cover"

    move-object/from16 v0, v103

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d68
    .catch Ljava/lang/Throwable; {:try_start_d53 .. :try_end_d68} :catch_1412

    .line 1552
    .end local v103    # "cover":Lcom/android/server/cover/CoverManagerService;
    :cond_d68
    :goto_d68
    :try_start_d68
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v170

    .line 1553
    .restart local v170    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v170, :cond_dbf

    .line 1555
    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const-string v7, "com.sec.feature.healthcover"

    move-object/from16 v0, v170

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_dbf

    .line 1557
    const-string v7, "SystemServer"

    const-string v9, "HealthCoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    new-instance v136, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/healthcoverservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v136

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1559
    .local v136, "hcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.samsung.android.healthcover.HealthCoverService"

    move-object/from16 v0, v136

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v135

    .line 1560
    .local v135, "hcClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v135

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v137

    .line 1561
    .local v137, "hcConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v137

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/os/IBinder;

    .line 1562
    .local v138, "hcService":Landroid/os/IBinder;
    const-string v7, "healthcover"

    move-object/from16 v0, v138

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_dbf
    .catch Ljava/lang/Exception; {:try_start_d68 .. :try_end_dbf} :catch_141e

    .line 1576
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v135    # "hcClass":Ljava/lang/Class;
    .end local v136    # "hcClassLoader":Ldalvik/system/PathClassLoader;
    .end local v137    # "hcConstructor":Ljava/lang/reflect/Constructor;
    .end local v138    # "hcService":Landroid/os/IBinder;
    .end local v170    # "pM":Landroid/content/pm/PackageManager;
    .end local v172    # "packageMgr":Landroid/content/pm/PackageManager;
    :cond_dbf
    :goto_dbf
    :try_start_dbf
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v84

    .line 1577
    .restart local v84    # "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.android.smartface.SmartFaceManager"

    const/4 v9, 0x1

    move-object/from16 v0, v84

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v85

    .line 1578
    .local v85, "class_SmartFaceManager":Ljava/lang/Class;
    const-string v7, "SMARTFACE_SERVICE"

    move-object/from16 v0, v85

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v131

    .line 1580
    .local v131, "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    const-string v7, "com.sec.android.smartface.SmartFaceService"

    const/4 v9, 0x1

    move-object/from16 v0, v84

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v86

    .line 1581
    .local v86, "class_SmartFaceService":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v86

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v95

    .line 1583
    .local v95, "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    move-object/from16 v0, v131

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v95

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1584
    const-string v7, "SystemServer"

    const-string v9, "SmartFaceService loaded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0c
    .catch Ljava/lang/Exception; {:try_start_dbf .. :try_end_e0c} :catch_142a

    .line 1616
    .end local v84    # "cl":Ljava/lang/ClassLoader;
    .end local v85    # "class_SmartFaceManager":Ljava/lang/Class;
    .end local v86    # "class_SmartFaceService":Ljava/lang/Class;
    .end local v95    # "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    .end local v131    # "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    :goto_e0c
    const-string v7, "SystemServer"

    const-string v9, "Window Manager detectSafeMode"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-virtual/range {v226 .. v226}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1618
    .local v47, "safeMode":Z
    if-eqz v47, :cond_1436

    .line 1619
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1621
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1623
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1632
    :goto_e2a
    :try_start_e2a
    const-string v7, "SystemServer"

    const-string/jumbo v9, "vibrator systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    invoke-virtual/range {v216 .. v216}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_e35
    .catch Ljava/lang/Throwable; {:try_start_e2a .. :try_end_e35} :catch_143f

    .line 1638
    :goto_e35
    if-eqz v148, :cond_e41

    .line 1640
    :try_start_e37
    const-string v7, "SystemServer"

    const-string v9, "lockSettings systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-virtual/range {v148 .. v148}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_e41
    .catch Ljava/lang/Throwable; {:try_start_e37 .. :try_end_e41} :catch_144b

    .line 1647
    :cond_e41
    :goto_e41
    if-eqz v108, :cond_e4d

    .line 1649
    :try_start_e43
    const-string v7, "SystemServer"

    const-string v9, "devicePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_e4d
    .catch Ljava/lang/Throwable; {:try_start_e43 .. :try_end_e4d} :catch_1457

    .line 1658
    :cond_e4d
    :goto_e4d
    if-eqz v127, :cond_e59

    .line 1659
    invoke-virtual/range {v127 .. v127}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1660
    const-string v7, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_e59
    if-eqz v168, :cond_e65

    .line 1666
    :try_start_e5b
    const-string v7, "SystemServer"

    const-string v9, "notification systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    invoke-virtual/range {v168 .. v168}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_e65
    .catch Ljava/lang/Throwable; {:try_start_e5b .. :try_end_e65} :catch_1463

    .line 1674
    :cond_e65
    :goto_e65
    :try_start_e65
    const-string v7, "SystemServer"

    const-string v9, "Window Manager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    invoke-virtual/range {v226 .. v226}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_e6f
    .catch Ljava/lang/Throwable; {:try_start_e65 .. :try_end_e6f} :catch_146f

    .line 1680
    :goto_e6f
    if-eqz v47, :cond_e7f

    .line 1681
    const-string v7, "SystemServer"

    const-string v9, "ActivityManager showSafeModeOverlay"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1688
    :cond_e7f
    invoke-virtual/range {v226 .. v226}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v91

    .line 1689
    .local v91, "config":Landroid/content/res/Configuration;
    new-instance v154, Landroid/util/DisplayMetrics;

    invoke-direct/range {v154 .. v154}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1690
    .local v154, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v218

    check-cast v218, Landroid/view/WindowManager;

    .line 1691
    .local v218, "w":Landroid/view/WindowManager;
    invoke-interface/range {v218 .. v218}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v154

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1692
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v91

    move-object/from16 v1, v154

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1695
    :try_start_ea5
    const-string v7, "SystemServer"

    const-string v9, "PowerManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    move-object/from16 v0, v209

    move-object/from16 v1, v123

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_eb3
    .catch Ljava/lang/Throwable; {:try_start_ea5 .. :try_end_eb3} :catch_147b

    .line 1703
    :goto_eb3
    :try_start_eb3
    const-string v7, "SystemServer"

    const-string v9, "LightsService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    invoke-virtual {v6}, Lcom/android/server/LightsService;->systemReady()V
    :try_end_ebd
    .catch Ljava/lang/Throwable; {:try_start_eb3 .. :try_end_ebd} :catch_1487

    .line 1711
    :goto_ebd
    :try_start_ebd
    const-string v7, "SystemServer"

    const-string v9, "AdaptiveDisplayColorService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/AdaptiveDisplayColorService;->systemReady()V
    :try_end_ec7
    .catch Ljava/lang/Throwable; {:try_start_ebd .. :try_end_ec7} :catch_1493

    .line 1718
    :goto_ec7
    :try_start_ec7
    const-string v7, "SystemServer"

    const-string v9, "PackageManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-interface/range {v174 .. v174}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_ed1
    .catch Ljava/lang/Throwable; {:try_start_ec7 .. :try_end_ed1} :catch_149f

    .line 1725
    :goto_ed1
    :try_start_ed1
    const-string v7, "SystemServer"

    const-string v9, "DisplayManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_edf
    .catch Ljava/lang/Throwable; {:try_start_ed1 .. :try_end_edf} :catch_14ab

    .line 1731
    :goto_edf
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v215

    .line 1732
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v215

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ef7

    .line 1734
    :try_start_ef4
    invoke-virtual/range {v173 .. v173}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_ef7
    .catch Ljava/lang/Throwable; {:try_start_ef4 .. :try_end_ef7} :catch_14b7

    .line 1741
    :cond_ef7
    :goto_ef7
    move-object/from16 v34, v5

    .line 1742
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v158

    .line 1743
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1744
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1745
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1746
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1747
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v92

    .line 1748
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v121

    .line 1749
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v213

    .line 1750
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v209

    .line 1751
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v211

    .line 1752
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v73

    .line 1753
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v219

    .line 1754
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v139

    .line 1755
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v183

    .line 1756
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v146

    .line 1757
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v187

    .line 1758
    .local v52, "secGeofenceF":Landroid/os/IBinder;
    move-object/from16 v53, v185

    .line 1759
    .local v53, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v54, v101

    .line 1760
    .local v54, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v55, v166

    .line 1761
    .local v55, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v56, v89

    .line 1762
    .local v56, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v57, v207

    .line 1763
    .local v57, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v196

    .line 1764
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v58, v123

    .line 1765
    .local v58, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v59, v76

    .line 1766
    .local v59, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v60, v20

    .line 1767
    .local v60, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v61, v199

    .line 1768
    .local v61, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v64, v162

    .line 1769
    .local v64, "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v65, v177

    .line 1770
    .local v65, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v66, v152

    .line 1773
    .local v66, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v63, v98

    .line 1781
    .local v63, "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v66}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;ZLcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1972
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_f52

    .line 1973
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_f52
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1979
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1981
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return-void

    .line 434
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "secGeofenceF":Landroid/os/IBinder;
    .end local v53    # "sLocationF":Landroid/os/IBinder;
    .end local v54    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v55    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v56    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v57    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v58    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v59    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v60    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v61    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v63    # "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v64    # "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    .end local v65    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v66    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v91    # "config":Landroid/content/res/Configuration;
    .end local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v146    # "location":Lcom/android/server/LocationManagerService;
    .end local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v152    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v154    # "metrics":Landroid/util/DisplayMetrics;
    .end local v168    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v185    # "sLocation":Landroid/os/IBinder;
    .end local v187    # "secGeofence":Landroid/os/IBinder;
    .end local v196    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .end local v218    # "w":Landroid/view/WindowManager;
    .end local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v104    # "cryptState":Ljava/lang/String;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v164    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_f68
    :try_start_f68
    const-string v7, "1"

    move-object/from16 v0, v104

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25b

    .line 435
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/16 v24, 0x1

    goto/16 :goto_25b

    .line 446
    .restart local v201    # "timaEnabled":Z
    :catch_f7d
    move-exception v125

    .line 447
    .local v125, "e":Ljava/lang/Throwable;
    :goto_f7e
    const-string/jumbo v7, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f88
    .catch Ljava/lang/RuntimeException; {:try_start_f68 .. :try_end_f88} :catch_f8a

    goto/16 :goto_283

    .line 684
    .end local v104    # "cryptState":Ljava/lang/String;
    .end local v125    # "e":Ljava/lang/Throwable;
    .end local v201    # "timaEnabled":Z
    :catch_f8a
    move-exception v125

    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v145

    .line 685
    .end local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v125, "e":Ljava/lang/RuntimeException;
    :goto_f93
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c0

    .line 454
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v125    # "e":Ljava/lang/RuntimeException;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v104    # "cryptState":Ljava/lang/String;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v201    # "timaEnabled":Z
    :catch_fa5
    move-exception v125

    .line 455
    .local v125, "e":Ljava/lang/Throwable;
    :try_start_fa6
    const-string/jumbo v7, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_293

    .line 467
    .end local v125    # "e":Ljava/lang/Throwable;
    :cond_fb2
    const/4 v7, 0x0

    goto/16 :goto_2bc

    .line 491
    .restart local v144    # "knoxVerInfo":Landroid/os/Bundle;
    :catch_fb5
    move-exception v125

    .line 492
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32b

    .line 513
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_fc1
    move-exception v125

    .line 514
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_fc2
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_371

    .line 522
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_fcd
    move-exception v125

    .line 523
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fd7
    .catch Ljava/lang/RuntimeException; {:try_start_fa6 .. :try_end_fd7} :catch_f8a

    goto/16 :goto_392

    .line 529
    .end local v125    # "e":Ljava/lang/Throwable;
    :cond_fd9
    const/4 v7, 0x0

    goto/16 :goto_39f

    .line 539
    .end local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v106    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_fdc
    move-exception v125

    .line 540
    .restart local v125    # "e":Ljava/lang/Throwable;
    :try_start_fdd
    const-string v7, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fe6
    .catch Ljava/lang/RuntimeException; {:try_start_fdd .. :try_end_fe6} :catch_158a

    .line 541
    const/16 v105, 0x0

    .end local v106    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_3b7

    .line 552
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_fea
    move-exception v125

    .line 553
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_feb
    :try_start_feb
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure starting Container Service"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v125 .. v125}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1007
    .catch Ljava/lang/RuntimeException; {:try_start_feb .. :try_end_1007} :catch_f8a

    goto/16 :goto_3d7

    .line 588
    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .end local v125    # "e":Ljava/lang/Throwable;
    .end local v145    # "lights":Lcom/android/server/LightsService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v82    # "cfmsClass":Ljava/lang/Class;
    .restart local v198    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :cond_1009
    :try_start_1009
    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_100e
    .catch Ljava/lang/Exception; {:try_start_1009 .. :try_end_100e} :catch_1011
    .catch Ljava/lang/RuntimeException; {:try_start_1009 .. :try_end_100e} :catch_101c

    move-result-object v82

    goto/16 :goto_452

    .line 593
    :catch_1011
    move-exception v125

    .line 594
    .local v125, "e":Ljava/lang/Exception;
    :try_start_1012
    const-string v7, "SystemServer"

    const-string/jumbo v9, "ssrm.jar not found"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101a
    .catch Ljava/lang/RuntimeException; {:try_start_1012 .. :try_end_101a} :catch_101c

    goto/16 :goto_481

    .line 684
    .end local v82    # "cfmsClass":Ljava/lang/Class;
    .end local v125    # "e":Ljava/lang/Exception;
    :catch_101c
    move-exception v125

    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_f93

    .line 632
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v82    # "cfmsClass":Ljava/lang/Class;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :cond_1025
    const/16 v22, 0x0

    goto/16 :goto_538

    :cond_1029
    const/16 v23, 0x0

    goto/16 :goto_53c

    .line 654
    :cond_102d
    const/4 v7, 0x1

    move/from16 v0, v129

    if-ne v0, v7, :cond_1044

    .line 655
    :try_start_1032
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_592

    .line 684
    :catch_103b
    move-exception v125

    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_f93

    .line 656
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :cond_1044
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1059

    .line 658
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_592

    .line 659
    :cond_1059
    if-eqz v110, :cond_1064

    .line 660
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_592

    .line 662
    :cond_1064
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v81, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v81

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1072
    .catch Ljava/lang/RuntimeException; {:try_start_1032 .. :try_end_1072} :catch_103b

    .line 664
    .end local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v81, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_1072
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v81

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 667
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Secure Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v7, "bluetooth_secure_mode_manager"

    new-instance v9, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v9, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_108a
    .catch Ljava/lang/RuntimeException; {:try_start_1072 .. :try_end_108a} :catch_15d7

    move-object/from16 v80, v81

    .end local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_592

    .line 679
    :catch_108e
    move-exception v125

    .line 680
    .local v125, "e":Ljava/lang/Throwable;
    :goto_108f
    :try_start_108f
    const-string v7, "SystemServer"

    const-string v9, "Failure starting RCP Manager Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1098
    .catch Ljava/lang/RuntimeException; {:try_start_108f .. :try_end_1098} :catch_103b

    goto/16 :goto_5ba

    .line 717
    .end local v82    # "cfmsClass":Ljava/lang/Class;
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v104    # "cryptState":Ljava/lang/String;
    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v125    # "e":Ljava/lang/Throwable;
    .end local v144    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v198    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v201    # "timaEnabled":Z
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v146    # "location":Lcom/android/server/LocationManagerService;
    .restart local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v152    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v168    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v185    # "sLocation":Landroid/os/IBinder;
    .restart local v187    # "secGeofence":Landroid/os/IBinder;
    .restart local v196    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_109a
    move-exception v125

    .line 718
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_109b
    const-string/jumbo v7, "starting Input MethodManager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_600

    .line 725
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_10a7
    move-exception v125

    .line 726
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_611

    .line 734
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_10b4
    move-exception v125

    .line 735
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61b

    .line 741
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_10c0
    move-exception v125

    .line 742
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_625

    .line 758
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_10cc
    move-exception v125

    .line 759
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Containerservice preSystemReady ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_646

    .line 769
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_10d8
    move-exception v125

    .line 770
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_10d9
    const-string/jumbo v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_662

    .line 783
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_10e5
    move-exception v125

    .line 784
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_10e6
    const-string/jumbo v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68a

    .line 795
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_10f2
    move-exception v125

    .line 796
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69d

    .line 805
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_10ff
    move-exception v125

    .line 806
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_1100
    const-string/jumbo v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b6

    .line 822
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_110c
    move-exception v125

    .line 823
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "Unable to call PMS preSystemReady method"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6ce

    .line 834
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1118
    move-exception v125

    .line 835
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_1119
    const-string v7, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6f3

    .line 846
    .end local v125    # "e":Ljava/lang/Throwable;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_1124
    move-exception v125

    .line 847
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_1125
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Harmony EAS service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_711

    .line 856
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1130
    move-exception v125

    .line 857
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_1131
    const-string/jumbo v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_72d

    .line 866
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_113d
    move-exception v125

    .line 867
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_740

    .line 879
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_114a
    move-exception v125

    .line 880
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_751

    .line 888
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1156
    move-exception v125

    .line 889
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_765

    .line 898
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1163
    move-exception v125

    .line 899
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_1164
    const-string/jumbo v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_77f

    .line 908
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1170
    move-exception v125

    .line 909
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_1171
    const-string/jumbo v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_79c

    .line 918
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_117d
    move-exception v125

    move-object/from16 v25, v164

    .line 919
    .end local v164    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_1180
    const-string/jumbo v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7b7

    .line 926
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_118c
    move-exception v125

    .line 927
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_118d
    const-string/jumbo v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7cf

    .line 934
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1199
    move-exception v125

    .line 935
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_119a
    const-string/jumbo v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7e7

    .line 943
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_11a6
    move-exception v125

    .line 944
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_11a7
    const-string/jumbo v7, "starting MSAP Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7fe

    .line 958
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_11b3
    move-exception v125

    .line 959
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_11b4
    const-string/jumbo v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_82f

    .line 1010
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_11c0
    move-exception v125

    .line 1011
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_841

    .line 1020
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_11cd
    move-exception v125

    .line 1021
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_855

    .line 1041
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_11da
    move-exception v125

    .line 1042
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_87a

    .line 1050
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_11e6
    move-exception v125

    .line 1051
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_886

    .line 1059
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_11f2
    move-exception v125

    .line 1060
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_11f3
    const-string/jumbo v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8a6

    .line 1067
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_11ff
    move-exception v125

    .line 1068
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8b7

    .line 1076
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_120c
    move-exception v125

    .line 1077
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_120d
    const-string/jumbo v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8d0

    .line 1084
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1219
    move-exception v125

    .line 1085
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_121a
    const-string/jumbo v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e7

    .line 1096
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1226
    move-exception v125

    .line 1097
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Loading SecGeofence has been failed, error or not support"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_924

    .line 1106
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1230
    move-exception v125

    .line 1107
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v125 .. v125}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_961

    .line 1115
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_124f
    move-exception v125

    .line 1116
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_974

    .line 1124
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_125c
    move-exception v125

    .line 1125
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_98c

    .line 1136
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1269
    move-exception v125

    .line 1137
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_126a
    const-string/jumbo v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b5

    .line 1145
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1276
    move-exception v125

    .line 1146
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9d7

    .line 1155
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1283
    move-exception v125

    .line 1156
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9e9

    .line 1166
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1290
    move-exception v125

    .line 1167
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9fe

    .line 1177
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_129d
    move-exception v125

    .line 1178
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_129e
    const-string/jumbo v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a18

    .line 1186
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_12aa
    move-exception v125

    .line 1187
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_12ab
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a2f

    .line 1194
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_12b6
    move-exception v125

    .line 1195
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a3f

    .line 1202
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_12c3
    move-exception v125

    .line 1203
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a51

    .line 1212
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_12d0
    move-exception v125

    .line 1213
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a6e

    .line 1223
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_12dc
    move-exception v125

    .line 1224
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a81

    .line 1231
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_12e8
    move-exception v125

    .line 1232
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_12e9
    const-string/jumbo v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a98

    .line 1238
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_12f5
    move-exception v125

    .line 1239
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_aa8

    .line 1268
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v69    # "SecEDSEnable":Ljava/lang/String;
    .restart local v126    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1302
    :try_start_1302
    const-string v7, "SystemServer"

    const-string v9, "edsclass Service exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v75, v0

    .line 1272
    .local v75, "arg":[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v75, v7

    .line 1274
    move-object/from16 v0, v126

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v94

    .line 1276
    .local v94, "constructor":Ljava/lang/reflect/Constructor;
    const-string v9, "SecExternalDisplayService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v94

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_132e
    .catch Ljava/lang/Throwable; {:try_start_1302 .. :try_end_132e} :catch_1330

    goto/16 :goto_aea

    .line 1279
    .end local v75    # "arg":[Ljava/lang/Class;
    .end local v94    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v126    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1330
    move-exception v125

    .line 1281
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting eds Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_aea

    .line 1289
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_133c
    move-exception v125

    .line 1290
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_afb

    .line 1303
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1349
    move-exception v125

    .line 1304
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting SpenGestureManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b31

    .line 1334
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1356
    move-exception v125

    .line 1335
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting GlanceCardManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b55

    .line 1346
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1363
    move-exception v125

    .line 1347
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b66

    .line 1354
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1370
    move-exception v125

    .line 1355
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b78

    .line 1390
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_137d
    move-exception v125

    .line 1391
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_137e
    const-string/jumbo v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b91

    .line 1399
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_138a
    move-exception v125

    .line 1400
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b9f

    .line 1411
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1397
    move-exception v125

    .line 1412
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_1398
    const-string/jumbo v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bc7

    .line 1421
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_13a4
    move-exception v125

    .line 1422
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_13a5
    const-string/jumbo v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_be0

    .line 1429
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_13b1
    move-exception v125

    .line 1430
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bec

    .line 1441
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_13be
    move-exception v125

    .line 1442
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c04

    .line 1450
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_13ca
    move-exception v125

    .line 1451
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_13cb
    const-string/jumbo v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c1b

    .line 1459
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_13d7
    move-exception v125

    .line 1460
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_13d8
    const-string/jumbo v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c34

    .line 1502
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v172    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_13e4
    move-exception v125

    .line 1503
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cfd

    .line 1515
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_13f0
    move-exception v125

    .line 1516
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d1c

    .line 1524
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_13fc
    move-exception v125

    .line 1525
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d2d

    .line 1532
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1408
    move-exception v125

    .line 1533
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d3f

    .line 1544
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1412
    move-exception v125

    .line 1545
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting CoverManager Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d68

    .line 1565
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_141e
    move-exception v125

    .line 1566
    .local v125, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting HealthCoverService"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_dbf

    .line 1585
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v125    # "e":Ljava/lang/Exception;
    .end local v172    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_142a
    move-exception v125

    .line 1586
    .restart local v125    # "e":Ljava/lang/Exception;
    const-string v7, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e0c

    .line 1626
    .end local v125    # "e":Ljava/lang/Exception;
    .restart local v47    # "safeMode":Z
    :cond_1436
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_e2a

    .line 1634
    :catch_143f
    move-exception v125

    .line 1635
    .local v125, "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e35

    .line 1642
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_144b
    move-exception v125

    .line 1643
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e41

    .line 1651
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1457
    move-exception v125

    .line 1652
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e4d

    .line 1668
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1463
    move-exception v125

    .line 1669
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e65

    .line 1676
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_146f
    move-exception v125

    .line 1677
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e6f

    .line 1697
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v91    # "config":Landroid/content/res/Configuration;
    .restart local v154    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v218    # "w":Landroid/view/WindowManager;
    :catch_147b
    move-exception v125

    .line 1698
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_eb3

    .line 1705
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1487
    move-exception v125

    .line 1706
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ebd

    .line 1713
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1493
    move-exception v125

    .line 1714
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Adaptive Display Color Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ec7

    .line 1720
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_149f
    move-exception v125

    .line 1721
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ed1

    .line 1727
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_14ab
    move-exception v125

    .line 1728
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_edf

    .line 1735
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_14b7
    move-exception v125

    .line 1736
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ef7

    .line 473
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v91    # "config":Landroid/content/res/Configuration;
    .end local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v125    # "e":Ljava/lang/Throwable;
    .end local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v146    # "location":Lcom/android/server/LocationManagerService;
    .end local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v152    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v154    # "metrics":Landroid/util/DisplayMetrics;
    .end local v168    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v185    # "sLocation":Landroid/os/IBinder;
    .end local v187    # "secGeofence":Landroid/os/IBinder;
    .end local v196    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .end local v218    # "w":Landroid/view/WindowManager;
    .end local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v104    # "cryptState":Ljava/lang/String;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v164    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v201    # "timaEnabled":Z
    :catch_14c3
    move-exception v7

    goto/16 :goto_2cf

    .line 1459
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .end local v104    # "cryptState":Ljava/lang/String;
    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v145    # "lights":Lcom/android/server/LightsService;
    .end local v164    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v201    # "timaEnabled":Z
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v69    # "SecEDSEnable":Ljava/lang/String;
    .restart local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v146    # "location":Lcom/android/server/LocationManagerService;
    .restart local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v153    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v168    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v185    # "sLocation":Landroid/os/IBinder;
    .restart local v187    # "secGeofence":Landroid/os/IBinder;
    .restart local v196    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_14c6
    move-exception v125

    move-object/from16 v152, v153

    .end local v153    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v152    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_13d8

    .line 1450
    .end local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v178    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_14cb
    move-exception v125

    move-object/from16 v177, v178

    .end local v178    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_13cb

    .line 1421
    .end local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_14d0
    move-exception v125

    move-object/from16 v76, v77

    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_13a5

    .line 1411
    .end local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v124    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_14d5
    move-exception v125

    move-object/from16 v123, v124

    .end local v124    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_1398

    .line 1390
    .end local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_14da
    move-exception v125

    move-object/from16 v89, v90

    .end local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_137e

    .line 1231
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_14df
    move-exception v125

    move-object/from16 v73, v74

    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_12e9

    .line 1186
    .end local v189    # "serial":Lcom/android/server/SerialService;
    .restart local v190    # "serial":Lcom/android/server/SerialService;
    :catch_14e4
    move-exception v125

    move-object/from16 v189, v190

    .end local v190    # "serial":Lcom/android/server/SerialService;
    .restart local v189    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_12ab

    .line 1177
    .end local v213    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v214    # "usb":Lcom/android/server/usb/UsbService;
    :catch_14e9
    move-exception v125

    move-object/from16 v213, v214

    .end local v214    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v213    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_129e

    .line 1136
    .end local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v220    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_14ee
    move-exception v125

    move-object/from16 v219, v220

    .end local v220    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_126a

    .line 1084
    .end local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_14f3
    move-exception v125

    move-object/from16 v101, v102

    .end local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_121a

    .line 1076
    .end local v146    # "location":Lcom/android/server/LocationManagerService;
    .restart local v147    # "location":Lcom/android/server/LocationManagerService;
    :catch_14f8
    move-exception v125

    move-object/from16 v146, v147

    .end local v147    # "location":Lcom/android/server/LocationManagerService;
    .restart local v146    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_120d

    .line 1059
    .end local v168    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v169    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_14fd
    move-exception v125

    move-object/from16 v168, v169

    .end local v169    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v168    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_11f3

    .line 958
    .end local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_1502
    move-exception v125

    move-object/from16 v92, v93

    .end local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_11b4

    .line 943
    .end local v160    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v161    # "msapwifi":Lcom/android/server/MsapWifiService;
    :catch_1507
    move-exception v125

    move-object/from16 v160, v161

    .end local v161    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v160    # "msapwifi":Lcom/android/server/MsapWifiService;
    goto/16 :goto_11a7

    .line 934
    .end local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v222    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_150c
    move-exception v125

    move-object/from16 v221, v222

    .end local v222    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_119a

    .line 926
    .end local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v225    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_1511
    move-exception v125

    move-object/from16 v224, v225

    .end local v225    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_118d

    .line 918
    :catch_1516
    move-exception v125

    goto/16 :goto_1180

    .line 908
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v164    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v165    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_1519
    move-exception v125

    move-object/from16 v29, v165

    .end local v165    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_1171

    .line 898
    .end local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v208    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_151e
    move-exception v125

    move-object/from16 v207, v208

    .end local v208    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_1164

    .line 856
    .end local v196    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v197    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_1523
    move-exception v125

    move-object/from16 v196, v197

    .end local v197    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v196    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_1131

    .line 846
    .end local v150    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v151    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_1528
    move-exception v125

    move-object/from16 v150, v151

    .end local v151    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v150    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_1125

    .line 834
    .end local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v128    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_152d
    move-exception v125

    move-object/from16 v127, v128

    .end local v128    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_1119

    .line 805
    .end local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .restart local v149    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_1532
    move-exception v125

    move-object/from16 v148, v149

    .end local v149    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_1100

    .line 783
    .end local v158    # "mountService":Lcom/android/server/MountService;
    .restart local v159    # "mountService":Lcom/android/server/MountService;
    :catch_1537
    move-exception v125

    move-object/from16 v158, v159

    .end local v159    # "mountService":Lcom/android/server/MountService;
    .restart local v158    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_10e6

    .line 769
    .end local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v109    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_153c
    move-exception v125

    move-object/from16 v108, v109

    .end local v109    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_10d9

    .line 751
    :catch_1541
    move-exception v7

    goto/16 :goto_63f

    .line 717
    .end local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_1544
    move-exception v125

    move-object/from16 v139, v140

    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_109b

    .line 684
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v146    # "location":Lcom/android/server/LocationManagerService;
    .end local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v152    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v168    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v185    # "sLocation":Landroid/os/IBinder;
    .end local v187    # "secGeofence":Landroid/os/IBinder;
    .end local v196    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    :catch_1549
    move-exception v125

    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v118

    .end local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v145

    .end local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_f93

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v199    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v200    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_1556
    move-exception v125

    move-object/from16 v199, v200

    .end local v200    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v199    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v145

    .end local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_f93

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v162    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v163    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :catch_1563
    move-exception v125

    move-object/from16 v162, v163

    .end local v163    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v162    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v145

    .end local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_f93

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v204    # "timaService":Lcom/android/server/TimaService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v104    # "cryptState":Ljava/lang/String;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v201    # "timaEnabled":Z
    .restart local v205    # "timaService":Lcom/android/server/TimaService;
    :catch_1570
    move-exception v125

    move-object/from16 v204, v205

    .end local v205    # "timaService":Lcom/android/server/TimaService;
    .restart local v204    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v145

    .end local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_f93

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "knoxVerInfo":Landroid/os/Bundle;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_157d
    move-exception v125

    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v145

    .end local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v70, v71

    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_f93

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    :catch_158a
    move-exception v125

    move-object/from16 v105, v106

    .end local v106    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v145

    .end local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_f93

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    :catch_1597
    move-exception v125

    move-object/from16 v98, v99

    .end local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v145

    .end local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_f93

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catch_15a4
    move-exception v125

    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_f93

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catch_15ad
    move-exception v125

    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_f93

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v82    # "cfmsClass":Ljava/lang/Class;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v198    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_15b4
    move-exception v125

    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_f93

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_15bf
    move-exception v125

    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_f93

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_15cc
    move-exception v125

    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v20, v141

    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_f93

    .end local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_15d7
    move-exception v125

    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v80, v81

    .end local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_f93

    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v180    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_15e2
    move-exception v125

    move-object/from16 v179, v180

    .end local v180    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_f93

    .line 679
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v180    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_15ed
    move-exception v125

    move-object/from16 v179, v180

    .end local v180    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_108f

    .line 552
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "cfmsClass":Ljava/lang/Class;
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v198    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    :catch_15f2
    move-exception v125

    move-object/from16 v98, v99

    .end local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    goto/16 :goto_feb

    .line 513
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :catch_15f7
    move-exception v125

    move-object/from16 v70, v71

    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_fc2

    .line 446
    .end local v144    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v204    # "timaService":Lcom/android/server/TimaService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .restart local v205    # "timaService":Lcom/android/server/TimaService;
    :catch_15fc
    move-exception v125

    move-object/from16 v204, v205

    .end local v205    # "timaService":Lcom/android/server/TimaService;
    .restart local v204    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_f7e

    .line 381
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v104    # "cryptState":Ljava/lang/String;
    .end local v110    # "disableBluetooth":Z
    .end local v111    # "disableLocation":Z
    .end local v112    # "disableMedia":Z
    .end local v113    # "disableNetwork":Z
    .end local v114    # "disableNonCoreServices":Z
    .end local v115    # "disableStorage":Z
    .end local v116    # "disableSystemUI":Z
    .end local v117    # "disableTelephony":Z
    .end local v142    # "installer":Lcom/android/server/pm/Installer;
    .end local v201    # "timaEnabled":Z
    .restart local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v143    # "installer":Lcom/android/server/pm/Installer;
    :catch_1601
    move-exception v125

    move-object/from16 v142, v143

    .end local v143    # "installer":Lcom/android/server/pm/Installer;
    .restart local v142    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_1ce

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v142    # "installer":Lcom/android/server/pm/Installer;
    .restart local v143    # "installer":Lcom/android/server/pm/Installer;
    .restart local v175    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_1606
    move-exception v125

    move-object/from16 v4, v175

    .end local v175    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v142, v143

    .end local v143    # "installer":Lcom/android/server/pm/Installer;
    .restart local v142    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_1ce

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .end local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v141    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v145    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v110    # "disableBluetooth":Z
    .restart local v111    # "disableLocation":Z
    .restart local v112    # "disableMedia":Z
    .restart local v113    # "disableNetwork":Z
    .restart local v114    # "disableNonCoreServices":Z
    .restart local v115    # "disableStorage":Z
    .restart local v116    # "disableSystemUI":Z
    .restart local v117    # "disableTelephony":Z
    .restart local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v146    # "location":Lcom/android/server/LocationManagerService;
    .restart local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v152    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v168    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v185    # "sLocation":Landroid/os/IBinder;
    .restart local v187    # "secGeofence":Landroid/os/IBinder;
    .restart local v196    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_160d
    move-object/from16 v25, v164

    .end local v164    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_841

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v164    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_1611
    move-object/from16 v25, v164

    .end local v164    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_dbf
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 208
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    return-void
.end method
