.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
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
    .line 181
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1892
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1894
    :try_start_c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1895
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1898
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1900
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1901
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.secretmode.service"

    const-string v4, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1904
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_38} :catch_39

    .line 1910
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_38
    :goto_38
    return-void

    .line 1906
    :catch_39
    move-exception v0

    .line 1907
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

    goto :goto_38
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1879
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1880
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1881
    .local v2, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "personal_mode_enabled"

    const/4 v6, 0x0

    iget v7, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v7}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_10

    .line 1884
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_2d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1885
    .local v1, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.SystemUIService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1888
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1889
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 184
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
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

    .line 186
    return-void
.end method

.method public run()V
    .registers 215

    .prologue
    .line 190
    const-string v7, "SystemServer"

    const-string v9, "!@Begin SystemServer Thread"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 194
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 196
    const/16 v7, -0x13

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 199
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 200
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 204
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v169

    .line 206
    .local v169, "shutdownAction":Ljava/lang/String;
    if-eqz v169, :cond_56

    invoke-virtual/range {v169 .. v169}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_56

    .line 207
    const/4 v7, 0x0

    move-object/from16 v0, v169

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_188

    const/16 v162, 0x1

    .line 210
    .local v162, "reboot":Z
    :goto_3d
    invoke-virtual/range {v169 .. v169}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_18c

    .line 211
    const/4 v7, 0x1

    invoke-virtual/range {v169 .. v169}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v169

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v161

    .line 216
    .local v161, "reason":Ljava/lang/String;
    :goto_4f
    move/from16 v0, v162

    move-object/from16 v1, v161

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 220
    .end local v161    # "reason":Ljava/lang/String;
    .end local v162    # "reboot":Z
    :cond_56
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v115

    .line 221
    .local v115, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v115

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_190

    const/16 v114, 0x0

    .line 223
    .local v114, "factoryTest":I
    :goto_68
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 225
    .local v33, "headless":Z
    const/16 v123, 0x0

    .line 226
    .local v123, "installer":Lcom/android/server/pm/Installer;
    const/16 v67, 0x0

    .line 227
    .local v67, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v97, 0x0

    .line 228
    .local v97, "contentService":Lcom/android/server/content/ContentService;
    const/16 v129, 0x0

    .line 230
    .local v129, "lights":Lcom/android/server/LightsService;
    const/16 v126, 0x0

    .line 232
    .local v126, "leds":Lcom/android/server/LEDManagerService;
    const/16 v158, 0x0

    .line 233
    .local v158, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v106, 0x0

    .line 234
    .local v106, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v77, 0x0

    .line 235
    .local v77, "battery":Lcom/android/server/BatteryService;
    const/16 v200, 0x0

    .line 236
    .local v200, "vibrator":Lcom/android/server/VibratorService;
    const/16 v69, 0x0

    .line 237
    .local v69, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v142, 0x0

    .line 238
    .local v142, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 239
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 240
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v148, 0x0

    .line 241
    .local v148, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v91, 0x0

    .line 242
    .local v91, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v160, 0x0

    .line 243
    .local v160, "qcCon":Ljava/lang/Object;
    const/16 v210, 0x0

    .line 244
    .local v210, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v207, 0x0

    .line 246
    .local v207, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v144, 0x0

    .line 248
    .local v144, "msapwifi":Lcom/android/server/MsapWifiService;
    const/16 v209, 0x0

    .line 250
    .local v209, "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    const/16 v168, 0x0

    .line 252
    .local v168, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v205, 0x0

    .line 254
    .local v205, "wfd":Lcom/samsung/wfd/WfdService;
    const/16 v157, 0x0

    .line 255
    .local v157, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 256
    .local v5, "context":Landroid/content/Context;
    const/16 v212, 0x0

    .line 257
    .local v212, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v78, 0x0

    .line 258
    .local v78, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v107, 0x0

    .line 259
    .local v107, "dock":Lcom/android/server/DockObserver;
    const/16 v165, 0x0

    .line 260
    .local v165, "regulatory":Lcom/android/server/RegulatoryObserver;
    const/16 v198, 0x0

    .line 261
    .local v198, "usb":Lcom/android/server/usb/UsbService;
    const/16 v166, 0x0

    .line 262
    .local v166, "serial":Lcom/android/server/SerialService;
    const/16 v193, 0x0

    .line 263
    .local v193, "twilight":Lcom/android/server/TwilightService;
    const/16 v196, 0x0

    .line 264
    .local v196, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v163, 0x0

    .line 265
    .local v163, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v150, 0x0

    .line 266
    .local v150, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v181, 0x0

    .line 267
    .local v181, "thermalservice":Lcom/android/server/ThermalService;
    const/16 v103, 0x0

    .line 268
    .local v103, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v88, 0x0

    .line 269
    .local v88, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v122, 0x0

    .line 270
    .local v122, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v178, 0x0

    .line 271
    .local v178, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v146, 0x0

    .line 272
    .local v146, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    const/16 v159, 0x0

    .line 275
    .local v159, "powerSaving":Lcom/android/server/PowerSaving3LMService;
    const/16 v95, 0x0

    .line 279
    .local v95, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    const/16 v186, 0x0

    .line 280
    .local v186, "timaService":Lcom/android/server/TimaService;
    const/16 v184, 0x0

    .line 285
    .local v184, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v180, 0x0

    .line 289
    .local v180, "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    const/16 v101, 0x0

    .line 291
    .local v101, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v134, 0x0

    .line 298
    .local v134, "mHMS":Lcom/android/server/HarmonyEASService;
    new-instance v195, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v195

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 299
    .local v195, "uiHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v195 .. v195}, Landroid/os/HandlerThread;->start()V

    .line 300
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v195 .. v195}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 301
    .local v20, "uiHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    new-instance v213, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v213

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 319
    .local v213, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v213 .. v213}, Landroid/os/HandlerThread;->start()V

    .line 320
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v213 .. v213}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 321
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    const/16 v24, 0x0

    .line 343
    .local v24, "onlyCore":Z
    :try_start_11b
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v124, Lcom/android/server/pm/Installer;

    invoke-direct/range {v124 .. v124}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_127
    .catch Ljava/lang/RuntimeException; {:try_start_11b .. :try_end_127} :catch_131e

    .line 345
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .local v124, "installer":Lcom/android/server/pm/Installer;
    :try_start_127
    invoke-virtual/range {v124 .. v124}, Lcom/android/server/pm/Installer;->ping()Z

    .line 347
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_136
    .catch Ljava/lang/RuntimeException; {:try_start_127 .. :try_end_136} :catch_132d

    .line 349
    .end local v158    # "power":Lcom/android/server/power/PowerManagerService;
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_136
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 369
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static/range {v114 .. v114}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 372
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_156
    .catch Ljava/lang/RuntimeException; {:try_start_136 .. :try_end_156} :catch_133e

    .line 374
    .end local v106    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v10, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_156
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 376
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v7

    if-eqz v7, :cond_c13

    .line 379
    const/16 v173, 0x0

    .local v173, "simSlotNum":I
    :goto_16b
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    move/from16 v0, v173

    if-ge v0, v7, :cond_196

    .line 380
    const-string v7, "telephony.registry"

    move/from16 v0, v173

    invoke-static {v7, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    move/from16 v0, v173

    invoke-direct {v9, v5, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_185
    .catch Ljava/lang/RuntimeException; {:try_start_156 .. :try_end_185} :catch_c77

    .line 379
    add-int/lit8 v173, v173, 0x1

    goto :goto_16b

    .line 207
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v10    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v20    # "uiHandler":Landroid/os/Handler;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v67    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .end local v78    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v88    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v91    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v95    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v97    # "contentService":Lcom/android/server/content/ContentService;
    .end local v101    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v103    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .end local v107    # "dock":Lcom/android/server/DockObserver;
    .end local v114    # "factoryTest":I
    .end local v115    # "factoryTestStr":Ljava/lang/String;
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .end local v126    # "leds":Lcom/android/server/LEDManagerService;
    .end local v129    # "lights":Lcom/android/server/LightsService;
    .end local v134    # "mHMS":Lcom/android/server/HarmonyEASService;
    .end local v142    # "mountService":Lcom/android/server/MountService;
    .end local v144    # "msapwifi":Lcom/android/server/MsapWifiService;
    .end local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v148    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v150    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v157    # "pm":Landroid/content/pm/IPackageManager;
    .end local v159    # "powerSaving":Lcom/android/server/PowerSaving3LMService;
    .end local v160    # "qcCon":Ljava/lang/Object;
    .end local v163    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v165    # "regulatory":Lcom/android/server/RegulatoryObserver;
    .end local v166    # "serial":Lcom/android/server/SerialService;
    .end local v168    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v173    # "simSlotNum":I
    .end local v178    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v180    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .end local v181    # "thermalservice":Lcom/android/server/ThermalService;
    .end local v184    # "timaObserver":Lcom/android/server/TimaObserver;
    .end local v186    # "timaService":Lcom/android/server/TimaService;
    .end local v193    # "twilight":Lcom/android/server/TwilightService;
    .end local v195    # "uiHandlerThread":Landroid/os/HandlerThread;
    .end local v196    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v198    # "usb":Lcom/android/server/usb/UsbService;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .end local v205    # "wfd":Lcom/samsung/wfd/WfdService;
    .end local v207    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v209    # "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    .end local v210    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v212    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v213    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_188
    const/16 v162, 0x0

    goto/16 :goto_3d

    .line 213
    .restart local v162    # "reboot":Z
    :cond_18c
    const/16 v161, 0x0

    .restart local v161    # "reason":Ljava/lang/String;
    goto/16 :goto_4f

    .line 221
    .end local v161    # "reason":Ljava/lang/String;
    .end local v162    # "reboot":Z
    .restart local v115    # "factoryTestStr":Ljava/lang/String;
    :cond_190
    invoke-static/range {v115 .. v115}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v114

    goto/16 :goto_68

    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v10    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v20    # "uiHandler":Landroid/os/Handler;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v67    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v78    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v88    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v91    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v95    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v97    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v101    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v103    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .restart local v107    # "dock":Lcom/android/server/DockObserver;
    .restart local v114    # "factoryTest":I
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v126    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v134    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v142    # "mountService":Lcom/android/server/MountService;
    .restart local v144    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v148    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v150    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v157    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v159    # "powerSaving":Lcom/android/server/PowerSaving3LMService;
    .restart local v160    # "qcCon":Ljava/lang/Object;
    .restart local v163    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v165    # "regulatory":Lcom/android/server/RegulatoryObserver;
    .restart local v166    # "serial":Lcom/android/server/SerialService;
    .restart local v168    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v173    # "simSlotNum":I
    .restart local v178    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v180    # "telephonyRegistry2":Lcom/android/server/TelephonyRegistry;
    .restart local v181    # "thermalservice":Lcom/android/server/ThermalService;
    .restart local v184    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v186    # "timaService":Lcom/android/server/TimaService;
    .restart local v193    # "twilight":Lcom/android/server/TwilightService;
    .restart local v195    # "uiHandlerThread":Landroid/os/HandlerThread;
    .restart local v196    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v198    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v205    # "wfd":Lcom/samsung/wfd/WfdService;
    .restart local v207    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v209    # "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    .restart local v210    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v212    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v213    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_196
    move-object/from16 v147, v146

    .line 412
    .end local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v173    # "simSlotNum":I
    .local v147, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :goto_198
    :try_start_198
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1423

    .line 413
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v146, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_1af
    .catch Ljava/lang/RuntimeException; {:try_start_198 .. :try_end_1af} :catch_136d

    .line 415
    .end local v147    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_1af
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 424
    :goto_1b6
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 428
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 430
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1dc

    .line 431
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    :cond_1dc
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    .line 438
    .local v100, "cryptState":Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v100

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c43

    .line 439
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fa
    .catch Ljava/lang/RuntimeException; {:try_start_1af .. :try_end_1fa} :catch_c77

    .line 440
    const/16 v24, 0x1

    .line 448
    :cond_1fc
    :goto_1fc
    :try_start_1fc
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Container Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v96, Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, v96

    invoke-direct {v0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;-><init>(Landroid/content/Context;)V
    :try_end_20a
    .catch Ljava/lang/Throwable; {:try_start_1fc .. :try_end_20a} :catch_c58
    .catch Ljava/lang/RuntimeException; {:try_start_1fc .. :try_end_20a} :catch_c77

    .line 450
    .end local v95    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .local v96, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :try_start_20a
    const-string v7, "container_service"

    move-object/from16 v0, v96

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 451
    const-string v7, "SystemServer"

    const-string v9, "Container Service service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_218
    .catch Ljava/lang/Throwable; {:try_start_20a .. :try_end_218} :catch_141a
    .catch Ljava/lang/RuntimeException; {:try_start_20a .. :try_end_218} :catch_137c

    move-object/from16 v95, v96

    .line 458
    .end local v96    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v95    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :goto_21a
    :try_start_21a
    const-string v7, "1"

    const-string v9, "ro.config.tima"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_227
    .catch Ljava/lang/RuntimeException; {:try_start_21a .. :try_end_227} :catch_c77

    move-result v183

    .line 459
    .local v183, "timaEnabled":Z
    if-eqz v183, :cond_251

    .line 461
    :try_start_22a
    const-string v7, "SystemServer"

    const-string v9, "TIMA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v187, Lcom/android/server/TimaService;

    move-object/from16 v0, v187

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_238
    .catch Ljava/lang/Throwable; {:try_start_22a .. :try_end_238} :catch_c94
    .catch Ljava/lang/RuntimeException; {:try_start_22a .. :try_end_238} :catch_c77

    .line 463
    .end local v186    # "timaService":Lcom/android/server/TimaService;
    .local v187, "timaService":Lcom/android/server/TimaService;
    :try_start_238
    const-string v7, "tima"

    move-object/from16 v0, v187

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23f
    .catch Ljava/lang/Throwable; {:try_start_238 .. :try_end_23f} :catch_1415
    .catch Ljava/lang/RuntimeException; {:try_start_238 .. :try_end_23f} :catch_138b

    move-object/from16 v186, v187

    .line 469
    .end local v187    # "timaService":Lcom/android/server/TimaService;
    .restart local v186    # "timaService":Lcom/android/server/TimaService;
    :goto_241
    :try_start_241
    const-string v7, "SystemServer"

    const-string v9, "TIMA Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v185, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v185

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_24f
    .catch Ljava/lang/Throwable; {:try_start_241 .. :try_end_24f} :catch_ca0
    .catch Ljava/lang/RuntimeException; {:try_start_241 .. :try_end_24f} :catch_c77

    .end local v184    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v185, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v184, v185

    .line 478
    .end local v185    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v184    # "timaObserver":Lcom/android/server/TimaObserver;
    :cond_251
    :goto_251
    :try_start_251
    const-string v7, "SystemServer"

    const-string v9, "!@Begin PackageManager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-eqz v114, :cond_cac

    const/4 v7, 0x1

    :goto_25b
    move-object/from16 v0, v124

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v157

    .line 482
    const-string v7, "SystemServer"

    const-string v9, "!@End PackageManager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26a
    .catch Ljava/lang/RuntimeException; {:try_start_251 .. :try_end_26a} :catch_c77

    .line 484
    const/16 v117, 0x0

    .line 486
    .local v117, "firstBoot":Z
    :try_start_26c
    invoke-interface/range {v157 .. v157}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_26f
    .catch Landroid/os/RemoteException; {:try_start_26c .. :try_end_26f} :catch_12a2
    .catch Ljava/lang/RuntimeException; {:try_start_26c .. :try_end_26f} :catch_c77

    move-result v117

    .line 490
    :goto_270
    :try_start_270
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 492
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 495
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 499
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_29c
    .catch Ljava/lang/RuntimeException; {:try_start_270 .. :try_end_29c} :catch_c77

    .line 503
    :try_start_29c
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v68, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2aa
    .catch Ljava/lang/Throwable; {:try_start_29c .. :try_end_2aa} :catch_caf
    .catch Ljava/lang/RuntimeException; {:try_start_29c .. :try_end_2aa} :catch_c77

    .line 505
    .end local v67    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v68, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_2aa
    const-string v7, "account"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b1
    .catch Ljava/lang/Throwable; {:try_start_2aa .. :try_end_2b1} :catch_1410
    .catch Ljava/lang/RuntimeException; {:try_start_2aa .. :try_end_2b1} :catch_139a

    move-object/from16 v67, v68

    .line 511
    .end local v68    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v67    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_2b3
    :try_start_2b3
    const-string v7, ""

    const-string v9, "KT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2ba
    .catch Ljava/lang/RuntimeException; {:try_start_2b3 .. :try_end_2ba} :catch_c77

    move-result v7

    if-eqz v7, :cond_2ce

    .line 513
    :try_start_2bd
    const-string v7, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2ce
    .catch Ljava/lang/Throwable; {:try_start_2bd .. :try_end_2ce} :catch_cbb
    .catch Ljava/lang/RuntimeException; {:try_start_2bd .. :try_end_2ce} :catch_c77

    .line 521
    :cond_2ce
    :goto_2ce
    :try_start_2ce
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v7, 0x1

    move/from16 v0, v114

    if-ne v0, v7, :cond_cc7

    const/4 v7, 0x1

    :goto_2db
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v97

    .line 527
    new-instance v102, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_2e6
    .catch Ljava/lang/RuntimeException; {:try_start_2ce .. :try_end_2e6} :catch_c77

    .line 529
    .end local v101    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v102, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_2e6
    sget-boolean v7, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v7, :cond_2f1

    .line 530
    const-string v7, "DirEncryptService"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f1
    .catch Ljava/lang/Throwable; {:try_start_2e6 .. :try_end_2f1} :catch_cca
    .catch Ljava/lang/RuntimeException; {:try_start_2e6 .. :try_end_2f1} :catch_13a9

    :cond_2f1
    move-object/from16 v101, v102

    .line 538
    .end local v102    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v101    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_2f3
    :try_start_2f3
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 541
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_309
    .catch Ljava/lang/RuntimeException; {:try_start_2f3 .. :try_end_309} :catch_c77

    .line 546
    .end local v129    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_309
    const-string v7, "SystemServer"

    const-string v9, "Led Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v127, Lcom/android/server/LEDManagerService;

    move-object/from16 v0, v127

    invoke-direct {v0, v6}, Lcom/android/server/LEDManagerService;-><init>(Lcom/android/server/LightsService;)V
    :try_end_317
    .catch Ljava/lang/RuntimeException; {:try_start_309 .. :try_end_317} :catch_13b8

    .line 548
    .end local v126    # "leds":Lcom/android/server/LEDManagerService;
    .local v127, "leds":Lcom/android/server/LEDManagerService;
    :try_start_317
    const-string v7, "LEDService"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 553
    const-string v7, "1"

    const-string v9, "persist.service.thermal"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_345

    .line 554
    const-string v7, "SystemServer"

    const-string v9, "Intel Thermal Service enabled"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v182, Lcom/android/server/ThermalService;

    move-object/from16 v0, v182

    invoke-direct {v0, v5}, Lcom/android/server/ThermalService;-><init>(Landroid/content/Context;)V
    :try_end_33c
    .catch Ljava/lang/RuntimeException; {:try_start_317 .. :try_end_33c} :catch_13c3

    .line 556
    .end local v181    # "thermalservice":Lcom/android/server/ThermalService;
    .local v182, "thermalservice":Lcom/android/server/ThermalService;
    :try_start_33c
    const-string v7, "thermalservice"

    move-object/from16 v0, v182

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_343
    .catch Ljava/lang/RuntimeException; {:try_start_33c .. :try_end_343} :catch_13d0

    move-object/from16 v181, v182

    .line 559
    .end local v182    # "thermalservice":Lcom/android/server/ThermalService;
    .restart local v181    # "thermalservice":Lcom/android/server/ThermalService;
    :cond_345
    :try_start_345
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_351
    .catch Ljava/lang/RuntimeException; {:try_start_345 .. :try_end_351} :catch_13c3

    .line 561
    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_351
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 563
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v201, Lcom/android/server/VibratorService;

    move-object/from16 v0, v201

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_364
    .catch Ljava/lang/RuntimeException; {:try_start_351 .. :try_end_364} :catch_13df

    .line 565
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .local v201, "vibrator":Lcom/android/server/VibratorService;
    :try_start_364
    const-string v7, "vibrator"

    move-object/from16 v0, v201

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 568
    const-string v7, "SystemServer"

    const-string v9, "SSRM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_372
    .catch Ljava/lang/RuntimeException; {:try_start_364 .. :try_end_372} :catch_13ea

    .line 570
    :try_start_372
    new-instance v81, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v81

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 571
    .local v81, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v81

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v80

    .line 572
    .local v80, "cfmsClass":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    const-class v11, Landroid/app/IActivityManager;

    aput-object v11, v7, v9

    move-object/from16 v0, v80

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v82

    .line 573
    .local v82, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    aput-object v11, v7, v9

    move-object/from16 v0, v82

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v174

    check-cast v174, Landroid/os/IBinder;

    .line 574
    .local v174, "ssrmService":Landroid/os/IBinder;
    const-string v7, "CustomFrequencyManagerService"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b6
    .catch Ljava/lang/Exception; {:try_start_372 .. :try_end_3b6} :catch_140d
    .catch Ljava/lang/RuntimeException; {:try_start_372 .. :try_end_3b6} :catch_13ea

    .line 579
    .end local v80    # "cfmsClass":Ljava/lang/Class;
    .end local v81    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v82    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v174    # "ssrmService":Landroid/os/IBinder;
    :goto_3b6
    :try_start_3b6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 582
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3cd
    .catch Ljava/lang/RuntimeException; {:try_start_3b6 .. :try_end_3cd} :catch_13ea

    .line 584
    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v15, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_3cd
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 586
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 590
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3f7
    .catch Ljava/lang/RuntimeException; {:try_start_3cd .. :try_end_3f7} :catch_13f7

    .line 593
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v19, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_3f7
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_425

    .line 594
    const-string v7, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v7, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {v9, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 597
    const-string v7, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v7, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 601
    :cond_425
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v7, 0x1

    move/from16 v0, v114

    if-eq v0, v7, :cond_cd8

    const/16 v22, 0x1

    :goto_433
    if-nez v117, :cond_cdc

    const/16 v23, 0x1

    :goto_437
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v212

    .line 606
    const-string v7, "window"

    move-object/from16 v0, v212

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 607
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 609
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v212

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 611
    invoke-virtual/range {v212 .. v212}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 612
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 614
    move-object/from16 v0, v212

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 615
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 621
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ce0

    .line 622
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_483
    .catch Ljava/lang/RuntimeException; {:try_start_3f7 .. :try_end_483} :catch_cee

    :goto_483
    move-object/from16 v200, v201

    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v126, v127

    .end local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v126    # "leds":Lcom/android/server/LEDManagerService;
    move-object/from16 v123, v124

    .line 644
    .end local v100    # "cryptState":Ljava/lang/String;
    .end local v117    # "firstBoot":Z
    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .end local v183    # "timaEnabled":Z
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    :goto_489
    const/16 v104, 0x0

    .line 646
    .local v104, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v112, 0x0

    .line 648
    .local v112, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v176, 0x0

    .line 649
    .local v176, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v120, 0x0

    .line 650
    .local v120, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v71, 0x0

    .line 651
    .local v71, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v152, 0x0

    .line 652
    .local v152, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v203, 0x0

    .line 653
    .local v203, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v130, 0x0

    .line 654
    .local v130, "location":Lcom/android/server/LocationManagerService;
    const/16 v98, 0x0

    .line 655
    .local v98, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v189, 0x0

    .line 656
    .local v189, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v132, 0x0

    .line 657
    .local v132, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v109, 0x0

    .line 659
    .local v109, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v188, 0x0

    .line 663
    .local v188, "transcloud":Landroid/os/IBinder;
    const/4 v7, 0x1

    move/from16 v0, v114

    if-eq v0, v7, :cond_4d2

    .line 665
    :try_start_4a8
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v121, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v121

    move-object/from16 v1, v212

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_4b8
    .catch Ljava/lang/Throwable; {:try_start_4a8 .. :try_end_4b8} :catch_d35

    .line 667
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v121, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_4b8
    const-string v7, "input_method"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4bf
    .catch Ljava/lang/Throwable; {:try_start_4b8 .. :try_end_4bf} :catch_1319

    move-object/from16 v120, v121

    .line 673
    .end local v121    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_4c1
    :try_start_4c1
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d2
    .catch Ljava/lang/Throwable; {:try_start_4c1 .. :try_end_4d2} :catch_d41

    .line 682
    :cond_4d2
    :goto_4d2
    :try_start_4d2
    invoke-virtual/range {v212 .. v212}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_4d5
    .catch Ljava/lang/Throwable; {:try_start_4d2 .. :try_end_4d5} :catch_d4d

    .line 688
    :goto_4d5
    :try_start_4d5
    invoke-interface/range {v157 .. v157}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_4d8
    .catch Ljava/lang/Throwable; {:try_start_4d5 .. :try_end_4d8} :catch_d59

    .line 694
    :goto_4d8
    :try_start_4d8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x104062d

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_4eb
    .catch Landroid/os/RemoteException; {:try_start_4d8 .. :try_end_4eb} :catch_1316

    .line 703
    :goto_4eb
    if-eqz v95, :cond_4f0

    :try_start_4ed
    invoke-virtual/range {v95 .. v95}, Lcom/sec/knox/container/EnterpriseContainerService;->preSystemReady()V
    :try_end_4f0
    .catch Ljava/lang/Throwable; {:try_start_4ed .. :try_end_4f0} :catch_d65

    .line 709
    :cond_4f0
    :goto_4f0
    const/4 v7, 0x1

    move/from16 v0, v114

    if-eq v0, v7, :cond_141f

    .line 710
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_51a

    .line 716
    :try_start_503
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v143, Lcom/android/server/MountService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_511
    .catch Ljava/lang/Throwable; {:try_start_503 .. :try_end_511} :catch_d71

    .line 718
    .end local v142    # "mountService":Lcom/android/server/MountService;
    .local v143, "mountService":Lcom/android/server/MountService;
    :try_start_511
    const-string v7, "mount"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_518
    .catch Ljava/lang/Throwable; {:try_start_511 .. :try_end_518} :catch_1311

    move-object/from16 v142, v143

    .line 726
    .end local v143    # "mountService":Lcom/android/server/MountService;
    .restart local v142    # "mountService":Lcom/android/server/MountService;
    :cond_51a
    :goto_51a
    :try_start_51a
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-eqz v101, :cond_52d

    .line 728
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_52d
    .catch Ljava/lang/Throwable; {:try_start_51a .. :try_end_52d} :catch_d7d

    .line 737
    :cond_52d
    :goto_52d
    :try_start_52d
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v133, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_53b
    .catch Ljava/lang/Throwable; {:try_start_52d .. :try_end_53b} :catch_d89

    .line 739
    .end local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v133, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_53b
    const-string v7, "lock_settings"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_542
    .catch Ljava/lang/Throwable; {:try_start_53b .. :try_end_542} :catch_130c

    move-object/from16 v132, v133

    .line 745
    .end local v133    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_544
    :try_start_544
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v105, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_552
    .catch Ljava/lang/Throwable; {:try_start_544 .. :try_end_552} :catch_d95

    .line 747
    .end local v104    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v105, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_552
    const-string v7, "device_policy"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_559
    .catch Ljava/lang/Throwable; {:try_start_552 .. :try_end_559} :catch_1307

    move-object/from16 v104, v105

    .line 754
    .end local v105    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v104    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :goto_55b
    :try_start_55b
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v113, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v157

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v7, v0

    move-object/from16 v0, v113

    move-object/from16 v1, v104

    invoke-direct {v0, v5, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_570
    .catch Ljava/lang/Throwable; {:try_start_55b .. :try_end_570} :catch_da1

    .line 756
    .end local v112    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v113, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_570
    const-string v7, "enterprise_policy"

    move-object/from16 v0, v113

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 757
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57e
    .catch Ljava/lang/Throwable; {:try_start_570 .. :try_end_57e} :catch_1302

    move-object/from16 v112, v113

    .line 765
    .end local v113    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v112    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_580
    :try_start_580
    const-string v7, "SystemServer"

    const-string v9, "HarmonyEAS service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v135, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v135

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_58e
    .catch Ljava/lang/Throwable; {:try_start_580 .. :try_end_58e} :catch_dad

    .line 767
    .end local v134    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v135, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_58e
    const-string v7, "harmony_eas_service"

    move-object/from16 v0, v135

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 768
    const-string v7, "SystemServer"

    const-string v9, "Harmony EAS service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59c
    .catch Ljava/lang/Throwable; {:try_start_58e .. :try_end_59c} :catch_12fd

    move-object/from16 v134, v135

    .line 775
    .end local v135    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v134    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_59e
    :try_start_59e
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v177, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v177

    move-object/from16 v1, v212

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_5ae
    .catch Ljava/lang/Throwable; {:try_start_59e .. :try_end_5ae} :catch_db9

    .line 777
    .end local v176    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v177, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_5ae
    const-string v7, "statusbar"

    move-object/from16 v0, v177

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b5
    .catch Ljava/lang/Throwable; {:try_start_5ae .. :try_end_5b5} :catch_12f8

    move-object/from16 v176, v177

    .line 783
    .end local v177    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v176    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :goto_5b7
    :try_start_5b7
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c8
    .catch Ljava/lang/Throwable; {:try_start_5b7 .. :try_end_5c8} :catch_dc5

    .line 794
    :goto_5c8
    :try_start_5c8
    const-string v7, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v7, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v5}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d9
    .catch Ljava/lang/Throwable; {:try_start_5c8 .. :try_end_5d9} :catch_dd1

    .line 805
    :goto_5d9
    :try_start_5d9
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v154

    .line 806
    .local v154, "pM":Landroid/content/pm/PackageManager;
    if-eqz v154, :cond_5fb

    .line 807
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v154

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_5fb

    .line 808
    const-string v7, "SystemServer"

    const-string v9, "SmartclipMetadata Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string v7, "smartclipMetadata"

    new-instance v9, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    invoke-direct {v9, v5}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5fb
    .catch Ljava/lang/Throwable; {:try_start_5d9 .. :try_end_5fb} :catch_ddd

    .line 818
    .end local v154    # "pM":Landroid/content/pm/PackageManager;
    :cond_5fb
    :goto_5fb
    :try_start_5fb
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 820
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_60d
    .catch Ljava/lang/Throwable; {:try_start_5fb .. :try_end_60d} :catch_de9

    .line 826
    :goto_60d
    :try_start_60d
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v190, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v190

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_61b
    .catch Ljava/lang/Throwable; {:try_start_60d .. :try_end_61b} :catch_df5

    .line 828
    .end local v189    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v190, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_61b
    const-string v7, "textservices"

    move-object/from16 v0, v190

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_622
    .catch Ljava/lang/Throwable; {:try_start_61b .. :try_end_622} :catch_12f3

    move-object/from16 v189, v190

    .line 834
    .end local v190    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v189    # "tsms":Lcom/android/server/TextServicesManagerService;
    :goto_624
    :try_start_624
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v149, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v149

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_634
    .catch Ljava/lang/Throwable; {:try_start_624 .. :try_end_634} :catch_e01

    .line 836
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v149, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_634
    const-string v7, "netstats"

    move-object/from16 v0, v149

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63b
    .catch Ljava/lang/Throwable; {:try_start_634 .. :try_end_63b} :catch_12ee

    move-object/from16 v29, v149

    .line 842
    .end local v149    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_63d
    :try_start_63d
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_651
    .catch Ljava/lang/Throwable; {:try_start_63d .. :try_end_651} :catch_e0d

    .line 846
    .end local v148    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_651
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_658
    .catch Ljava/lang/Throwable; {:try_start_651 .. :try_end_658} :catch_12eb

    .line 860
    :goto_658
    :try_start_658
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v211, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v211

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_666
    .catch Ljava/lang/Throwable; {:try_start_658 .. :try_end_666} :catch_e1b

    .line 862
    .end local v210    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v211, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_666
    const-string v7, "wifip2p"

    move-object/from16 v0, v211

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66d
    .catch Ljava/lang/Throwable; {:try_start_666 .. :try_end_66d} :catch_12e6

    move-object/from16 v210, v211

    .line 868
    .end local v211    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v210    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_66f
    :try_start_66f
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    new-instance v208, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v208

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_67d
    .catch Ljava/lang/Throwable; {:try_start_66f .. :try_end_67d} :catch_e27

    .line 870
    .end local v207    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v208, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_67d
    const-string v7, "wifi"

    move-object/from16 v0, v208

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_684
    .catch Ljava/lang/Throwable; {:try_start_67d .. :try_end_684} :catch_12e1

    move-object/from16 v207, v208

    .line 877
    .end local v208    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v207    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_686
    :try_start_686
    const-string v7, "SystemServer"

    const-string v9, "MSAP Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v145, Lcom/android/server/MsapWifiService;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/android/server/MsapWifiService;-><init>(Landroid/content/Context;)V
    :try_end_694
    .catch Ljava/lang/Throwable; {:try_start_686 .. :try_end_694} :catch_e33

    .line 879
    .end local v144    # "msapwifi":Lcom/android/server/MsapWifiService;
    .local v145, "msapwifi":Lcom/android/server/MsapWifiService;
    :try_start_694
    const-string v7, "msapwifi"

    move-object/from16 v0, v145

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_69b
    .catch Ljava/lang/Throwable; {:try_start_694 .. :try_end_69b} :catch_12dc

    move-object/from16 v144, v145

    .line 904
    .end local v145    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v144    # "msapwifi":Lcom/android/server/MsapWifiService;
    :goto_69d
    :try_start_69d
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v206, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v206

    invoke-direct {v0, v5}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_6ab
    .catch Ljava/lang/Throwable; {:try_start_69d .. :try_end_6ab} :catch_e3f

    .line 906
    .end local v205    # "wfd":Lcom/samsung/wfd/WfdService;
    .local v206, "wfd":Lcom/samsung/wfd/WfdService;
    :try_start_6ab
    const-string v7, "wfd"

    move-object/from16 v0, v206

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b2
    .catch Ljava/lang/Throwable; {:try_start_6ab .. :try_end_6b2} :catch_12d7

    move-object/from16 v205, v206

    .line 912
    .end local v206    # "wfd":Lcom/samsung/wfd/WfdService;
    .restart local v205    # "wfd":Lcom/samsung/wfd/WfdService;
    :goto_6b4
    :try_start_6b4
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    new-instance v92, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v92

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_6c8
    .catch Ljava/lang/Throwable; {:try_start_6b4 .. :try_end_6c8} :catch_e4b

    .line 921
    .end local v91    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v92, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_6c8
    const-string v7, "connectivity"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 922
    move-object/from16 v0, v29

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 923
    move-object/from16 v0, v25

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 924
    invoke-virtual/range {v207 .. v207}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    .line 925
    invoke-virtual/range {v210 .. v210}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_6e3
    .catch Ljava/lang/Throwable; {:try_start_6c8 .. :try_end_6e3} :catch_12d2

    move-object/from16 v91, v92

    .line 966
    .end local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v91    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_6e5
    :try_start_6e5
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v168

    .line 968
    const-string v7, "servicediscovery"

    move-object/from16 v0, v168

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f7
    .catch Ljava/lang/Throwable; {:try_start_6e5 .. :try_end_6f7} :catch_e57

    .line 975
    :goto_6f7
    :try_start_6f7
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_708
    .catch Ljava/lang/Throwable; {:try_start_6f7 .. :try_end_708} :catch_e63

    .line 987
    :goto_708
    if-eqz v142, :cond_71d

    .line 989
    const-string v7, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_71d

    .line 990
    invoke-virtual/range {v142 .. v142}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 994
    :cond_71d
    if-eqz v67, :cond_722

    .line 995
    :try_start_71f
    invoke-virtual/range {v67 .. v67}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_722
    .catch Ljava/lang/Throwable; {:try_start_71f .. :try_end_722} :catch_e6f

    .line 1001
    :cond_722
    :goto_722
    if-eqz v97, :cond_727

    .line 1002
    :try_start_724
    invoke-virtual/range {v97 .. v97}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_727
    .catch Ljava/lang/Throwable; {:try_start_724 .. :try_end_727} :catch_e7b

    .line 1008
    :cond_727
    :goto_727
    :try_start_727
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v153, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v153

    move-object/from16 v1, v176

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_737
    .catch Ljava/lang/Throwable; {:try_start_727 .. :try_end_737} :catch_e87

    .line 1010
    .end local v152    # "notification":Lcom/android/server/NotificationManagerService;
    .local v153, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_737
    const-string v7, "notification"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1011
    move-object/from16 v0, v25

    move-object/from16 v1, v153

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_745
    .catch Ljava/lang/Throwable; {:try_start_737 .. :try_end_745} :catch_12cd

    move-object/from16 v152, v153

    .line 1017
    .end local v153    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v152    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_747
    :try_start_747
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_758
    .catch Ljava/lang/Throwable; {:try_start_747 .. :try_end_758} :catch_e93

    .line 1025
    :goto_758
    :try_start_758
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v131, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_766
    .catch Ljava/lang/Throwable; {:try_start_758 .. :try_end_766} :catch_e9f

    .line 1027
    .end local v130    # "location":Lcom/android/server/LocationManagerService;
    .local v131, "location":Lcom/android/server/LocationManagerService;
    :try_start_766
    const-string v7, "location"

    move-object/from16 v0, v131

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_76d
    .catch Ljava/lang/Throwable; {:try_start_766 .. :try_end_76d} :catch_12c8

    move-object/from16 v130, v131

    .line 1033
    .end local v131    # "location":Lcom/android/server/LocationManagerService;
    .restart local v130    # "location":Lcom/android/server/LocationManagerService;
    :goto_76f
    :try_start_76f
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v99, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_77d
    .catch Ljava/lang/Throwable; {:try_start_76f .. :try_end_77d} :catch_eab

    .line 1035
    .end local v98    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v99, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_77d
    const-string v7, "country_detector"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_784
    .catch Ljava/lang/Throwable; {:try_start_77d .. :try_end_784} :catch_12c3

    move-object/from16 v98, v99

    .line 1041
    .end local v99    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v98    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_786
    :try_start_786
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_797
    .catch Ljava/lang/Throwable; {:try_start_786 .. :try_end_797} :catch_eb7

    .line 1049
    :goto_797
    :try_start_797
    const-string v7, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v157

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ec3

    .line 1050
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string v7, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v5}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7b2
    .catch Ljava/lang/Throwable; {:try_start_797 .. :try_end_7b2} :catch_ecc

    .line 1061
    :goto_7b2
    :try_start_7b2
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7ca
    .catch Ljava/lang/Throwable; {:try_start_7b2 .. :try_end_7ca} :catch_ee9

    .line 1068
    :goto_7ca
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_7f0

    .line 1071
    :try_start_7d7
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    if-nez v33, :cond_7f0

    .line 1073
    new-instance v204, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v204

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7e7
    .catch Ljava/lang/Throwable; {:try_start_7d7 .. :try_end_7e7} :catch_ef5

    .line 1074
    .end local v203    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v204, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_7e7
    const-string v7, "wallpaper"

    move-object/from16 v0, v204

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7ee
    .catch Ljava/lang/Throwable; {:try_start_7e7 .. :try_end_7ee} :catch_12be

    move-object/from16 v203, v204

    .line 1081
    .end local v204    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v203    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_7f0
    :goto_7f0
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_80f

    .line 1083
    :try_start_7fe
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_80f
    .catch Ljava/lang/Throwable; {:try_start_7fe .. :try_end_80f} :catch_f01

    .line 1091
    :cond_80f
    :goto_80f
    const-string v7, "ro.mds.enable"

    const-string v9, "false"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v137

    .line 1093
    .local v137, "mdsEnable":Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Intel MDS Service ro.mds.enable = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v137

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const-string v7, "true"

    move-object/from16 v0, v137

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86f

    .line 1096
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v84

    .line 1098
    .local v84, "classLoader":Ljava/lang/ClassLoader;
    :try_start_83f
    const-string v7, "SystemServer"

    const-string v9, "Intel Display Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/16 v87, 0x0

    .line 1100
    .local v87, "clazz":Ljava/lang/Class;
    if-eqz v84, :cond_f0d

    .line 1101
    const-string v7, "com.intel.multidisplay.DisplayObserver"

    move-object/from16 v0, v84

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v87

    .line 1105
    :goto_852
    if-eqz v87, :cond_f22

    .line 1106
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    move-object/from16 v0, v87

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v63

    .line 1107
    .local v63, "DConstructor":Ljava/lang/reflect/Constructor;
    if-eqz v63, :cond_86f

    .line 1108
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v63

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86f
    .catch Ljava/lang/Throwable; {:try_start_83f .. :try_end_86f} :catch_f16

    .line 1118
    .end local v63    # "DConstructor":Ljava/lang/reflect/Constructor;
    .end local v84    # "classLoader":Ljava/lang/ClassLoader;
    .end local v87    # "clazz":Ljava/lang/Class;
    :cond_86f
    :goto_86f
    :try_start_86f
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    new-instance v108, Lcom/android/server/DockObserver;

    move-object/from16 v0, v108

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_87d
    .catch Ljava/lang/Throwable; {:try_start_86f .. :try_end_87d} :catch_f2b

    .end local v107    # "dock":Lcom/android/server/DockObserver;
    .local v108, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v107, v108

    .line 1126
    .end local v108    # "dock":Lcom/android/server/DockObserver;
    .restart local v107    # "dock":Lcom/android/server/DockObserver;
    :goto_87f
    :try_start_87f
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_892
    .catch Ljava/lang/Throwable; {:try_start_87f .. :try_end_892} :catch_f37

    .line 1135
    :goto_892
    :try_start_892
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    new-instance v199, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v199

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_8a0
    .catch Ljava/lang/Throwable; {:try_start_892 .. :try_end_8a0} :catch_f43

    .line 1138
    .end local v198    # "usb":Lcom/android/server/usb/UsbService;
    .local v199, "usb":Lcom/android/server/usb/UsbService;
    :try_start_8a0
    const-string v7, "usb"

    move-object/from16 v0, v199

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a7
    .catch Ljava/lang/Throwable; {:try_start_8a0 .. :try_end_8a7} :catch_12b9

    move-object/from16 v198, v199

    .line 1144
    .end local v199    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v198    # "usb":Lcom/android/server/usb/UsbService;
    :goto_8a9
    :try_start_8a9
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    new-instance v167, Lcom/android/server/SerialService;

    move-object/from16 v0, v167

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_8b7
    .catch Ljava/lang/Throwable; {:try_start_8a9 .. :try_end_8b7} :catch_f4f

    .line 1147
    .end local v166    # "serial":Lcom/android/server/SerialService;
    .local v167, "serial":Lcom/android/server/SerialService;
    :try_start_8b7
    const-string v7, "serial"

    move-object/from16 v0, v167

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8be
    .catch Ljava/lang/Throwable; {:try_start_8b7 .. :try_end_8be} :catch_12b4

    move-object/from16 v166, v167

    .line 1153
    .end local v167    # "serial":Lcom/android/server/SerialService;
    .restart local v166    # "serial":Lcom/android/server/SerialService;
    :goto_8c0
    :try_start_8c0
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    new-instance v194, Lcom/android/server/TwilightService;

    move-object/from16 v0, v194

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_8ce
    .catch Ljava/lang/Throwable; {:try_start_8c0 .. :try_end_8ce} :catch_f5b

    .end local v193    # "twilight":Lcom/android/server/TwilightService;
    .local v194, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v193, v194

    .line 1160
    .end local v194    # "twilight":Lcom/android/server/TwilightService;
    .restart local v193    # "twilight":Lcom/android/server/TwilightService;
    :goto_8d0
    :try_start_8d0
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    new-instance v197, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v197

    move-object/from16 v1, v193

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_8e0
    .catch Ljava/lang/Throwable; {:try_start_8d0 .. :try_end_8e0} :catch_f67

    .end local v196    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v197, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v196, v197

    .line 1168
    .end local v197    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v196    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_8e2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8ff

    .line 1171
    :try_start_8ee
    const-string v7, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const-string v7, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8ff
    .catch Ljava/lang/Throwable; {:try_start_8ee .. :try_end_8ff} :catch_f73

    .line 1180
    :cond_8ff
    :goto_8ff
    :try_start_8ff
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_910
    .catch Ljava/lang/Throwable; {:try_start_8ff .. :try_end_910} :catch_f7f

    .line 1188
    :goto_910
    :try_start_910
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    new-instance v72, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_91e
    .catch Ljava/lang/Throwable; {:try_start_910 .. :try_end_91e} :catch_f8b

    .line 1190
    .end local v71    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v72, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_91e
    const-string v7, "appwidget"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_925
    .catch Ljava/lang/Throwable; {:try_start_91e .. :try_end_925} :catch_12af

    move-object/from16 v71, v72

    .line 1196
    .end local v72    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v71    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_927
    :try_start_927
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    new-instance v164, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v164

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_935
    .catch Ljava/lang/Throwable; {:try_start_927 .. :try_end_935} :catch_f97

    .end local v163    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v164, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v163, v164

    .line 1203
    .end local v164    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v163    # "recognition":Lcom/android/server/RecognitionManagerService;
    :goto_937
    :try_start_937
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_948
    .catch Ljava/lang/Throwable; {:try_start_937 .. :try_end_948} :catch_fa3

    .line 1210
    :goto_948
    :try_start_948
    const-string v7, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    new-instance v75, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v75

    invoke-direct {v0, v5}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .line 1212
    .local v75, "atfwd":Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v7, "AtCmdFwd"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_95d
    .catch Ljava/lang/Throwable; {:try_start_948 .. :try_end_95d} :catch_faf

    .line 1218
    .end local v75    # "atfwd":Lcom/android/internal/atfwd/AtCmdFwdService;
    :goto_95d
    :try_start_95d
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v154

    .line 1219
    .restart local v154    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v154, :cond_981

    .line 1220
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v154

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_981

    .line 1221
    const-string v7, "SystemServer"

    const-string v9, "Spen USP Level 2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-string v7, "spengestureservice"

    new-instance v9, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v212

    invoke-direct {v9, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_981
    .catch Ljava/lang/Throwable; {:try_start_95d .. :try_end_981} :catch_fbb

    .line 1234
    .end local v154    # "pM":Landroid/content/pm/PackageManager;
    :cond_981
    :goto_981
    :try_start_981
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_992
    .catch Ljava/lang/Throwable; {:try_start_981 .. :try_end_992} :catch_fc7

    .line 1242
    :goto_992
    :try_start_992
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    new-instance v151, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_9a0
    .catch Ljava/lang/Throwable; {:try_start_992 .. :try_end_9a0} :catch_fd3

    .end local v150    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v151, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v150, v151

    .line 1272
    .end local v151    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v150    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_9a2
    const-string v7, "ro.tvout.enable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v191

    .line 1274
    .local v191, "tvoutEnable":Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tvout Service ro.tvout.enable = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v191

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const-string v7, "false"

    move-object/from16 v0, v191

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9e4

    .line 1282
    :try_start_9cc
    const-string v7, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/16 v192, 0x0

    .line 1286
    .local v192, "tvoutclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "com.android.server.TvoutService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v192

    .line 1288
    if-nez v192, :cond_fdf

    .line 1290
    const-string v7, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e4
    .catch Ljava/lang/Throwable; {:try_start_9cc .. :try_end_9e4} :catch_100d

    .line 1316
    .end local v192    # "tvoutclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9e4
    :goto_9e4
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v155

    .line 1318
    .local v155, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v7, "com.sec.feature.irda_service"

    move-object/from16 v0, v155

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a07

    .line 1320
    :try_start_9f2
    const-string v7, "SystemServer"

    const-string v9, "IRDA Service!! Enable the IRDA service!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    new-instance v125, Landroid/app/IrdaService;

    move-object/from16 v0, v125

    invoke-direct {v0, v5}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 1322
    .local v125, "irda":Landroid/app/IrdaService;
    const-string v7, "irda"

    move-object/from16 v0, v125

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a07
    .catch Ljava/lang/Throwable; {:try_start_9f2 .. :try_end_a07} :catch_1019

    .line 1329
    .end local v125    # "irda":Landroid/app/IrdaService;
    :cond_a07
    :goto_a07
    const-string v7, "com.sec.feature.minimode"

    move-object/from16 v0, v155

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_acc

    .line 1331
    :try_start_a11
    const-string v7, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const-string v139, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 1333
    .local v139, "minimodeFrameworkDexPath":Ljava/lang/String;
    const-string v141, "/data/dalvik-cache/minimode.dex"

    .line 1335
    .local v141, "minimodeGenDexPath":Ljava/lang/String;
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v139

    invoke-interface {v7, v0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v175

    .line 1336
    .local v175, "stat":Llibcore/io/StructStat;
    if-eqz v175, :cond_a93

    .line 1337
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v139

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v141

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_a93

    .line 1338
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v141

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " is copied from "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v139

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    new-instance v140, Ljava/io/File;

    invoke-direct/range {v140 .. v141}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1340
    .local v140, "minimodeGenDexFile":Ljava/io/File;
    move-object/from16 v0, v175

    iget-wide v11, v0, Llibcore/io/StructStat;->st_mtime:J

    move-object/from16 v0, v140

    invoke-virtual {v0, v11, v12}, Ljava/io/File;->setLastModified(J)Z

    move-result v7

    if-eqz v7, :cond_a93

    .line 1341
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastModfied time of "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v141

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " is changed to "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v175

    iget-wide v11, v0, Llibcore/io/StructStat;->st_mtime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    .end local v140    # "minimodeGenDexFile":Ljava/io/File;
    :cond_a93
    new-instance v83, Ldalvik/system/DexClassLoader;

    const-string v7, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, v83

    invoke-direct {v0, v7, v9, v11, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1348
    .local v83, "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v83

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v64

    .line 1349
    .local v64, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v65

    .line 1350
    .local v65, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    move-object/from16 v0, v65

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_acc
    .catch Ljava/lang/Throwable; {:try_start_a11 .. :try_end_acc} :catch_1025

    .line 1358
    .end local v64    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v65    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v83    # "cl":Ljava/lang/ClassLoader;
    .end local v139    # "minimodeFrameworkDexPath":Ljava/lang/String;
    .end local v141    # "minimodeGenDexPath":Ljava/lang/String;
    .end local v175    # "stat":Llibcore/io/StructStat;
    :cond_acc
    :goto_acc
    const-string v7, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v155

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_aeb

    .line 1360
    :try_start_ad6
    const-string v7, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    new-instance v76, Landroid/app/BarBeamService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1363
    .local v76, "barbeam":Landroid/app/BarBeamService;
    const-string v7, "barbeam"

    move-object/from16 v0, v76

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_aeb
    .catch Ljava/lang/Throwable; {:try_start_ad6 .. :try_end_aeb} :catch_1031

    .line 1370
    .end local v76    # "barbeam":Landroid/app/BarBeamService;
    :cond_aeb
    :goto_aeb
    const-string v7, "com.sec.feature.ultrasonic_service"

    move-object/from16 v0, v155

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b06

    .line 1372
    :try_start_af5
    const-string v7, "SystemServer"

    const-string v9, "Ultrasonic receiver Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    const-string v7, "ultrasonic"

    new-instance v9, Lcom/android/server/UltrasonicService;

    invoke-direct {v9, v5}, Lcom/android/server/UltrasonicService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b06
    .catch Ljava/lang/Throwable; {:try_start_af5 .. :try_end_b06} :catch_103d

    .line 1385
    :cond_b06
    :goto_b06
    :try_start_b06
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    new-instance v89, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_b14
    .catch Ljava/lang/Throwable; {:try_start_b06 .. :try_end_b14} :catch_1049

    .line 1387
    .end local v88    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v89, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_b14
    const-string v7, "commontime_management"

    move-object/from16 v0, v89

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b1b
    .catch Ljava/lang/Throwable; {:try_start_b14 .. :try_end_b1b} :catch_12aa

    move-object/from16 v88, v89

    .line 1393
    .end local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v88    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_b1d
    :try_start_b1d
    const-string v7, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const-string v7, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v5}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b2e
    .catch Ljava/lang/Throwable; {:try_start_b1d .. :try_end_b2e} :catch_1055

    .line 1400
    :goto_b2e
    :try_start_b2e
    const-string v7, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const-string v7, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b3f
    .catch Ljava/lang/Throwable; {:try_start_b2e .. :try_end_b3f} :catch_1061

    .line 1446
    :goto_b3f
    :try_start_b3f
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v83

    .line 1447
    .restart local v83    # "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.android.smartface.SmartFaceManager"

    const/4 v9, 0x1

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v85

    .line 1448
    .local v85, "class_SmartFaceManager":Ljava/lang/Class;
    const-string v7, "SMARTFACE_SERVICE"

    move-object/from16 v0, v85

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v116

    .line 1450
    .local v116, "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    const-string v7, "com.sec.android.smartface.SmartFaceService"

    const/4 v9, 0x1

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v86

    .line 1451
    .local v86, "class_SmartFaceService":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    move-object/from16 v0, v86

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v94

    .line 1453
    .local v94, "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    move-object/from16 v0, v116

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-object/from16 v0, v94

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1454
    const-string v7, "SystemServer"

    const-string v9, "SmartFaceService loaded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8c
    .catch Ljava/lang/Exception; {:try_start_b3f .. :try_end_b8c} :catch_106b

    .line 1464
    .end local v83    # "cl":Ljava/lang/ClassLoader;
    .end local v85    # "class_SmartFaceManager":Ljava/lang/Class;
    .end local v86    # "class_SmartFaceService":Ljava/lang/Class;
    .end local v94    # "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    .end local v116    # "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    :goto_b8c
    :try_start_b8c
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_b98
    .catch Ljava/lang/Throwable; {:try_start_b8c .. :try_end_b98} :catch_1077

    .line 1470
    :goto_b98
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110047

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_bbe

    .line 1473
    :try_start_ba5
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    new-instance v110, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v110

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_bb5
    .catch Ljava/lang/Throwable; {:try_start_ba5 .. :try_end_bb5} :catch_1083

    .line 1476
    .end local v109    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v110, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_bb5
    const-string v7, "dreams"

    move-object/from16 v0, v110

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_bbc
    .catch Ljava/lang/Throwable; {:try_start_bb5 .. :try_end_bbc} :catch_12a5

    move-object/from16 v109, v110

    .line 1484
    .end local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v109    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_bbe
    :goto_bbe
    :try_start_bbe
    const-string v7, "SystemServer"

    const-string v9, "Transcloud Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const/16 v171, 0x0

    .line 1486
    .local v171, "signatureMatch":Z
    const/4 v7, 0x1

    new-array v0, v7, [Landroid/content/pm/Signature;

    move-object/from16 v66, v0

    const/4 v7, 0x0

    new-instance v9, Landroid/content/pm/Signature;

    const-string v11, "3082028d308201f6a003020102020451d6e699300d06092a864886f70d0101050500308189310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373311e301c060355040b13154d6f62696c6520436f6d6d756e69636174696f6e733119301706035504030c10522644205465616d202d204b6f7265613020170d3133303730353135333033335a180f33303132313130353135333033335a308189310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373311e301c060355040b13154d6f62696c6520436f6d6d756e69636174696f6e733119301706035504030c10522644205465616d202d204b6f72656130819f300d06092a864886f70d010101050003818d0030818902818100a6e89d098ec79db8b54f962d66f1dace845df86bd14dbe05d544340f7f664ed07b8ea12f1647f2c5c1123bd09def349ffcf627a118d2ba6aaefc98521483e6d27f13487b7a675f6357a82da65da9e057808057617a1c74813954d8863267a3cad97455b19373c9ca48c48044f4e610e7750c24bd63601117e76e7344183c72d70203010001300d06092a864886f70d01010505000381810081743a7e1b1b844668dd5f1432e0b2556229e42a96acfdd656cabeffcb3071b7fe2826d615ec9334ea384c9ccf80f2336c39c751fbead8094b0b7da3bac48762f359f23c92e7c9a78e9fc790850aceb8318db48b53e1214ff0ed6b0b94a137622ced7d21190a6696cd4655900673fa7ff1e5214f06f68ca63be0b5d6ca99d74f"

    invoke-direct {v9, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v9, v66, v7
    :try_end_bd6
    .catch Ljava/lang/Throwable; {:try_start_bbe .. :try_end_bd6} :catch_11f6

    .line 1488
    .local v66, "SIGNATURES":[Landroid/content/pm/Signature;
    :try_start_bd6
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.samsung.android.service.transcloud"

    const/16 v11, 0x40

    invoke-virtual {v7, v9, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v156

    .line 1489
    .local v156, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v156

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v172, v0

    .line 1490
    .local v172, "signatures":[Landroid/content/pm/Signature;
    if-eqz v172, :cond_109d

    .line 1491
    move-object/from16 v74, v172

    .local v74, "arr$":[Landroid/content/pm/Signature;
    move-object/from16 v0, v74

    array-length v0, v0

    move/from16 v128, v0

    .local v128, "len$":I
    const/16 v119, 0x0

    .local v119, "i$":I
    :goto_bf3
    move/from16 v0, v119

    move/from16 v1, v128

    if-ge v0, v1, :cond_109d

    aget-object v170, v74, v119

    .line 1492
    .local v170, "signature":Landroid/content/pm/Signature;
    const/16 v118, 0x0

    .local v118, "i":I
    :goto_bfd
    move-object/from16 v0, v66

    array-length v7, v0

    move/from16 v0, v118

    if-ge v0, v7, :cond_c10

    .line 1493
    aget-object v7, v66, v118

    move-object/from16 v0, v170

    invoke-virtual {v7, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_c0b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bd6 .. :try_end_c0b} :catch_1093
    .catch Ljava/lang/Throwable; {:try_start_bd6 .. :try_end_c0b} :catch_11f6

    move-result v7

    if-eqz v7, :cond_108f

    .line 1494
    const/16 v171, 0x1

    .line 1491
    :cond_c10
    add-int/lit8 v119, v119, 0x1

    goto :goto_bf3

    .line 390
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v66    # "SIGNATURES":[Landroid/content/pm/Signature;
    .end local v71    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v74    # "arr$":[Landroid/content/pm/Signature;
    .end local v98    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v104    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v109    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v112    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v118    # "i":I
    .end local v119    # "i$":I
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v128    # "len$":I
    .end local v130    # "location":Lcom/android/server/LocationManagerService;
    .end local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v137    # "mdsEnable":Ljava/lang/String;
    .end local v152    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v155    # "packageMgr":Landroid/content/pm/PackageManager;
    .end local v156    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v170    # "signature":Landroid/content/pm/Signature;
    .end local v171    # "signatureMatch":Z
    .end local v172    # "signatures":[Landroid/content/pm/Signature;
    .end local v176    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v188    # "transcloud":Landroid/os/IBinder;
    .end local v189    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v191    # "tvoutEnable":Ljava/lang/String;
    .end local v203    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v148    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_c13
    :try_start_c13
    new-instance v179, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v179

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_c1a
    .catch Ljava/lang/RuntimeException; {:try_start_c13 .. :try_end_c1a} :catch_c77

    .line 391
    .end local v178    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v179, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_c1a
    const-string v7, "telephony.registry"

    move-object/from16 v0, v179

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 393
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1427

    .line 394
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v147, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v147

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_c38
    .catch Ljava/lang/RuntimeException; {:try_start_c1a .. :try_end_c38} :catch_134d

    .line 396
    .end local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v147    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_c38
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v147

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c3f
    .catch Ljava/lang/RuntimeException; {:try_start_c38 .. :try_end_c3f} :catch_135c

    move-object/from16 v178, v179

    .end local v179    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v178    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_198

    .line 441
    .end local v147    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v100    # "cryptState":Ljava/lang/String;
    .restart local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :cond_c43
    :try_start_c43
    const-string v7, "1"

    move-object/from16 v0, v100

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1fc

    .line 442
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v24, 0x1

    goto/16 :goto_1fc

    .line 452
    :catch_c58
    move-exception v111

    .line 453
    .local v111, "e":Ljava/lang/Throwable;
    :goto_c59
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure starting Container Service"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v111 .. v111}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c75
    .catch Ljava/lang/RuntimeException; {:try_start_c43 .. :try_end_c75} :catch_c77

    goto/16 :goto_21a

    .line 639
    .end local v100    # "cryptState":Ljava/lang/String;
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_c77
    move-exception v111

    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v129

    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v123, v124

    .line 640
    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .local v111, "e":Ljava/lang/RuntimeException;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    :goto_c82
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_489

    .line 464
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v111    # "e":Ljava/lang/RuntimeException;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v100    # "cryptState":Ljava/lang/String;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v183    # "timaEnabled":Z
    :catch_c94
    move-exception v111

    .line 465
    .local v111, "e":Ljava/lang/Throwable;
    :goto_c95
    :try_start_c95
    const-string v7, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_241

    .line 472
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_ca0
    move-exception v111

    .line 473
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_251

    .line 479
    .end local v111    # "e":Ljava/lang/Throwable;
    :cond_cac
    const/4 v7, 0x0

    goto/16 :goto_25b

    .line 506
    .restart local v117    # "firstBoot":Z
    :catch_caf
    move-exception v111

    .line 507
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_cb0
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b3

    .line 515
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_cbb
    move-exception v111

    .line 516
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc5
    .catch Ljava/lang/RuntimeException; {:try_start_c95 .. :try_end_cc5} :catch_c77

    goto/16 :goto_2ce

    .line 522
    .end local v111    # "e":Ljava/lang/Throwable;
    :cond_cc7
    const/4 v7, 0x0

    goto/16 :goto_2db

    .line 532
    .end local v101    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v102    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_cca
    move-exception v111

    .line 533
    .restart local v111    # "e":Ljava/lang/Throwable;
    :try_start_ccb
    const-string v7, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd4
    .catch Ljava/lang/RuntimeException; {:try_start_ccb .. :try_end_cd4} :catch_13a9

    .line 534
    const/16 v101, 0x0

    .end local v102    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v101    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_2f3

    .line 602
    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .end local v111    # "e":Ljava/lang/Throwable;
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v126    # "leds":Lcom/android/server/LEDManagerService;
    .end local v129    # "lights":Lcom/android/server/LightsService;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :cond_cd8
    const/16 v22, 0x0

    goto/16 :goto_433

    :cond_cdc
    const/16 v23, 0x0

    goto/16 :goto_437

    .line 623
    :cond_ce0
    const/4 v7, 0x1

    move/from16 v0, v114

    if-ne v0, v7, :cond_cf6

    .line 624
    :try_start_ce5
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_483

    .line 639
    :catch_cee
    move-exception v111

    move-object/from16 v200, v201

    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v126, v127

    .end local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v126    # "leds":Lcom/android/server/LEDManagerService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto :goto_c82

    .line 625
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v126    # "leds":Lcom/android/server/LEDManagerService;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :cond_cf6
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d0b

    .line 627
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_483

    .line 629
    :cond_d0b
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v79, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_d19
    .catch Ljava/lang/RuntimeException; {:try_start_ce5 .. :try_end_d19} :catch_cee

    .line 631
    .end local v78    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v79, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_d19
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 632
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Secure Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v7, "bluetooth_secure_mode_manager"

    new-instance v9, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v9, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d31
    .catch Ljava/lang/RuntimeException; {:try_start_d19 .. :try_end_d31} :catch_1402

    move-object/from16 v78, v79

    .end local v79    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v78    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_483

    .line 668
    .end local v100    # "cryptState":Ljava/lang/String;
    .end local v117    # "firstBoot":Z
    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .end local v127    # "leds":Lcom/android/server/LEDManagerService;
    .end local v183    # "timaEnabled":Z
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v98    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v104    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v109    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v112    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    .restart local v126    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v130    # "location":Lcom/android/server/LocationManagerService;
    .restart local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v152    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v176    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v188    # "transcloud":Landroid/os/IBinder;
    .restart local v189    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v203    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_d35
    move-exception v111

    .line 669
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_d36
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c1

    .line 676
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_d41
    move-exception v111

    .line 677
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d2

    .line 683
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_d4d
    move-exception v111

    .line 684
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d5

    .line 689
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_d59
    move-exception v111

    .line 690
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d8

    .line 704
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_d65
    move-exception v111

    .line 705
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Containerservice preSystemReady ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f0

    .line 719
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_d71
    move-exception v111

    .line 720
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_d72
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51a

    .line 731
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_d7d
    move-exception v111

    .line 732
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52d

    .line 740
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_d89
    move-exception v111

    .line 741
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_d8a
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_544

    .line 748
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_d95
    move-exception v111

    .line 749
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_d96
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55b

    .line 758
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_da1
    move-exception v111

    .line 759
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_da2
    const-string v7, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_580

    .line 769
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_dad
    move-exception v111

    .line 770
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_dae
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Harmony EAS service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_59e

    .line 778
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_db9
    move-exception v111

    .line 779
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_dba
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b7

    .line 786
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_dc5
    move-exception v111

    .line 787
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c8

    .line 797
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_dd1
    move-exception v111

    .line 798
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d9

    .line 813
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_ddd
    move-exception v111

    .line 814
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "Failure starting SmartclipMetadata Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5fb

    .line 821
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_de9
    move-exception v111

    .line 822
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_60d

    .line 829
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_df5
    move-exception v111

    .line 830
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_df6
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_624

    .line 837
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e01
    move-exception v111

    .line 838
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_e02
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63d

    .line 847
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e0d
    move-exception v111

    move-object/from16 v25, v148

    .line 848
    .end local v148    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_e10
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_658

    .line 863
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e1b
    move-exception v111

    .line 864
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_e1c
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_66f

    .line 871
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e27
    move-exception v111

    .line 872
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_e28
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_686

    .line 880
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e33
    move-exception v111

    .line 881
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_e34
    const-string v7, "starting MSAP Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69d

    .line 907
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e3f
    move-exception v111

    .line 908
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_e40
    const-string v7, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b4

    .line 926
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e4b
    move-exception v111

    .line 927
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_e4c
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e5

    .line 970
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e57
    move-exception v111

    .line 971
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f7

    .line 978
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e63
    move-exception v111

    .line 979
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_708

    .line 996
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e6f
    move-exception v111

    .line 997
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_722

    .line 1003
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e7b
    move-exception v111

    .line 1004
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_727

    .line 1012
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e87
    move-exception v111

    .line 1013
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_e88
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_747

    .line 1020
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e93
    move-exception v111

    .line 1021
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_758

    .line 1028
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_e9f
    move-exception v111

    .line 1029
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_ea0
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_76f

    .line 1036
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_eab
    move-exception v111

    .line 1037
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_eac
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_786

    .line 1044
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_eb7
    move-exception v111

    .line 1045
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_797

    .line 1054
    .end local v111    # "e":Ljava/lang/Throwable;
    :cond_ec3
    :try_start_ec3
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eca
    .catch Ljava/lang/Throwable; {:try_start_ec3 .. :try_end_eca} :catch_ecc

    goto/16 :goto_7b2

    .line 1056
    :catch_ecc
    move-exception v111

    .line 1057
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "starting Spell Service failed: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v111

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7b2

    .line 1064
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_ee9
    move-exception v111

    .line 1065
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7ca

    .line 1076
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_ef5
    move-exception v111

    .line 1077
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_ef6
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7f0

    .line 1085
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_f01
    move-exception v111

    .line 1086
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_80f

    .line 1103
    .end local v111    # "e":Ljava/lang/Throwable;
    .restart local v84    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v87    # "clazz":Ljava/lang/Class;
    .restart local v137    # "mdsEnable":Ljava/lang/String;
    :cond_f0d
    :try_start_f0d
    const-string v7, "SystemServer"

    const-string v9, "Intel Display Observer..classLoader is null"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f14
    .catch Ljava/lang/Throwable; {:try_start_f0d .. :try_end_f14} :catch_f16

    goto/16 :goto_852

    .line 1112
    .end local v87    # "clazz":Ljava/lang/Class;
    :catch_f16
    move-exception v111

    .line 1113
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Intel DisplayObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_86f

    .line 1110
    .end local v111    # "e":Ljava/lang/Throwable;
    .restart local v87    # "clazz":Ljava/lang/Class;
    :cond_f22
    :try_start_f22
    const-string v7, "SystemServer"

    const-string v9, "Intel Display Observer.. clazz is null"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f29
    .catch Ljava/lang/Throwable; {:try_start_f22 .. :try_end_f29} :catch_f16

    goto/16 :goto_86f

    .line 1121
    .end local v84    # "classLoader":Ljava/lang/ClassLoader;
    .end local v87    # "clazz":Ljava/lang/Class;
    :catch_f2b
    move-exception v111

    .line 1122
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_87f

    .line 1130
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_f37
    move-exception v111

    .line 1131
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_892

    .line 1139
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_f43
    move-exception v111

    .line 1140
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_f44
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8a9

    .line 1148
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_f4f
    move-exception v111

    .line 1149
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_f50
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8c0

    .line 1155
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_f5b
    move-exception v111

    .line 1156
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8d0

    .line 1163
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_f67
    move-exception v111

    .line 1164
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e2

    .line 1173
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_f73
    move-exception v111

    .line 1174
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8ff

    .line 1183
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_f7f
    move-exception v111

    .line 1184
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_910

    .line 1191
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_f8b
    move-exception v111

    .line 1192
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_f8c
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_927

    .line 1198
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_f97
    move-exception v111

    .line 1199
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_937

    .line 1205
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_fa3
    move-exception v111

    .line 1206
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_948

    .line 1213
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_faf
    move-exception v111

    .line 1214
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_95d

    .line 1225
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_fbb
    move-exception v111

    .line 1226
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting SpenGestureManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_981

    .line 1237
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_fc7
    move-exception v111

    .line 1238
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_992

    .line 1244
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_fd3
    move-exception v111

    .line 1245
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9a2

    .line 1298
    .end local v111    # "e":Ljava/lang/Throwable;
    .restart local v191    # "tvoutEnable":Ljava/lang/String;
    .restart local v192    # "tvoutclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_fdf
    :try_start_fdf
    const-string v7, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v73, v0

    .line 1302
    .local v73, "arg":[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v73, v7

    .line 1304
    move-object/from16 v0, v192

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v93

    .line 1306
    .local v93, "constructor":Ljava/lang/reflect/Constructor;
    const-string v9, "tvoutservice"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    move-object/from16 v0, v93

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_100b
    .catch Ljava/lang/Throwable; {:try_start_fdf .. :try_end_100b} :catch_100d

    goto/16 :goto_9e4

    .line 1309
    .end local v73    # "arg":[Ljava/lang/Class;
    .end local v93    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v192    # "tvoutclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_100d
    move-exception v111

    .line 1311
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9e4

    .line 1323
    .end local v111    # "e":Ljava/lang/Throwable;
    .restart local v155    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_1019
    move-exception v111

    .line 1324
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a07

    .line 1352
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_1025
    move-exception v111

    .line 1353
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_acc

    .line 1364
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_1031
    move-exception v111

    .line 1365
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_aeb

    .line 1377
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_103d
    move-exception v111

    .line 1379
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Ultrasonic Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b06

    .line 1388
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_1049
    move-exception v111

    .line 1389
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_104a
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b1d

    .line 1395
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_1055
    move-exception v111

    .line 1396
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b2e

    .line 1402
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_1061
    move-exception v111

    .line 1403
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b3f

    .line 1455
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_106b
    move-exception v111

    .line 1456
    .local v111, "e":Ljava/lang/Exception;
    const-string v7, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b8c

    .line 1466
    .end local v111    # "e":Ljava/lang/Exception;
    :catch_1077
    move-exception v111

    .line 1467
    .local v111, "e":Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b98

    .line 1477
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_1083
    move-exception v111

    .line 1478
    .restart local v111    # "e":Ljava/lang/Throwable;
    :goto_1084
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bbe

    .line 1492
    .end local v111    # "e":Ljava/lang/Throwable;
    .restart local v66    # "SIGNATURES":[Landroid/content/pm/Signature;
    .restart local v74    # "arr$":[Landroid/content/pm/Signature;
    .restart local v118    # "i":I
    .restart local v119    # "i$":I
    .restart local v128    # "len$":I
    .restart local v156    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v170    # "signature":Landroid/content/pm/Signature;
    .restart local v171    # "signatureMatch":Z
    .restart local v172    # "signatures":[Landroid/content/pm/Signature;
    :cond_108f
    add-int/lit8 v118, v118, 0x1

    goto/16 :goto_bfd

    .line 1500
    .end local v74    # "arr$":[Landroid/content/pm/Signature;
    .end local v118    # "i":I
    .end local v119    # "i$":I
    .end local v128    # "len$":I
    .end local v156    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v170    # "signature":Landroid/content/pm/Signature;
    .end local v172    # "signatures":[Landroid/content/pm/Signature;
    :catch_1093
    move-exception v111

    .line 1501
    .local v111, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1094
    const-string v7, "SystemServer"

    const-string v9, "Can\'t find transcloud package"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const/16 v171, 0x0

    .line 1504
    .end local v111    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_109d
    const-string v7, "eng"

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10a9

    if-eqz v171, :cond_11ed

    .line 1505
    :cond_10a9
    const-string v7, "com.samsung.android.service.transcloud"

    const/4 v9, 0x3

    invoke-virtual {v5, v7, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v70

    .line 1506
    .local v70, "apkContext":Landroid/content/Context;
    invoke-virtual/range {v70 .. v70}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v9, "com.samsung.android.service.transcloud.system.TranscloudManagerService"

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v136

    .line 1507
    .local v136, "managerServiceClazz":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    const-class v11, Landroid/os/Handler;

    aput-object v11, v7, v9

    move-object/from16 v0, v136

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const/4 v11, 0x1

    aput-object v21, v9, v11

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v188, v0

    .line 1508
    const-string v7, "transcloud"

    move-object/from16 v0, v188

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10e6
    .catch Ljava/lang/Throwable; {:try_start_1094 .. :try_end_10e6} :catch_11f6

    .line 1518
    .end local v66    # "SIGNATURES":[Landroid/content/pm/Signature;
    .end local v70    # "apkContext":Landroid/content/Context;
    .end local v136    # "managerServiceClazz":Ljava/lang/Class;
    .end local v171    # "signatureMatch":Z
    :goto_10e6
    :try_start_10e6
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_10f2
    .catch Ljava/lang/Throwable; {:try_start_10e6 .. :try_end_10f2} :catch_1215

    .line 1527
    .end local v137    # "mdsEnable":Ljava/lang/String;
    .end local v155    # "packageMgr":Landroid/content/pm/PackageManager;
    .end local v191    # "tvoutEnable":Ljava/lang/String;
    :goto_10f2
    const-string v7, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_ABSOLUTE_ENABLE=FALSE - true"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :try_start_10f9
    const-string v7, "SystemServer"

    const-string v9, "Absolute Persistence Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const-string v7, "ABTPersistenceService"

    new-instance v9, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_110a
    .catch Ljava/lang/Throwable; {:try_start_10f9 .. :try_end_110a} :catch_1221

    .line 1552
    :goto_110a
    invoke-virtual/range {v212 .. v212}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1553
    .local v47, "safeMode":Z
    if-eqz v47, :cond_122d

    .line 1554
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1556
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1558
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1567
    :goto_1121
    :try_start_1121
    invoke-virtual/range {v200 .. v200}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_1124
    .catch Ljava/lang/Throwable; {:try_start_1121 .. :try_end_1124} :catch_1236

    .line 1573
    :goto_1124
    :try_start_1124
    invoke-virtual/range {v132 .. v132}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_1127
    .catch Ljava/lang/Throwable; {:try_start_1124 .. :try_end_1127} :catch_1242

    .line 1578
    :goto_1127
    if-eqz v104, :cond_112c

    .line 1580
    :try_start_1129
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_112c
    .catch Ljava/lang/Throwable; {:try_start_1129 .. :try_end_112c} :catch_124e

    .line 1588
    :cond_112c
    :goto_112c
    if-eqz v112, :cond_1138

    .line 1589
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1590
    const-string v7, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_1138
    if-eqz v152, :cond_113d

    .line 1596
    :try_start_113a
    invoke-virtual/range {v152 .. v152}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_113d
    .catch Ljava/lang/Throwable; {:try_start_113a .. :try_end_113d} :catch_125a

    .line 1603
    :cond_113d
    :goto_113d
    :try_start_113d
    invoke-virtual/range {v212 .. v212}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_1140
    .catch Ljava/lang/Throwable; {:try_start_113d .. :try_end_1140} :catch_1266

    .line 1608
    :goto_1140
    if-eqz v47, :cond_1149

    .line 1609
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1615
    :cond_1149
    invoke-virtual/range {v212 .. v212}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v90

    .line 1616
    .local v90, "config":Landroid/content/res/Configuration;
    new-instance v138, Landroid/util/DisplayMetrics;

    invoke-direct/range {v138 .. v138}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1617
    .local v138, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v202

    check-cast v202, Landroid/view/WindowManager;

    .line 1618
    .local v202, "w":Landroid/view/WindowManager;
    invoke-interface/range {v202 .. v202}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v138

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1619
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v90

    move-object/from16 v1, v138

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1622
    :try_start_116e
    move-object/from16 v0, v193

    move-object/from16 v1, v109

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_1175
    .catch Ljava/lang/Throwable; {:try_start_116e .. :try_end_1175} :catch_1272

    .line 1629
    :goto_1175
    :try_start_1175
    invoke-virtual {v6}, Lcom/android/server/LightsService;->systemReady()V
    :try_end_1178
    .catch Ljava/lang/Throwable; {:try_start_1175 .. :try_end_1178} :catch_127e

    .line 1635
    :goto_1178
    :try_start_1178
    invoke-interface/range {v157 .. v157}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_117b
    .catch Ljava/lang/Throwable; {:try_start_1178 .. :try_end_117b} :catch_128a

    .line 1641
    :goto_117b
    :try_start_117b
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_1182
    .catch Ljava/lang/Throwable; {:try_start_117b .. :try_end_1182} :catch_1296

    .line 1647
    :goto_1182
    move-object/from16 v34, v5

    .line 1648
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v142

    .line 1649
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1650
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1651
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1652
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1653
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v91

    .line 1654
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v107

    .line 1655
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v198

    .line 1656
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v193

    .line 1657
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v196

    .line 1658
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v71

    .line 1659
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v203

    .line 1660
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v120

    .line 1661
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v163

    .line 1662
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v130

    .line 1663
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v98

    .line 1664
    .local v52, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v150

    .line 1665
    .local v53, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v88

    .line 1666
    .local v54, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v189

    .line 1667
    .local v55, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v176

    .line 1668
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v109

    .line 1670
    .local v56, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v188

    .line 1672
    .local v57, "transcloudF":Landroid/os/IBinder;
    move-object/from16 v58, v19

    .line 1673
    .local v58, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v60, v178

    .line 1674
    .local v60, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v146

    .line 1678
    .local v61, "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v62, v180

    .line 1682
    .local v62, "telephonyRegistry2F":Ljava/lang/Object;
    move-object/from16 v59, v95

    .line 1690
    .local v59, "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v62}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Lcom/android/server/input/InputManagerService;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/TelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1865
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_11d7

    .line 1866
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_11d7
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1872
    const-string v7, "SystemServer"

    const-string v9, "!@End SystemServer Thread"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1875
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    return-void

    .line 1510
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
    .end local v52    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v53    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v54    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v55    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v56    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v57    # "transcloudF":Landroid/os/IBinder;
    .end local v58    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v59    # "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v60    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v61    # "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    .end local v62    # "telephonyRegistry2F":Ljava/lang/Object;
    .end local v90    # "config":Landroid/content/res/Configuration;
    .end local v138    # "metrics":Landroid/util/DisplayMetrics;
    .end local v202    # "w":Landroid/view/WindowManager;
    .restart local v66    # "SIGNATURES":[Landroid/content/pm/Signature;
    .restart local v137    # "mdsEnable":Ljava/lang/String;
    .restart local v155    # "packageMgr":Landroid/content/pm/PackageManager;
    .restart local v171    # "signatureMatch":Z
    .restart local v191    # "tvoutEnable":Ljava/lang/String;
    :cond_11ed
    :try_start_11ed
    const-string v7, "SystemServer"

    const-string v9, "Failure starting TranscloudService - signature miss match"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f4
    .catch Ljava/lang/Throwable; {:try_start_11ed .. :try_end_11f4} :catch_11f6

    goto/16 :goto_10e6

    .line 1512
    .end local v66    # "SIGNATURES":[Landroid/content/pm/Signature;
    .end local v171    # "signatureMatch":Z
    :catch_11f6
    move-exception v111

    .line 1513
    .local v111, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure starting TranscloudService "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v111 .. v111}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10e6

    .line 1520
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_1215
    move-exception v111

    .line 1521
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10f2

    .line 1533
    .end local v111    # "e":Ljava/lang/Throwable;
    .end local v137    # "mdsEnable":Ljava/lang/String;
    .end local v155    # "packageMgr":Landroid/content/pm/PackageManager;
    .end local v191    # "tvoutEnable":Ljava/lang/String;
    :catch_1221
    move-exception v111

    .line 1534
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_110a

    .line 1561
    .end local v111    # "e":Ljava/lang/Throwable;
    .restart local v47    # "safeMode":Z
    :cond_122d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_1121

    .line 1568
    :catch_1236
    move-exception v111

    .line 1569
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1124

    .line 1574
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_1242
    move-exception v111

    .line 1575
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1127

    .line 1581
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_124e
    move-exception v111

    .line 1582
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_112c

    .line 1597
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_125a
    move-exception v111

    .line 1598
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_113d

    .line 1604
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_1266
    move-exception v111

    .line 1605
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1140

    .line 1623
    .end local v111    # "e":Ljava/lang/Throwable;
    .restart local v90    # "config":Landroid/content/res/Configuration;
    .restart local v138    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v202    # "w":Landroid/view/WindowManager;
    :catch_1272
    move-exception v111

    .line 1624
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1175

    .line 1630
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_127e
    move-exception v111

    .line 1631
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1178

    .line 1636
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_128a
    move-exception v111

    .line 1637
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_117b

    .line 1642
    .end local v111    # "e":Ljava/lang/Throwable;
    :catch_1296
    move-exception v111

    .line 1643
    .restart local v111    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1182

    .line 487
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v71    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v90    # "config":Landroid/content/res/Configuration;
    .end local v98    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v104    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v109    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v111    # "e":Ljava/lang/Throwable;
    .end local v112    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v130    # "location":Lcom/android/server/LocationManagerService;
    .end local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v138    # "metrics":Landroid/util/DisplayMetrics;
    .end local v152    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v176    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v188    # "transcloud":Landroid/os/IBinder;
    .end local v189    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v202    # "w":Landroid/view/WindowManager;
    .end local v203    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v100    # "cryptState":Ljava/lang/String;
    .restart local v117    # "firstBoot":Z
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v148    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v183    # "timaEnabled":Z
    :catch_12a2
    move-exception v7

    goto/16 :goto_270

    .line 1477
    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .end local v100    # "cryptState":Ljava/lang/String;
    .end local v117    # "firstBoot":Z
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .end local v129    # "lights":Lcom/android/server/LightsService;
    .end local v148    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v183    # "timaEnabled":Z
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v71    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v98    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v104    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v112    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    .restart local v130    # "location":Lcom/android/server/LocationManagerService;
    .restart local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v137    # "mdsEnable":Ljava/lang/String;
    .restart local v152    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v155    # "packageMgr":Landroid/content/pm/PackageManager;
    .restart local v176    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v188    # "transcloud":Landroid/os/IBinder;
    .restart local v189    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v191    # "tvoutEnable":Ljava/lang/String;
    .restart local v203    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_12a5
    move-exception v111

    move-object/from16 v109, v110

    .end local v110    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v109    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_1084

    .line 1388
    .end local v88    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_12aa
    move-exception v111

    move-object/from16 v88, v89

    .end local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v88    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_104a

    .line 1191
    .end local v71    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v155    # "packageMgr":Landroid/content/pm/PackageManager;
    .end local v191    # "tvoutEnable":Ljava/lang/String;
    .restart local v72    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_12af
    move-exception v111

    move-object/from16 v71, v72

    .end local v72    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v71    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_f8c

    .line 1148
    .end local v166    # "serial":Lcom/android/server/SerialService;
    .restart local v167    # "serial":Lcom/android/server/SerialService;
    :catch_12b4
    move-exception v111

    move-object/from16 v166, v167

    .end local v167    # "serial":Lcom/android/server/SerialService;
    .restart local v166    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_f50

    .line 1139
    .end local v198    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v199    # "usb":Lcom/android/server/usb/UsbService;
    :catch_12b9
    move-exception v111

    move-object/from16 v198, v199

    .end local v199    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v198    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_f44

    .line 1076
    .end local v137    # "mdsEnable":Ljava/lang/String;
    .end local v203    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v204    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_12be
    move-exception v111

    move-object/from16 v203, v204

    .end local v204    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v203    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_ef6

    .line 1036
    .end local v98    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v99    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_12c3
    move-exception v111

    move-object/from16 v98, v99

    .end local v99    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v98    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_eac

    .line 1028
    .end local v130    # "location":Lcom/android/server/LocationManagerService;
    .restart local v131    # "location":Lcom/android/server/LocationManagerService;
    :catch_12c8
    move-exception v111

    move-object/from16 v130, v131

    .end local v131    # "location":Lcom/android/server/LocationManagerService;
    .restart local v130    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_ea0

    .line 1012
    .end local v152    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v153    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_12cd
    move-exception v111

    move-object/from16 v152, v153

    .end local v153    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v152    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_e88

    .line 926
    .end local v91    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_12d2
    move-exception v111

    move-object/from16 v91, v92

    .end local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v91    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_e4c

    .line 907
    .end local v205    # "wfd":Lcom/samsung/wfd/WfdService;
    .restart local v206    # "wfd":Lcom/samsung/wfd/WfdService;
    :catch_12d7
    move-exception v111

    move-object/from16 v205, v206

    .end local v206    # "wfd":Lcom/samsung/wfd/WfdService;
    .restart local v205    # "wfd":Lcom/samsung/wfd/WfdService;
    goto/16 :goto_e40

    .line 880
    .end local v144    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v145    # "msapwifi":Lcom/android/server/MsapWifiService;
    :catch_12dc
    move-exception v111

    move-object/from16 v144, v145

    .end local v145    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v144    # "msapwifi":Lcom/android/server/MsapWifiService;
    goto/16 :goto_e34

    .line 871
    .end local v207    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v208    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_12e1
    move-exception v111

    move-object/from16 v207, v208

    .end local v208    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v207    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_e28

    .line 863
    .end local v210    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v211    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_12e6
    move-exception v111

    move-object/from16 v210, v211

    .end local v211    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v210    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_e1c

    .line 847
    :catch_12eb
    move-exception v111

    goto/16 :goto_e10

    .line 837
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v148    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v149    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_12ee
    move-exception v111

    move-object/from16 v29, v149

    .end local v149    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_e02

    .line 829
    .end local v189    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v190    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_12f3
    move-exception v111

    move-object/from16 v189, v190

    .end local v190    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v189    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_df6

    .line 778
    .end local v176    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v177    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_12f8
    move-exception v111

    move-object/from16 v176, v177

    .end local v177    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v176    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_dba

    .line 769
    .end local v134    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v135    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_12fd
    move-exception v111

    move-object/from16 v134, v135

    .end local v135    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v134    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_dae

    .line 758
    .end local v112    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v113    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_1302
    move-exception v111

    move-object/from16 v112, v113

    .end local v113    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v112    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_da2

    .line 748
    .end local v104    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v105    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_1307
    move-exception v111

    move-object/from16 v104, v105

    .end local v105    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v104    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_d96

    .line 740
    .end local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v133    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_130c
    move-exception v111

    move-object/from16 v132, v133

    .end local v133    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_d8a

    .line 719
    .end local v142    # "mountService":Lcom/android/server/MountService;
    .restart local v143    # "mountService":Lcom/android/server/MountService;
    :catch_1311
    move-exception v111

    move-object/from16 v142, v143

    .end local v143    # "mountService":Lcom/android/server/MountService;
    .restart local v142    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_d72

    .line 698
    :catch_1316
    move-exception v7

    goto/16 :goto_4eb

    .line 668
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v121    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_1319
    move-exception v111

    move-object/from16 v120, v121

    .end local v121    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_d36

    .line 639
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v10    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v71    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v98    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v104    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v109    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v112    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v130    # "location":Lcom/android/server/LocationManagerService;
    .end local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v152    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v176    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v188    # "transcloud":Landroid/os/IBinder;
    .end local v189    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v203    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v158    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_131e
    move-exception v111

    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v10, v106

    .end local v106    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v10    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v158

    .end local v158    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v129

    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_c82

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v10    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v158    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_132d
    move-exception v111

    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v10, v106

    .end local v106    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v10    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v158

    .end local v158    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v129

    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v10    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    :catch_133e
    move-exception v111

    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v10, v106

    .end local v106    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v10    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v129

    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v178    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v179    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_134d
    move-exception v111

    move-object/from16 v178, v179

    .end local v179    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v178    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v129

    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v178    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v147    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v179    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_135c
    move-exception v111

    move-object/from16 v146, v147

    .end local v147    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v178, v179

    .end local v179    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v178    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v129

    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v147    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :catch_136d
    move-exception v111

    move-object/from16 v146, v147

    .end local v147    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v129

    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v95    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v96    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v100    # "cryptState":Ljava/lang/String;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    :catch_137c
    move-exception v111

    move-object/from16 v95, v96

    .end local v96    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v95    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v129

    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v186    # "timaService":Lcom/android/server/TimaService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v183    # "timaEnabled":Z
    .restart local v187    # "timaService":Lcom/android/server/TimaService;
    :catch_138b
    move-exception v111

    move-object/from16 v186, v187

    .end local v187    # "timaService":Lcom/android/server/TimaService;
    .restart local v186    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v129

    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v67    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .restart local v68    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v117    # "firstBoot":Z
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    :catch_139a
    move-exception v111

    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v129

    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v67, v68

    .end local v68    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v67    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v101    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v102    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    :catch_13a9
    move-exception v111

    move-object/from16 v101, v102

    .end local v102    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v101    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v129

    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    :catch_13b8
    move-exception v111

    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v126    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v127    # "leds":Lcom/android/server/LEDManagerService;
    :catch_13c3
    move-exception v111

    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v126, v127

    .end local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v126    # "leds":Lcom/android/server/LEDManagerService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v126    # "leds":Lcom/android/server/LEDManagerService;
    .end local v181    # "thermalservice":Lcom/android/server/ThermalService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v182    # "thermalservice":Lcom/android/server/ThermalService;
    :catch_13d0
    move-exception v111

    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v181, v182

    .end local v182    # "thermalservice":Lcom/android/server/ThermalService;
    .restart local v181    # "thermalservice":Lcom/android/server/ThermalService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v126, v127

    .end local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v126    # "leds":Lcom/android/server/LEDManagerService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v126    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v127    # "leds":Lcom/android/server/LEDManagerService;
    :catch_13df
    move-exception v111

    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v126, v127

    .end local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v126    # "leds":Lcom/android/server/LEDManagerService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v126    # "leds":Lcom/android/server/LEDManagerService;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :catch_13ea
    move-exception v111

    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v69

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v200, v201

    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v126, v127

    .end local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v126    # "leds":Lcom/android/server/LEDManagerService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v126    # "leds":Lcom/android/server/LEDManagerService;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :catch_13f7
    move-exception v111

    move-object/from16 v19, v122

    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v200, v201

    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v126, v127

    .end local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v126    # "leds":Lcom/android/server/LEDManagerService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .end local v78    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v126    # "leds":Lcom/android/server/LEDManagerService;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v79    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :catch_1402
    move-exception v111

    move-object/from16 v78, v79

    .end local v79    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v78    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v200, v201

    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v126, v127

    .end local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v126    # "leds":Lcom/android/server/LEDManagerService;
    move-object/from16 v123, v124

    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_c82

    .line 575
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v126    # "leds":Lcom/android/server/LEDManagerService;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v127    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :catch_140d
    move-exception v7

    goto/16 :goto_3b6

    .line 506
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v67    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v127    # "leds":Lcom/android/server/LEDManagerService;
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v68    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v126    # "leds":Lcom/android/server/LEDManagerService;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    :catch_1410
    move-exception v111

    move-object/from16 v67, v68

    .end local v68    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v67    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_cb0

    .line 464
    .end local v117    # "firstBoot":Z
    .end local v186    # "timaService":Lcom/android/server/TimaService;
    .restart local v187    # "timaService":Lcom/android/server/TimaService;
    :catch_1415
    move-exception v111

    move-object/from16 v186, v187

    .end local v187    # "timaService":Lcom/android/server/TimaService;
    .restart local v186    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_c95

    .line 452
    .end local v95    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v183    # "timaEnabled":Z
    .restart local v96    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :catch_141a
    move-exception v111

    move-object/from16 v95, v96

    .end local v96    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v95    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    goto/16 :goto_c59

    .end local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v77    # "battery":Lcom/android/server/BatteryService;
    .end local v100    # "cryptState":Ljava/lang/String;
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v124    # "installer":Lcom/android/server/pm/Installer;
    .end local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v98    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v104    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v109    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v112    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v123    # "installer":Lcom/android/server/pm/Installer;
    .restart local v130    # "location":Lcom/android/server/LocationManagerService;
    .restart local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v152    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v176    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v188    # "transcloud":Landroid/os/IBinder;
    .restart local v189    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v203    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_141f
    move-object/from16 v25, v148

    .end local v148    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_10f2

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v15    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v19    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v71    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v98    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v104    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v109    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v112    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v123    # "installer":Lcom/android/server/pm/Installer;
    .end local v130    # "location":Lcom/android/server/LocationManagerService;
    .end local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v152    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v176    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v188    # "transcloud":Landroid/os/IBinder;
    .end local v189    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v203    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v69    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v77    # "battery":Lcom/android/server/BatteryService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "installer":Lcom/android/server/pm/Installer;
    .restart local v129    # "lights":Lcom/android/server/LightsService;
    .restart local v147    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v148    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_1423
    move-object/from16 v146, v147

    .end local v147    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    goto/16 :goto_1b6

    .end local v178    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v179    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_1427
    move-object/from16 v147, v146

    .end local v146    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v147    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v178, v179

    .end local v179    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v178    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_198
.end method
