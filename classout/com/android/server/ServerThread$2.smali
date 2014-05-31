.class Lcom/android/server/ServerThread$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->initAndLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;

.field final synthetic val$appWidgetF:Lcom/android/server/AppWidgetService;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$batteryF:Lcom/android/server/BatteryService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

.field final synthetic val$contextF:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$dockF:Lcom/android/server/DockObserver;

.field final synthetic val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

.field final synthetic val$headless:Z

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$knoxV1Enabled:Z

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mountServiceF:Lcom/android/server/MountService;

.field final synthetic val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$printManagerF:Lcom/android/server/print/PrintManagerService;

.field final synthetic val$recognitionF:Lcom/android/server/RecognitionManagerService;

.field final synthetic val$sLocationF:Landroid/os/IBinder;

.field final synthetic val$safeMode:Z

.field final synthetic val$secGeofenceF:Landroid/os/IBinder;

.field final synthetic val$statusBarF:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$twilightF:Lcom/android/server/TwilightService;

.field final synthetic val$uiModeF:Lcom/android/server/UiModeManagerService;

.field final synthetic val$usbF:Lcom/android/server/usb/UsbService;

.field final synthetic val$wallpaperF:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;ZLcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V
    .registers 37

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    iput-boolean p2, p0, Lcom/android/server/ServerThread$2;->val$headless:Z

    iput-object p3, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/ServerThread$2;->val$mountServiceF:Lcom/android/server/MountService;

    iput-object p5, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    iput-object p6, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p7, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p8, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p9, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p10, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    iput-object p11, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    iput-object p12, p0, Lcom/android/server/ServerThread$2;->val$twilightF:Lcom/android/server/TwilightService;

    iput-object p13, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    iput-object p14, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/ServerThread$2;->val$safeMode:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$secGeofenceF:Landroid/os/IBinder;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$sLocationF:Landroid/os/IBinder;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/android/server/ServerThread$2;->val$knoxV1Enabled:Z

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$printManagerF:Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 1783
    const-string v5, "SystemServer"

    const-string v6, "Making services ready"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_182

    .line 1790
    :goto_e
    iget-boolean v5, p0, Lcom/android/server/ServerThread$2;->val$headless:Z

    if-nez v5, :cond_1c

    .line 1791
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/ServerThread;->startSystemUi(Landroid/content/Context;)V

    .line 1792
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/ServerThread;->startFingerprintService(Landroid/content/Context;)V

    .line 1795
    :cond_1c
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$mountServiceF:Lcom/android/server/MountService;

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$mountServiceF:Lcom/android/server/MountService;

    invoke-virtual {v5}, Lcom/android/server/MountService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_25} :catch_18c

    .line 1800
    :cond_25
    :goto_25
    :try_start_25
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    invoke-virtual {v5}, Lcom/android/server/BatteryService;->systemReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2e} :catch_196

    .line 1805
    :cond_2e
    :goto_2e
    :try_start_2e
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v5}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_37} :catch_1a0

    .line 1810
    :cond_37
    :goto_37
    :try_start_37
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v5, :cond_40

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_40} :catch_1aa

    .line 1815
    :cond_40
    :goto_40
    :try_start_40
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v5, :cond_49

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_49} :catch_1b4

    .line 1820
    :cond_49
    :goto_49
    :try_start_49
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v5, :cond_52

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_52} :catch_1be

    .line 1825
    :cond_52
    :goto_52
    :try_start_52
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    if-eqz v5, :cond_5b

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    invoke-virtual {v5}, Lcom/android/server/DockObserver;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5b} :catch_1c8

    .line 1830
    :cond_5b
    :goto_5b
    :try_start_5b
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    if-eqz v5, :cond_64

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    invoke-virtual {v5}, Lcom/android/server/usb/UsbService;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_64} :catch_1d2

    .line 1835
    :cond_64
    :goto_64
    :try_start_64
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$twilightF:Lcom/android/server/TwilightService;

    if-eqz v5, :cond_6d

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$twilightF:Lcom/android/server/TwilightService;

    invoke-virtual {v5}, Lcom/android/server/TwilightService;->systemReady()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6d} :catch_1dc

    .line 1840
    :cond_6d
    :goto_6d
    :try_start_6d
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    if-eqz v5, :cond_76

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5}, Lcom/android/server/UiModeManagerService;->systemReady()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_76} :catch_1e6

    .line 1845
    :cond_76
    :goto_76
    :try_start_76
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    if-eqz v5, :cond_7f

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v5}, Lcom/android/server/RecognitionManagerService;->systemReady()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_7f} :catch_1f0

    .line 1849
    :cond_7f
    :goto_7f
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/Watchdog;->start()V

    .line 1855
    :try_start_86
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    if-eqz v5, :cond_91

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iget-boolean v6, p0, Lcom/android/server/ServerThread$2;->val$safeMode:Z

    invoke-virtual {v5, v6}, Lcom/android/server/AppWidgetService;->systemRunning(Z)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_91} :catch_1fa

    .line 1860
    :cond_91
    :goto_91
    :try_start_91
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    if-eqz v5, :cond_9a

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v5}, Lcom/android/server/WallpaperManagerService;->systemRunning()V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_9a} :catch_204

    .line 1865
    :cond_9a
    :goto_9a
    :try_start_9a
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v5, :cond_a5

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v6, p0, Lcom/android/server/ServerThread$2;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/StatusBarManagerService;)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_a5} :catch_20e

    .line 1870
    :cond_a5
    :goto_a5
    :try_start_a5
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v5, :cond_ae

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v5}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_ae} :catch_218

    .line 1875
    :cond_ae
    :goto_ae
    :try_start_ae
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$secGeofenceF:Landroid/os/IBinder;

    if-eqz v5, :cond_dd

    .line 1876
    const-string v5, "com.samsung.geofence.SecGeofenceLoader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1877
    .local v3, "secGeofenceLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "systemReady"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1878
    .local v4, "secGeofenceSystemReady":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/ServerThread$2;->val$secGeofenceF:Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_dd} :catch_222

    .line 1884
    .end local v3    # "secGeofenceLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "secGeofenceSystemReady":Ljava/lang/reflect/Method;
    :cond_dd
    :goto_dd
    :try_start_dd
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$sLocationF:Landroid/os/IBinder;

    if-eqz v5, :cond_10c

    .line 1885
    const-string v5, "com.samsung.location.SLocationLoader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1886
    .local v1, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "systemReady"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1887
    .local v2, "sLocationSystemReady":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/ServerThread$2;->val$sLocationF:Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_10c} :catch_241

    .line 1893
    .end local v1    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "sLocationSystemReady":Ljava/lang/reflect/Method;
    :cond_10c
    :goto_10c
    :try_start_10c
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v5, :cond_115

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v5}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_115
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_115} :catch_260

    .line 1898
    :cond_115
    :goto_115
    :try_start_115
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v5, :cond_11e

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v5}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_115 .. :try_end_11e} :catch_26a

    .line 1903
    :cond_11e
    :goto_11e
    :try_start_11e
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v5, :cond_127

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v5}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_11e .. :try_end_127} :catch_274

    .line 1908
    :cond_127
    :goto_127
    :try_start_127
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v5, :cond_130

    .line 1909
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v5}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_130
    .catch Ljava/lang/Throwable; {:try_start_127 .. :try_end_130} :catch_27e

    .line 1914
    :cond_130
    :goto_130
    :try_start_130
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v5, :cond_139

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v5}, Lcom/android/server/dreams/DreamManagerService;->systemRunning()V
    :try_end_139
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_139} :catch_288

    .line 1919
    :cond_139
    :goto_139
    :try_start_139
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v5, :cond_142

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v5}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_142
    .catch Ljava/lang/Throwable; {:try_start_139 .. :try_end_142} :catch_292

    .line 1925
    :cond_142
    :goto_142
    :try_start_142
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v5, :cond_14b

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v5}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_14b
    .catch Ljava/lang/Throwable; {:try_start_142 .. :try_end_14b} :catch_29c

    .line 1931
    :cond_14b
    :goto_14b
    :try_start_14b
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v5, :cond_154

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v5}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_154
    .catch Ljava/lang/Throwable; {:try_start_14b .. :try_end_154} :catch_2a6

    .line 1937
    :cond_154
    :goto_154
    iget-boolean v5, p0, Lcom/android/server/ServerThread$2;->val$knoxV1Enabled:Z

    if-eqz v5, :cond_161

    .line 1939
    :try_start_158
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

    if-eqz v5, :cond_161

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v5}, Lcom/sec/knox/container/EnterpriseContainerService;->systemReady()V
    :try_end_161
    .catch Ljava/lang/Throwable; {:try_start_158 .. :try_end_161} :catch_2b0

    .line 1947
    :cond_161
    :goto_161
    :try_start_161
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

    if-eqz v5, :cond_16a

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

    invoke-virtual {v5}, Lcom/android/server/MSimTelephonyRegistry;->systemRunning()V
    :try_end_16a
    .catch Ljava/lang/Throwable; {:try_start_161 .. :try_end_16a} :catch_2ba

    .line 1953
    :cond_16a
    :goto_16a
    :try_start_16a
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$printManagerF:Lcom/android/server/print/PrintManagerService;

    if-eqz v5, :cond_173

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$printManagerF:Lcom/android/server/print/PrintManagerService;

    invoke-virtual {v5}, Lcom/android/server/print/PrintManagerService;->systemRuning()V
    :try_end_173
    .catch Ljava/lang/Throwable; {:try_start_16a .. :try_end_173} :catch_2c4

    .line 1959
    :cond_173
    :goto_173
    :try_start_173
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v5, :cond_17c

    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v5}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_17c
    .catch Ljava/lang/Throwable; {:try_start_173 .. :try_end_17c} :catch_2ce

    .line 1965
    :cond_17c
    :goto_17c
    :try_start_17c
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/ServerThread;->startEmergencyModeService(Landroid/content/Context;)V
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_181} :catch_2d8

    .line 1968
    :goto_181
    return-void

    .line 1787
    :catch_182
    move-exception v0

    .line 1788
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "observing native crashes"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1796
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_18c
    move-exception v0

    .line 1797
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Mount Service ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1801
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_196
    move-exception v0

    .line 1802
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Battery Service ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1806
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1a0
    move-exception v0

    .line 1807
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Network Managment Service ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1811
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1aa
    move-exception v0

    .line 1812
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Network Stats Service ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1816
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1b4
    move-exception v0

    .line 1817
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Network Policy Service ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1821
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1be
    move-exception v0

    .line 1822
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Connectivity Service ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1826
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1c8
    move-exception v0

    .line 1827
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Dock Service ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b

    .line 1831
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1d2
    move-exception v0

    .line 1832
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making USB Service ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_64

    .line 1836
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1dc
    move-exception v0

    .line 1837
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "makin Twilight Service ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    .line 1841
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1e6
    move-exception v0

    .line 1842
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making UI Mode Service ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_76

    .line 1846
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1f0
    move-exception v0

    .line 1847
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Recognition Service ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7f

    .line 1856
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1fa
    move-exception v0

    .line 1857
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying AppWidgetService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_91

    .line 1861
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_204
    move-exception v0

    .line 1862
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying WallpaperService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9a

    .line 1866
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_20e
    move-exception v0

    .line 1867
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying InputMethodService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a5

    .line 1871
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_218
    move-exception v0

    .line 1872
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying Location Service running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ae

    .line 1880
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_222
    move-exception v0

    .line 1881
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "making SecGeofence Service ready :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_dd

    .line 1889
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_241
    move-exception v0

    .line 1890
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "making SLocation Service ready :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10c

    .line 1894
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_260
    move-exception v0

    .line 1895
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying CountryDetectorService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_115

    .line 1899
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_26a
    move-exception v0

    .line 1900
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying NetworkTimeService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11e

    .line 1904
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_274
    move-exception v0

    .line 1905
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying CommonTimeManagementService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_127

    .line 1910
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_27e
    move-exception v0

    .line 1911
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying TextServicesManagerService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_130

    .line 1915
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_288
    move-exception v0

    .line 1916
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying DreamManagerService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_139

    .line 1920
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_292
    move-exception v0

    .line 1921
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying AssetAtlasService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_142

    .line 1926
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_29c
    move-exception v0

    .line 1927
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying InputManagerService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14b

    .line 1932
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2a6
    move-exception v0

    .line 1933
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying TelephonyRegistry running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_154

    .line 1940
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2b0
    move-exception v0

    .line 1941
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Containerservice ready"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_161

    .line 1948
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2ba
    move-exception v0

    .line 1949
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying TelephonyRegistry running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16a

    .line 1954
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2c4
    move-exception v0

    .line 1955
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying PrintManagerService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_173

    .line 1960
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2ce
    move-exception v0

    .line 1961
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "Notifying MediaRouterService running"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17c

    .line 1966
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2d8
    move-exception v5

    goto/16 :goto_181
.end method
