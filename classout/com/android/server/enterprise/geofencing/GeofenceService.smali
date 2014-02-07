.class public Lcom/android/server/enterprise/geofencing/GeofenceService;
.super Landroid/app/enterprise/geofencing/IGeofencing$Stub;
.source "GeofenceService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
    }
.end annotation


# static fields
.field private static final CHECK_DEVICE_POSITION:I = 0x1

.field private static final DEFAULT_TIME_LIMIT:I = 0xea60

.field private static final REFRESH_GEOFENCING:I = 0x3

.field private static final START_GEOFENCING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GeofenceService"

.field private static mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;


# instance fields
.field private mActiveGeofenceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/geofencing/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;-><init>()V

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 122
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 109
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 111
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GeofenceService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 112
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 115
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # Landroid/location/Location;
    .param p2, "x2"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/BoundingBox;"
        }
    .end annotation

    .prologue
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v6, 0x0

    .line 1583
    const/4 v0, 0x0

    .line 1584
    .local v0, "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    if-eqz p1, :cond_61

    .line 1585
    new-instance v0, Landroid/app/enterprise/geofencing/BoundingBox;

    .end local v0    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/enterprise/geofencing/BoundingBox;-><init>(Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;)V

    .line 1586
    .restart local v0    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_61

    .line 1587
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1589
    .local v2, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3a

    .line 1590
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1592
    :cond_3a
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_46

    .line 1593
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1595
    :cond_46
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_52

    .line 1596
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1598
    :cond_52
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_5e

    .line 1600
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1586
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1604
    .end local v1    # "i":I
    .end local v2    # "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_61
    return-object v0
.end method

.method private checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z
    .registers 10
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "boundingBox"    # Landroid/app/enterprise/geofencing/BoundingBox;

    .prologue
    const/4 v4, 0x0

    .line 1326
    if-eqz p1, :cond_7

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    if-nez v5, :cond_8

    .line 1335
    :cond_7
    :goto_7
    return v4

    .line 1328
    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 1329
    .local v0, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 1331
    .local v2, "lng":D
    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v5, v0, v5

    if-gtz v5, :cond_7

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v5, v0, v5

    if-ltz v5, :cond_7

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v5, v2, v5

    if-gtz v5, :cond_7

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v5, v2, v5

    if-ltz v5, :cond_7

    .line 1333
    const/4 v4, 0x1

    goto :goto_7
.end method

.method private checkDeviceInsideCircleSpherical(Landroid/location/Location;Landroid/app/enterprise/geofencing/CircularGeofence;)Z
    .registers 33
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "cfence"    # Landroid/app/enterprise/geofencing/CircularGeofence;

    .prologue
    .line 1289
    const-wide v2, 0x40b8e30000000000L

    .line 1291
    .local v2, "R":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    .line 1292
    .local v18, "pointlat":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    .line 1293
    .local v20, "pointlong":D
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .line 1294
    .local v4, "centerlat":D
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .line 1296
    .local v6, "centerlong":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 1297
    .local v12, "lat2":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 1298
    .local v16, "lon2":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 1299
    .local v10, "lat1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 1301
    .local v14, "lon1":D
    const-wide v24, 0x409925604189374cL

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    move-wide/from16 v26, v0

    mul-double v22, v24, v26

    .line 1303
    .local v22, "radInMiles":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    sub-double v28, v16, v14

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    move-result-wide v24

    mul-double v24, v24, v2

    const-wide v26, 0x408f400000000000L

    mul-double v8, v24, v26

    .line 1306
    .local v8, "distance":D
    cmpg-double v24, v8, v22

    if-gtz v24, :cond_70

    .line 1307
    const/16 v24, 0x1

    .line 1310
    :goto_6f
    return v24

    :cond_70
    const/16 v24, 0x0

    goto :goto_6f
.end method

.method private checkDeviceInsideLinear(Landroid/location/Location;Landroid/app/enterprise/geofencing/LinearGeofence;)Z
    .registers 12
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "lFence"    # Landroid/app/enterprise/geofencing/LinearGeofence;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1442
    iget-object v1, p2, Landroid/app/enterprise/geofencing/LinearGeofence;->optimizedPoints:Ljava/util/List;

    .line 1443
    .local v1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v6, 0x1

    .line 1444
    .local v6, "status":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v7, :cond_19

    move v6, v7

    .line 1446
    :goto_15
    if-ne v6, v7, :cond_1b

    move v0, v7

    .line 1450
    :goto_18
    return v0

    :cond_19
    move v6, v8

    .line 1444
    goto :goto_15

    :cond_1b
    move v0, v8

    .line 1450
    goto :goto_18
.end method

.method private declared-synchronized checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;
    .registers 8
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "sendIntent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1215
    monitor-enter p0

    const/4 v2, 0x0

    .line 1217
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 1219
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_4f

    .line 1221
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1223
    .local v1, "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1226
    .local v0, "id":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/geofencing/Geofence;

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkGeofenceInsideOrOutside(Landroid/location/Location;Landroid/app/enterprise/geofencing/Geofence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1227
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_37

    goto :goto_19

    .line 1215
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_37
    move-exception v4

    move-object v2, v3

    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_39
    monitor-exit p0

    throw v4

    .line 1231
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3b
    const/4 v4, 0x1

    if-ne p2, v4, :cond_41

    .line 1232
    :try_start_3e
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->sendIntenttoAdmins(Ljava/util/List;)V

    .line 1235
    :cond_41
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_37

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v4, 0x0

    :goto_48
    move-object v2, v3

    .line 1238
    .end local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_49
    monitor-exit p0

    return-object v4

    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4b
    move-object v4, v3

    .line 1235
    goto :goto_48

    .end local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4d
    move-object v4, v2

    .line 1238
    goto :goto_49

    .line 1215
    :catchall_4f
    move-exception v4

    goto :goto_39
.end method

.method private checkDeviceInsidePolygon(Landroid/location/Location;Landroid/app/enterprise/geofencing/PolygonalGeofence;)Z
    .registers 14
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "pFence"    # Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1392
    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    .line 1393
    .local v1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v8, 0x1

    .line 1395
    .local v8, "status":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_19

    move v8, v9

    .line 1397
    :goto_15
    if-ne v8, v9, :cond_1b

    move v0, v9

    .line 1405
    :goto_18
    return v0

    :cond_19
    move v8, v10

    .line 1395
    goto :goto_15

    .line 1400
    :cond_1b
    iget-object v3, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_31

    move v8, v9

    .line 1402
    :goto_2d
    if-ne v8, v9, :cond_33

    move v0, v9

    .line 1403
    goto :goto_18

    :cond_31
    move v8, v10

    .line 1400
    goto :goto_2d

    :cond_33
    move v0, v10

    .line 1405
    goto :goto_18
.end method

.method private checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I
    .registers 19
    .param p2, "testx"    # D
    .param p4, "testy"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;DD)I"
        }
    .end annotation

    .prologue
    .line 1349
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v0, 0x0

    .line 1350
    .local v0, "c":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1351
    .local v4, "nvert":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [D

    .line 1352
    .local v5, "vertx":[D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [D

    .line 1354
    .local v6, "verty":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2f

    .line 1355
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v7, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    aput-wide v7, v5, v1

    .line 1356
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v7, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    aput-wide v7, v6, v1

    .line 1354
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1369
    :cond_2f
    const/4 v1, 0x0

    add-int/lit8 v3, v4, -0x1

    .local v3, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_33
    if-ge v2, v4, :cond_6a

    .line 1370
    aget-wide v7, v6, v2

    cmpl-double v7, v7, p4

    if-lez v7, :cond_64

    const/4 v7, 0x1

    :goto_3c
    aget-wide v8, v6, v3

    cmpl-double v8, v8, p4

    if-lez v8, :cond_66

    const/4 v8, 0x1

    :goto_43
    if-eq v7, v8, :cond_5f

    aget-wide v7, v5, v3

    aget-wide v9, v5, v2

    sub-double/2addr v7, v9

    aget-wide v9, v6, v2

    sub-double v9, p4, v9

    mul-double/2addr v7, v9

    aget-wide v9, v6, v3

    aget-wide v11, v6, v2

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    aget-wide v9, v5, v2

    add-double/2addr v7, v9

    cmpg-double v7, p2, v7

    if-gtz v7, :cond_5f

    .line 1373
    if-nez v0, :cond_68

    .line 1374
    const/4 v0, 0x1

    .line 1369
    :cond_5f
    :goto_5f
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v3, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_33

    .line 1370
    :cond_64
    const/4 v7, 0x0

    goto :goto_3c

    :cond_66
    const/4 v8, 0x0

    goto :goto_43

    .line 1376
    :cond_68
    const/4 v0, 0x0

    goto :goto_5f

    .line 1379
    :cond_6a
    return v0
.end method

.method private checkGeofenceInsideOrOutside(Landroid/location/Location;Landroid/app/enterprise/geofencing/Geofence;)Z
    .registers 6
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "fence"    # Landroid/app/enterprise/geofencing/Geofence;

    .prologue
    const/4 v1, 0x1

    .line 1251
    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    if-ne v0, v1, :cond_f

    .line 1252
    check-cast p2, Landroid/app/enterprise/geofencing/CircularGeofence;

    .end local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideCircleSpherical(Landroid/location/Location;Landroid/app/enterprise/geofencing/CircularGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v1

    .line 1270
    :goto_e
    return v0

    .line 1255
    .restart local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_f
    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_29

    move-object v0, p2

    .line 1256
    check-cast v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    iget-object v0, v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1257
    check-cast p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .end local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygon(Landroid/location/Location;Landroid/app/enterprise/geofencing/PolygonalGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v1

    .line 1258
    goto :goto_e

    .line 1262
    .restart local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_29
    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_43

    move-object v0, p2

    .line 1263
    check-cast v0, Landroid/app/enterprise/geofencing/LinearGeofence;

    iget-object v0, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1264
    check-cast p2, Landroid/app/enterprise/geofencing/LinearGeofence;

    .end local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideLinear(Landroid/location/Location;Landroid/app/enterprise/geofencing/LinearGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v1

    .line 1265
    goto :goto_e

    .line 1270
    :cond_43
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private declared-synchronized checkMonitoring()V
    .registers 9

    .prologue
    .line 1785
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_8

    .line 1786
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->setLocationManager()V

    .line 1790
    :cond_8
    sget-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-eqz v0, :cond_16

    .line 1791
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1792
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1795
    :cond_16
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_78

    move-result v0

    if-eqz v0, :cond_20

    .line 1818
    :goto_1e
    monitor-exit p0

    return-void

    .line 1801
    :cond_20
    :try_start_20
    new-instance v4, Landroid/location/Criteria;

    invoke-direct {v4}, Landroid/location/Criteria;-><init>()V

    .line 1802
    .local v4, "criteria":Landroid/location/Criteria;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1803
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 1804
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 1805
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 1806
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 1808
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1810
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinTimeParameter()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinDistanceParameter()F

    move-result v3

    sget-object v5, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_57
    .catchall {:try_start_20 .. :try_end_56} :catchall_78

    goto :goto_1e

    .line 1813
    .end local v4    # "criteria":Landroid/location/Criteria;
    :catch_57
    move-exception v7

    .line 1814
    .local v7, "e":Ljava/lang/Exception;
    :try_start_58
    const-string v0, "GeofenceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMonitoring - EX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1816
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V
    :try_end_77
    .catchall {:try_start_58 .. :try_end_77} :catchall_78

    goto :goto_1e

    .line 1785
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private convertToLinear(Landroid/app/enterprise/geofencing/LinearGeofence;)Ljava/util/List;
    .registers 16
    .param p1, "lFence"    # Landroid/app/enterprise/geofencing/LinearGeofence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/geofencing/LinearGeofence;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1171
    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 1172
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/lit8 v1, v3, -0x1

    .line 1173
    .local v1, "j":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    .local v8, "pointList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v0, 0x0

    :goto_f
    div-int/lit8 v9, v3, 0x2

    if-ge v0, v9, :cond_54

    .line 1176
    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v10, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    add-double v9, v10, v12

    const-wide/high16 v11, 0x3fe0000000000000L

    mul-double v4, v9, v11

    .line 1177
    .local v4, "midValueLat":D
    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v10, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    add-double v9, v10, v12

    const-wide/high16 v11, 0x3fe0000000000000L

    mul-double v6, v9, v11

    .line 1178
    .local v6, "midValueLong":D
    new-instance v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .line 1179
    .local v2, "lTemp":Landroid/app/enterprise/geofencing/LatLongPoint;
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    add-int/lit8 v1, v1, -0x1

    .line 1175
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1183
    .end local v2    # "lTemp":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v4    # "midValueLat":D
    .end local v6    # "midValueLong":D
    :cond_54
    return-object v8
.end method

.method private createGracePoints(Ljava/util/List;D)Ljava/util/List;
    .registers 51
    .param p2, "graceDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v13, "frontList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v33, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v19, "listAbove":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const-wide/16 v31, 0x0

    .local v31, "slopePerpendicularAB":D
    const-wide/16 v7, 0x0

    .line 758
    .local v7, "distanceToPoint":D
    const-wide v17, 0x3f747ae147ae147bL

    .line 760
    .local v17, "latitudeNoise":D
    const-wide v20, 0x3f747ae147ae147bL

    .line 766
    .local v20, "longitudeNoise":D
    const-wide v41, 0x3ee2cc82c7677f8dL

    mul-double p2, p2, v41

    .line 771
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_25
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v14, v0, :cond_1cc

    .line 772
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    if-ne v14, v0, :cond_148

    .line 773
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 774
    .local v5, "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/16 v41, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 780
    .local v6, "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    :goto_4b
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    sub-double v41, v41, v43

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-nez v41, :cond_6f

    .line 781
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-ltz v41, :cond_15e

    .line 782
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    sub-double v41, v41, v17

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .line 787
    :cond_6f
    :goto_6f
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    sub-double v41, v41, v43

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-nez v41, :cond_93

    .line 788
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-ltz v41, :cond_16a

    .line 789
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    sub-double v41, v41, v20

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .line 794
    :cond_93
    :goto_93
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    sub-double v41, v41, v43

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v45, v0

    sub-double v43, v43, v45

    div-double v29, v41, v43

    .line 796
    .local v29, "slopeAB":D
    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    new-instance v26, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    add-double v41, v41, v43

    const-wide/high16 v43, 0x4000000000000000L

    div-double v41, v41, v43

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v45, v0

    add-double v43, v43, v45

    const-wide/high16 v45, 0x4000000000000000L

    div-double v43, v43, v45

    move-object/from16 v0, v26

    move-wide/from16 v1, v41

    move-wide/from16 v3, v43

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .line 804
    .local v26, "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide/high16 v41, 0x3ff0000000000000L

    div-double v41, v41, v29

    move-wide/from16 v0, v41

    neg-double v0, v0

    move-wide/from16 v31, v0

    .line 806
    const-wide/high16 v41, 0x3ff0000000000000L

    mul-double v43, v31, v31

    add-double v41, v41, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v41

    div-double v7, p2, v41

    .line 810
    const-wide/16 v41, 0x0

    cmpl-double v41, v29, v41

    if-lez v41, :cond_102

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpg-double v41, v41, v43

    if-ltz v41, :cond_114

    :cond_102
    const-wide/16 v41, 0x0

    cmpg-double v41, v29, v41

    if-gez v41, :cond_176

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpl-double v41, v41, v43

    if-lez v41, :cond_176

    .line 812
    :cond_114
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    mul-double v43, v31, v7

    add-double v36, v41, v43

    .line 813
    .local v36, "yNewAbove":D
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    sub-double v41, v36, v41

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    mul-double v43, v43, v31

    add-double v41, v41, v43

    div-double v34, v41, v31

    .line 815
    .local v34, "xNewAbove":D
    new-instance v41, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v41

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    .end local v34    # "xNewAbove":D
    .end local v36    # "yNewAbove":D
    :cond_144
    :goto_144
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_25

    .line 776
    .end local v5    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v6    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v26    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v29    # "slopeAB":D
    :cond_148
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 777
    .restart local v5    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v41, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v6    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_4b

    .line 784
    :cond_15e
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    add-double v41, v41, v17

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    goto/16 :goto_6f

    .line 791
    :cond_16a
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    add-double v41, v41, v20

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    goto/16 :goto_93

    .line 820
    .restart local v26    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .restart local v29    # "slopeAB":D
    :cond_176
    const-wide/16 v41, 0x0

    cmpl-double v41, v29, v41

    if-lez v41, :cond_188

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpl-double v41, v41, v43

    if-gtz v41, :cond_19a

    :cond_188
    const-wide/16 v41, 0x0

    cmpg-double v41, v29, v41

    if-gez v41, :cond_144

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpg-double v41, v41, v43

    if-gez v41, :cond_144

    .line 822
    :cond_19a
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    mul-double v43, v31, v7

    sub-double v36, v41, v43

    .line 823
    .restart local v36    # "yNewAbove":D
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    sub-double v41, v36, v41

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    mul-double v43, v43, v31

    add-double v41, v41, v43

    div-double v34, v41, v31

    .line 825
    .restart local v34    # "xNewAbove":D
    new-instance v41, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v41

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_144

    .line 835
    .end local v5    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v6    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v26    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v29    # "slopeAB":D
    .end local v34    # "xNewAbove":D
    .end local v36    # "yNewAbove":D
    :cond_1cc
    const/16 v38, 0x0

    .line 836
    .local v38, "z":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v40, v41, -0x1

    .line 837
    .local v40, "z1":I
    const/4 v14, 0x0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v16, v41, -0x1

    .local v16, "j":I
    :goto_1db
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    if-ge v14, v0, :cond_266

    .line 839
    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Double;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 840
    .local v22, "m1":D
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Double;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    .line 841
    .local v24, "m2":D
    move-object/from16 v0, v19

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 842
    .local v27, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 843
    .local v28, "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    mul-double v43, v43, v24

    sub-double v41, v41, v43

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v45, v0

    mul-double v45, v45, v22

    sub-double v43, v43, v45

    sub-double v41, v41, v43

    sub-double v43, v22, v24

    div-double v9, v41, v43

    .line 845
    .local v9, "finx":D
    mul-double v41, v22, v9

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v45, v0

    mul-double v45, v45, v22

    sub-double v43, v43, v45

    add-double v11, v41, v43

    .line 846
    .local v11, "finy":D
    new-instance v41, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v41

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v41

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    add-int/lit8 v39, v38, 0x1

    .end local v38    # "z":I
    .local v39, "z":I
    move/from16 v40, v38

    .line 837
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    move/from16 v16, v14

    move v14, v15

    .end local v15    # "i":I
    .restart local v14    # "i":I
    move/from16 v38, v39

    .end local v39    # "z":I
    .restart local v38    # "z":I
    goto/16 :goto_1db

    .line 852
    .end local v9    # "finx":D
    .end local v11    # "finy":D
    .end local v22    # "m1":D
    .end local v24    # "m2":D
    .end local v27    # "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v28    # "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_266
    return-object v13
.end method

.method private declared-synchronized deleteFromDB(I)Z
    .registers 5
    .param p1, "_id"    # I

    .prologue
    .line 1564
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1565
    .local v0, "geofence_id_value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCING"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_27

    move-result v1

    if-nez v1, :cond_1c

    .line 1567
    const/4 v1, 0x0

    .line 1570
    :goto_1a
    monitor-exit p0

    return v1

    .line 1569
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_27

    .line 1570
    const/4 v1, 0x1

    goto :goto_1a

    .line 1564
    .end local v0    # "geofence_id_value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized deleteGeofenceActiveListByAdmin(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1119
    monitor-enter p0

    const/4 v3, 0x1

    :try_start_2
    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v3

    .line 1123
    .local v0, "columns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCING"

    invoke-virtual {v3, v4, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1125
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_35

    .line 1126
    :goto_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1128
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d
    .catchall {:try_start_2 .. :try_end_2c} :catchall_3b

    goto :goto_13

    .line 1134
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_2d
    move-exception v2

    .line 1135
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string v3, "GeofenceService"

    const-string v4, "deleteGeofenceActiveListByAdmin - EX"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_3b

    .line 1137
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    .line 1131
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_37
    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_2d
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_35

    .line 1119
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_3b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private static deserializeGeoFence([B)Ljava/lang/Object;
    .registers 7
    .param p0, "b"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1194
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1195
    .local v1, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1196
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_16

    .line 1201
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "object":Ljava/lang/Object;
    :goto_12
    return-object v3

    .line 1198
    :catch_13
    move-exception v0

    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    move-object v3, v4

    .line 1199
    goto :goto_12

    .line 1200
    .end local v0    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_16
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    move-object v3, v4

    .line 1201
    goto :goto_12
.end method

.method private deviceLocationUnavailableMessage(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 1533
    const-string v1, "GeofenceService"

    const-string v2, "DEVICE_LOCATION_UNAVAILABLE"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.device.location.unavailable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    if-eq p1, v1, :cond_18

    .line 1536
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    :cond_18
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1539
    return-void
.end method

.method private enforceGeofencingPermission()I
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private findCollinear(Ljava/util/List;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1618
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    .local v4, "collinear":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v11, 0x0

    .line 1621
    .local v11, "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x1

    .local v6, "j":I
    const/4 v7, 0x2

    .local v7, "k":I
    :goto_18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_a8

    .line 1624
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1625
    .local v9, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1626
    .local v10, "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v11, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1630
    .restart local v11    # "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v14, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v0, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    iget-wide v14, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v0, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    iget-wide v14, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v0, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double v2, v12, v14

    .line 1632
    .local v2, "area":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-nez v12, :cond_88

    .line 1633
    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6f

    .line 1634
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    :cond_6f
    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_78

    .line 1636
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1637
    :cond_78
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_81

    .line 1638
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    :cond_81
    :goto_81
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 1641
    :cond_88
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a4

    .line 1642
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findFirst(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findLast(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1644
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_81

    .line 1646
    :cond_a4
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 1649
    .end local v2    # "area":D
    .end local v9    # "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v10    # "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_a8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1650
    return-object v8
.end method

.method private findFirst(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/LatLongPoint;"
        }
    .end annotation

    .prologue
    .line 1678
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1680
    .local v0, "first":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 1681
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_30

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_30

    .line 1682
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "first":Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1680
    .restart local v0    # "first":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1685
    :cond_33
    return-object v0
.end method

.method private findLast(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/LatLongPoint;"
        }
    .end annotation

    .prologue
    .line 1660
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1662
    .local v1, "last":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 1663
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_30

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_30

    .line 1664
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "last":Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1662
    .restart local v1    # "last":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1667
    :cond_33
    return-object v1
.end method

.method private getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;
    .registers 13
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1496
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1522
    :cond_9
    :goto_9
    return-object v7

    .line 1501
    :cond_a
    :try_start_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string v9, "_id"

    aput-object v9, v0, v8

    .line 1507
    .local v0, "columns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCING"

    invoke-virtual {v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1510
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1511
    .local v4, "item":Landroid/content/ContentValues;
    const-string v8, "_id"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1512
    .local v3, "id":I
    const-string v8, "adminUid"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p2, :cond_28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1513
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5b} :catch_5c

    goto :goto_28

    .line 1518
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "item":Landroid/content/ContentValues;
    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_5c
    move-exception v1

    .line 1519
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "GeofenceService"

    const-string v9, "getActiveGeofenceIdsbyAdmin - EX"

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 1517
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_65
    :try_start_65
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_5c

    move-result v8

    if-eqz v8, :cond_6c

    move-object v5, v7

    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6c
    move-object v7, v5

    goto :goto_9
.end method

.method private getEffectiveMinDistanceParameter()F
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 701
    const/4 v3, 0x0

    .line 703
    .local v3, "ret":F
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "distance"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "state"

    aput-object v7, v0, v6

    .line 708
    .local v0, "columns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "GEOFENCINGSETTINGS"

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 711
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 713
    .local v2, "item":Landroid/content/ContentValues;
    const-string v6, "state"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_1b

    .line 718
    const-string v6, "distance"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v4

    .line 720
    .local v4, "value":F
    cmpl-float v6, v3, v8

    if-nez v6, :cond_43

    .line 721
    move v3, v4

    goto :goto_1b

    .line 722
    :cond_43
    cmpl-float v6, v4, v8

    if-eqz v6, :cond_1b

    cmpl-float v6, v3, v4

    if-lez v6, :cond_1b

    .line 723
    move v3, v4

    goto :goto_1b

    .line 727
    .end local v2    # "item":Landroid/content/ContentValues;
    .end local v4    # "value":F
    :cond_4d
    return v3
.end method

.method private getEffectiveMinTimeParameter()J
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 637
    const-wide/16 v3, 0x0

    .line 639
    .local v3, "ret":J
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "time"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string v9, "state"

    aput-object v9, v0, v8

    .line 644
    .local v0, "columns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCINGSETTINGS"

    invoke-virtual {v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 647
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 649
    .local v2, "item":Landroid/content/ContentValues;
    const-string v8, "state"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_1d

    .line 654
    const-string v8, "time"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 656
    .local v5, "value":J
    cmp-long v8, v3, v10

    if-nez v8, :cond_45

    .line 657
    move-wide v3, v5

    goto :goto_1d

    .line 658
    :cond_45
    cmp-long v8, v5, v10

    if-eqz v8, :cond_1d

    cmp-long v8, v3, v5

    if-lez v8, :cond_1d

    .line 659
    move-wide v3, v5

    goto :goto_1d

    .line 663
    .end local v2    # "item":Landroid/content/ContentValues;
    .end local v5    # "value":J
    :cond_4f
    cmp-long v8, v3, v10

    if-nez v8, :cond_56

    const-wide/32 v3, 0xea60

    .end local v3    # "ret":J
    :cond_56
    return-wide v3
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1546
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_INFO"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1548
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_e

    .line 1549
    const/4 v2, 0x0

    .line 1553
    :goto_d
    return-object v2

    .line 1552
    :cond_e
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1553
    .local v0, "compName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_d
.end method

.method private isAdminHasGeofence(I)Z
    .registers 8
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1140
    const/4 v1, 0x0

    .line 1143
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_3
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v0, v4

    .line 1147
    .local v0, "columns":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCING"

    invoke-virtual {v4, v5, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1150
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_1c
    .catchall {:try_start_3 .. :try_end_15} :catchall_2c

    move-result v3

    .line 1156
    if-eqz v1, :cond_1b

    .line 1157
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_2a

    .line 1162
    .end local v0    # "columns":[Ljava/lang/String;
    :cond_1b
    :goto_1b
    return v3

    .line 1152
    :catch_1c
    move-exception v2

    .line 1153
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1d
    const-string v4, "GeofenceService"

    const-string v5, "isAdminHasGeofence - EX"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2c

    .line 1156
    if-eqz v1, :cond_1b

    .line 1157
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1b

    .line 1159
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2a
    move-exception v4

    goto :goto_1b

    .line 1155
    :catchall_2c
    move-exception v3

    .line 1156
    if-eqz v1, :cond_32

    .line 1157
    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    .line 1155
    :cond_32
    :goto_32
    throw v3

    .line 1159
    :catch_33
    move-exception v4

    goto :goto_32
.end method

.method private isDeviceInsideGeofence(I)Ljava/util/List;
    .registers 14
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 507
    const-string v8, "GeofenceService"

    const-string v9, "isDeviceInsideGeofence"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 510
    .local v6, "token":J
    const/4 v0, 0x0

    .line 511
    .local v0, "activeGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 513
    .local v4, "location":Landroid/location/Location;
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 514
    .local v1, "criteria":Landroid/location/Criteria;
    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 515
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 516
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 517
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 518
    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 521
    :try_start_23
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, "provider":Ljava/lang/String;
    if-eqz v5, :cond_3a

    const-string v8, "passive"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 523
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_43

    move-result-object v4

    .line 530
    .end local v5    # "provider":Ljava/lang/String;
    :cond_3a
    :goto_3a
    if-nez v4, :cond_4d

    .line 531
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V

    .line 537
    :goto_3f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 538
    return-object v0

    .line 525
    :catch_43
    move-exception v2

    .line 526
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "GeofenceService"

    const-string v9, "isDeviceInsideGeofence - EX"

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 527
    const/4 v4, 0x0

    goto :goto_3a

    .line 533
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4d
    invoke-direct {p0, v4, v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v3

    .line 534
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_3f
.end method

.method private declared-synchronized loadGeofenceActiveList()V
    .registers 8

    .prologue
    .line 1047
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCINGSETTINGS"

    const-string v6, "adminUid"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1050
    .local v3, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1052
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1054
    .local v2, "storedUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCINGSETTINGS"

    const-string v6, "state"

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 1056
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35
    .catchall {:try_start_1 .. :try_end_34} :catchall_54

    goto :goto_14

    .line 1060
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "storedUid":I
    .end local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_35
    move-exception v0

    .line 1061
    .local v0, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v4, "GeofenceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadGeofenceActiveList - EX"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_54

    .line 1064
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_52
    monitor-exit p0

    return-void

    .line 1047
    :catchall_54
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private parseStringToFloat(Ljava/lang/String;)F
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 732
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 734
    :goto_4
    return v1

    .line 733
    :catch_5
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private parseStringToLong(Ljava/lang/String;)J
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 740
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v1

    .line 742
    :goto_4
    return-wide v1

    .line 741
    :catch_5
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_4
.end method

.method private sendIntenttoAdmins(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1462
    .local p1, "relevantGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v7, "GeofenceService"

    const-string v8, "sendIntenttoAdmins"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ADMIN"

    const-string v9, "adminUid"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1467
    .local v6, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1468
    .local v5, "uid":I
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 1470
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_62

    .line 1471
    new-instance v3, Landroid/content/Intent;

    const-string v7, "edm.intent.action.device.inside"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v3, "intent":Landroid/content/Intent;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v2, v7, [I

    .line 1473
    .local v2, "id":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_4e

    .line 1474
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v0

    .line 1473
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1476
    :cond_4e
    const-string v7, "edm.intent.extra.geofence.id"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1477
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1478
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_15

    .line 1481
    .end local v0    # "i":I
    .end local v2    # "id":[I
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_62
    :try_start_62
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "GEOFENCINGSETTINGS"

    const-string v9, "state"

    invoke-virtual {v7, v5, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_15

    .line 1483
    new-instance v3, Landroid/content/Intent;

    const-string v7, "edm.intent.action.device.outside"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1484
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1485
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_84} :catch_85

    goto :goto_15

    .line 1487
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_85
    move-exception v7

    goto :goto_15

    .line 1492
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "uid":I
    :cond_87
    return-void
.end method

.method private serializeGeoFence(Ljava/lang/Object;)[B
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1739
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1742
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1743
    .local v2, "out":Ljava/io/ObjectOutput;
    invoke-interface {v2, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1744
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    .line 1748
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_15

    move-result-object v3

    .line 1752
    .end local v2    # "out":Ljava/io/ObjectOutput;
    :goto_14
    return-object v3

    .line 1749
    :catch_15
    move-exception v1

    .line 1750
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1752
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private setLocationManager()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    .line 143
    return-void
.end method

.method private declared-synchronized updateGeofenceActiveListbyAdmin(I)V
    .registers 15
    .param p1, "uid"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    .line 1070
    monitor-enter p0

    const/4 v9, 0x3

    :try_start_4
    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "type"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "blobdata"

    aput-object v10, v1, v9

    .line 1075
    .local v1, "columns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "GEOFENCING"

    invoke-virtual {v9, v10, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1078
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_6d

    .line 1079
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 1081
    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1083
    .local v5, "id":I
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 1085
    const-string v9, "type"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1087
    .local v8, "type":I
    const-string v9, "blobdata"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1090
    .local v3, "data":[B
    if-ne v8, v11, :cond_6f

    .line 1091
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .line 1092
    .local v7, "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    iput v5, v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;->id:I

    .line 1093
    iput v8, v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;->type:I

    .line 1094
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_64} :catch_65
    .catchall {:try_start_4 .. :try_end_64} :catchall_85

    goto :goto_1f

    .line 1111
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v7    # "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .end local v8    # "type":I
    :catch_65
    move-exception v4

    .line 1112
    .local v4, "e":Ljava/lang/Exception;
    :try_start_66
    const-string v9, "GeofenceService"

    const-string v10, "updateGeofenceActiveList - EX"

    invoke-static {v9, v10, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_85

    .line 1114
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6d
    :goto_6d
    monitor-exit p0

    return-void

    .line 1095
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "data":[B
    .restart local v5    # "id":I
    .restart local v8    # "type":I
    :cond_6f
    if-ne v8, v12, :cond_88

    .line 1096
    :try_start_71
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LinearGeofence;

    .line 1097
    .local v6, "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    iput v5, v6, Landroid/app/enterprise/geofencing/LinearGeofence;->id:I

    .line 1098
    iput v8, v6, Landroid/app/enterprise/geofencing/LinearGeofence;->type:I

    .line 1099
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_84} :catch_65
    .catchall {:try_start_71 .. :try_end_84} :catchall_85

    goto :goto_1f

    .line 1070
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v6    # "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    .end local v8    # "type":I
    :catchall_85
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1101
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "data":[B
    .restart local v5    # "id":I
    .restart local v8    # "type":I
    :cond_88
    :try_start_88
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/CircularGeofence;

    .line 1102
    .local v0, "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    iput v5, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->id:I

    .line 1103
    iput v8, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->type:I

    .line 1104
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 1108
    .end local v0    # "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v8    # "type":I
    :cond_9c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9f} :catch_65
    .catchall {:try_start_88 .. :try_end_9f} :catchall_85

    goto :goto_6d
.end method

.method private validateCircularGeofence(Landroid/app/enterprise/geofencing/LatLongPoint;D)Z
    .registers 9
    .param p1, "center"    # Landroid/app/enterprise/geofencing/LatLongPoint;
    .param p2, "radius"    # D

    .prologue
    .line 1767
    const/4 v0, 0x1

    .line 1768
    .local v0, "valid":Z
    const-wide/16 v1, 0x0

    cmpg-double v1, p2, v1

    if-gtz v1, :cond_9

    .line 1769
    const/4 v0, 0x0

    .line 1776
    :cond_8
    :goto_8
    return v0

    .line 1771
    :cond_9
    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v3, 0x4056800000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_35

    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v3, -0x3fa9800000000000L

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_35

    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v3, 0x4066800000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_35

    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v3, -0x3f99800000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_8

    .line 1773
    :cond_35
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private validatePolygonalGeofence(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1697
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x1

    .line 1698
    .local v2, "valid":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_40

    .line 1699
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1700
    .local v1, "latlongPoint":Landroid/app/enterprise/geofencing/LatLongPoint;
    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v6, 0x4056800000000000L

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_3a

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v6, -0x3fa9800000000000L

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_3a

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v6, 0x4066800000000000L

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_3a

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v6, -0x3f99800000000000L

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3d

    .line 1703
    :cond_3a
    const/4 v2, 0x0

    move v3, v2

    .line 1707
    .end local v1    # "latlongPoint":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v2    # "valid":Z
    .local v3, "valid":I
    :goto_3c
    return v3

    .line 1698
    .end local v3    # "valid":I
    .restart local v1    # "latlongPoint":Landroid/app/enterprise/geofencing/LatLongPoint;
    .restart local v2    # "valid":Z
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1    # "latlongPoint":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_40
    move v3, v2

    .line 1707
    .restart local v3    # "valid":I
    goto :goto_3c
.end method

.method private writeGeofenceToDB(I[B)I
    .registers 8
    .param p1, "type"    # I
    .param p2, "serializedBlob"    # [B

    .prologue
    .line 1718
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1719
    .local v0, "callingUid":I
    if-nez p2, :cond_8

    .line 1720
    const/4 v1, -0x1

    .line 1728
    :goto_7
    return v1

    .line 1721
    :cond_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1722
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1723
    const-string v3, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1724
    const-string v3, "blobdata"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1725
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCING"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 1727
    .local v1, "id":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    goto :goto_7
.end method


# virtual methods
.method public createGeofence(Landroid/app/enterprise/geofencing/CircularGeofence;)I
    .registers 11
    .param p1, "circularGeofence"    # Landroid/app/enterprise/geofencing/CircularGeofence;

    .prologue
    const/4 v8, 0x1

    .line 333
    const-string v5, "GeofenceService"

    const-string v6, "createGeofence"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    move-result v0

    .line 336
    .local v0, "callingUid":I
    const/4 v1, -0x1

    .line 337
    .local v1, "id":I
    iget-object v5, p1, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, p1, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validateCircularGeofence(Landroid/app/enterprise/geofencing/LatLongPoint;D)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v4

    .line 340
    .local v4, "serializedBlob":[B
    if-nez v4, :cond_1f

    move v2, v1

    .line 349
    .end local v1    # "id":I
    .end local v4    # "serializedBlob":[B
    .local v2, "id":I
    :goto_1e
    return v2

    .line 343
    .end local v2    # "id":I
    .restart local v1    # "id":I
    .restart local v4    # "serializedBlob":[B
    :cond_1f
    invoke-direct {p0, v8, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(I[B)I

    move-result v1

    .line 344
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 345
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 346
    .local v3, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v3    # "message":Landroid/os/Message;
    .end local v4    # "serializedBlob":[B
    :cond_3c
    move v2, v1

    .line 349
    .end local v1    # "id":I
    .restart local v2    # "id":I
    goto :goto_1e
.end method

.method public createGeofence(Landroid/app/enterprise/geofencing/Geofence;)I
    .registers 5
    .param p1, "geofence"    # Landroid/app/enterprise/geofencing/Geofence;

    .prologue
    .line 270
    const/4 v0, -0x1

    .line 272
    .local v0, "id":I
    iget v1, p1, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 273
    check-cast p1, Landroid/app/enterprise/geofencing/CircularGeofence;

    .end local p1    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/geofencing/CircularGeofence;)I

    move-result v0

    .line 283
    :cond_c
    :goto_c
    return v0

    .line 276
    .restart local p1    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_d
    iget v1, p1, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 277
    check-cast p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .end local p1    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/geofencing/PolygonalGeofence;)I

    move-result v0

    goto :goto_c

    .line 280
    .restart local p1    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_19
    iget v1, p1, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 281
    check-cast p1, Landroid/app/enterprise/geofencing/LinearGeofence;

    .end local p1    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/geofencing/LinearGeofence;)I

    move-result v0

    goto :goto_c
.end method

.method public createGeofence(Landroid/app/enterprise/geofencing/LinearGeofence;)I
    .registers 16
    .param p1, "linearGeofence"    # Landroid/app/enterprise/geofencing/LinearGeofence;

    .prologue
    .line 292
    const-string v10, "GeofenceService"

    const-string v11, "createGeofence"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    move-result v6

    .line 294
    .local v6, "callingUid":I
    const/4 v7, -0x1

    .line 295
    .local v7, "id":I
    iget-wide v4, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    .line 296
    .local v4, "toleranceVal":D
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v1, "polygonList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    iget-wide v10, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_43

    .line 298
    const-wide/high16 v10, 0x3ff0000000000000L

    iput-wide v10, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    .line 302
    :cond_1f
    :goto_1f
    iget-object v10, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    iget-wide v11, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;

    move-result-object v1

    .line 304
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_84

    .line 305
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_82

    .line 306
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 307
    .local v2, "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    if-eqz v2, :cond_41

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-gt v10, v11, :cond_56

    .line 308
    :cond_41
    const/4 v10, -0x1

    .line 321
    .end local v2    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :goto_42
    return v10

    .line 299
    :cond_43
    iget-wide v10, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    const-wide v12, 0x412e848000000000L

    cmpl-double v10, v10, v12

    if-lez v10, :cond_1f

    .line 300
    const-wide v10, 0x412e847e00000000L

    iput-wide v10, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    goto :goto_1f

    .line 309
    .restart local v2    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :cond_56
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object v3

    .line 310
    .local v3, "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    new-instance v0, Landroid/app/enterprise/geofencing/LinearGeofence;

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/geofencing/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;D)V

    .line 312
    .local v0, "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v9

    .line 313
    .local v9, "serializedBlob":[B
    const/4 v10, 0x3

    invoke-direct {p0, v10, v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(I[B)I

    move-result v7

    .line 314
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v10

    if-eqz v10, :cond_82

    .line 315
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 316
    .local v8, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    .end local v2    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .end local v3    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    .end local v8    # "message":Landroid/os/Message;
    .end local v9    # "serializedBlob":[B
    :cond_82
    move v10, v7

    .line 319
    goto :goto_42

    :cond_84
    move v10, v7

    .line 321
    goto :goto_42
.end method

.method public createGeofence(Landroid/app/enterprise/geofencing/PolygonalGeofence;)I
    .registers 16
    .param p1, "polygonalGeofence"    # Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .prologue
    const/4 v13, 0x2

    .line 360
    const-string v1, "GeofenceService"

    const-string v2, "createGeofence"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    move-result v7

    .line 364
    .local v7, "callingUid":I
    const/4 v8, -0x1

    .line 365
    .local v8, "id":I
    iget-object v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v13, :cond_65

    .line 366
    iget-object v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 367
    iget-object v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 368
    .local v4, "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    if-eqz v4, :cond_2b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v13, :cond_2d

    .line 369
    :cond_2b
    const/4 v1, -0x1

    .line 389
    .end local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :goto_2c
    return v1

    .line 370
    .restart local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :cond_2d
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object v6

    .line 371
    .local v6, "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    iget-wide v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    const-wide/16 v11, 0x0

    cmpl-double v1, v1, v11

    if-nez v1, :cond_67

    .line 372
    move-object v5, v4

    .line 378
    .local v5, "gracePoints":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :goto_3a
    new-instance v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    iget-object v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    iget-wide v2, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    invoke-direct/range {v0 .. v6}, Landroid/app/enterprise/geofencing/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;)V

    .line 380
    .local v0, "pGeofence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v10

    .line 381
    .local v10, "serializedBlob":[B
    invoke-direct {p0, v13, v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(I[B)I

    move-result v8

    .line 383
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 384
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 385
    .local v9, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "pGeofence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .end local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .end local v5    # "gracePoints":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .end local v6    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    .end local v9    # "message":Landroid/os/Message;
    .end local v10    # "serializedBlob":[B
    :cond_65
    move v1, v8

    .line 389
    goto :goto_2c

    .line 374
    .restart local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .restart local v6    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    :cond_67
    iget-wide v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGracePoints(Ljava/util/List;D)Ljava/util/List;

    move-result-object v5

    .restart local v5    # "gracePoints":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    goto :goto_3a
.end method

.method public createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;
    .registers 62
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v20, "frontList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v11, "endList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v41, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .local v24, "listAbove":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v25, "listBelow":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const-wide/16 v39, 0x0

    .local v39, "slopePerpendicularAB":D
    const-wide/16 v7, 0x0

    .line 869
    .local v7, "distanceToPoint":D
    const-wide v22, 0x3f747ae147ae147bL

    .line 871
    .local v22, "latitudeNoise":D
    const-wide v26, 0x3f747ae147ae147bL

    .line 875
    .local v26, "longitudeNoise":D
    const/16 v42, 0x0

    .local v42, "temp":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v9, 0x0

    .local v9, "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v10, 0x0

    .line 880
    .local v10, "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide v52, 0x3ee2cc82c7677f8dL

    mul-double p2, p2, v52

    .line 882
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    move/from16 v0, v21

    move/from16 v1, v52

    if-ge v0, v1, :cond_370

    .line 883
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_20f

    .line 884
    add-int/lit8 v52, v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 885
    .local v5, "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 891
    .local v6, "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    :goto_60
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    sub-double v52, v52, v54

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-nez v52, :cond_84

    .line 892
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_227

    .line 893
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    sub-double v52, v52, v22

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .line 898
    :cond_84
    :goto_84
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v52, v52, v54

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-nez v52, :cond_a8

    .line 899
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_233

    .line 900
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v52, v26

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .line 905
    :cond_a8
    :goto_a8
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v52, v52, v54

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    sub-double v54, v54, v56

    div-double v37, v52, v54

    .line 907
    .local v37, "slopeAB":D
    invoke-static/range {v37 .. v38}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v52

    move-object/from16 v0, v41

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    new-instance v32, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    add-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L

    div-double v52, v52, v54

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    add-double v54, v54, v56

    const-wide/high16 v56, 0x4000000000000000L

    div-double v54, v54, v56

    move-object/from16 v0, v32

    move-wide/from16 v1, v52

    move-wide/from16 v3, v54

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .line 915
    .local v32, "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide/high16 v52, 0x3ff0000000000000L

    div-double v52, v52, v37

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v39, v0

    .line 917
    const-wide/high16 v52, 0x3ff0000000000000L

    mul-double v54, v39, v39

    add-double v52, v52, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v52

    div-double v7, p2, v52

    .line 921
    const-wide/16 v52, 0x0

    cmpl-double v52, v37, v52

    if-lez v52, :cond_117

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpg-double v52, v52, v54

    if-ltz v52, :cond_129

    :cond_117
    const-wide/16 v52, 0x0

    cmpg-double v52, v37, v52

    if-gez v52, :cond_253

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpl-double v52, v52, v54

    if-lez v52, :cond_253

    .line 923
    :cond_129
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v47, v52, v54

    .line 924
    .local v47, "yNewAbove":D
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    .line 926
    .local v43, "xNewAbove":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v49, v52, v54

    .line 930
    .local v49, "yNewBelow":D
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    .line 932
    .local v45, "xNewBelow":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    if-nez v21, :cond_18d

    .line 935
    move-object/from16 v42, v5

    .line 936
    :cond_18d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_19b

    .line 937
    move-object/from16 v42, v6

    .line 939
    :cond_19b
    if-eqz v21, :cond_1a9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_20b

    .line 940
    :cond_1a9
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v47, v52, v54

    .line 941
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    .line 943
    if-nez v21, :cond_23f

    .line 944
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    :goto_1db
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v49, v52, v54

    .line 950
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    .line 952
    if-nez v21, :cond_249

    .line 953
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    .end local v43    # "xNewAbove":D
    .end local v45    # "xNewBelow":D
    .end local v47    # "yNewAbove":D
    .end local v49    # "yNewBelow":D
    :cond_20b
    :goto_20b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_34

    .line 887
    .end local v5    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v6    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v32    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v37    # "slopeAB":D
    :cond_20f
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 888
    .restart local v5    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v52, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v6    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_60

    .line 895
    :cond_227
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    add-double v52, v52, v22

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    goto/16 :goto_84

    .line 902
    :cond_233
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    add-double v52, v52, v26

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    goto/16 :goto_a8

    .line 946
    .restart local v32    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .restart local v37    # "slopeAB":D
    .restart local v43    # "xNewAbove":D
    .restart local v45    # "xNewBelow":D
    .restart local v47    # "yNewAbove":D
    .restart local v49    # "yNewBelow":D
    :cond_23f
    new-instance v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v9    # "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v43

    move-wide/from16 v2, v47

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v9    # "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto :goto_1db

    .line 955
    :cond_249
    new-instance v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v10    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v45

    move-wide/from16 v2, v49

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v10    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto :goto_20b

    .line 962
    .end local v43    # "xNewAbove":D
    .end local v45    # "xNewBelow":D
    .end local v47    # "yNewAbove":D
    .end local v49    # "yNewBelow":D
    :cond_253
    const-wide/16 v52, 0x0

    cmpl-double v52, v37, v52

    if-lez v52, :cond_265

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpl-double v52, v52, v54

    if-gtz v52, :cond_277

    :cond_265
    const-wide/16 v52, 0x0

    cmpg-double v52, v37, v52

    if-gez v52, :cond_20b

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_20b

    .line 964
    :cond_277
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v47, v52, v54

    .line 965
    .restart local v47    # "yNewAbove":D
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    .line 967
    .restart local v43    # "xNewAbove":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v49, v52, v54

    .line 971
    .restart local v49    # "yNewBelow":D
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    .line 973
    .restart local v45    # "xNewBelow":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    if-nez v21, :cond_2db

    .line 976
    move-object/from16 v42, v5

    .line 977
    :cond_2db
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_2e9

    .line 978
    move-object/from16 v42, v6

    .line 980
    :cond_2e9
    if-eqz v21, :cond_2f7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_20b

    .line 981
    :cond_2f7
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v47, v52, v54

    .line 982
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    .line 984
    if-nez v21, :cond_35b

    .line 985
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    :goto_329
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v49, v52, v54

    .line 991
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    .line 993
    if-nez v21, :cond_365

    .line 994
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20b

    .line 987
    :cond_35b
    new-instance v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v9    # "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v43

    move-wide/from16 v2, v47

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v9    # "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto :goto_329

    .line 996
    :cond_365
    new-instance v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v10    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v45

    move-wide/from16 v2, v49

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v10    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_20b

    .line 1007
    .end local v5    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v6    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v32    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v37    # "slopeAB":D
    .end local v43    # "xNewAbove":D
    .end local v45    # "xNewBelow":D
    .end local v47    # "yNewAbove":D
    .end local v49    # "yNewBelow":D
    :cond_370
    const/16 v51, 0x0

    .line 1008
    .local v51, "z":I
    const/16 v21, 0x0

    :goto_374
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x2

    move/from16 v0, v21

    move/from16 v1, v52

    if-ge v0, v1, :cond_462

    .line 1011
    move-object/from16 v0, v41

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Double;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    .line 1012
    .local v28, "m1":D
    add-int/lit8 v52, v21, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Double;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    .line 1013
    .local v30, "m2":D
    move-object/from16 v0, v24

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1014
    .local v33, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v52, v51, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1015
    .local v34, "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v30

    sub-double v52, v52, v54

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    sub-double v52, v52, v54

    sub-double v54, v28, v30

    div-double v12, v52, v54

    .line 1017
    .local v12, "finx":D
    mul-double v52, v28, v12

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    add-double v16, v52, v54

    .line 1018
    .local v16, "finy":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v16

    invoke-direct {v0, v12, v13, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    move-object/from16 v0, v25

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1021
    .local v35, "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v52, v51, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1022
    .local v36, "p4":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v30

    sub-double v52, v52, v54

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    sub-double v52, v52, v54

    sub-double v54, v28, v30

    div-double v14, v52, v54

    .line 1024
    .local v14, "finxbelow":D
    mul-double v52, v28, v14

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    add-double v18, v52, v54

    .line 1025
    .local v18, "finybelow":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v18

    invoke-direct {v0, v14, v15, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    add-int/lit8 v51, v51, 0x1

    .line 1008
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_374

    .line 1030
    .end local v12    # "finx":D
    .end local v14    # "finxbelow":D
    .end local v16    # "finy":D
    .end local v18    # "finybelow":D
    .end local v28    # "m1":D
    .end local v30    # "m2":D
    .end local v33    # "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v34    # "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v35    # "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v36    # "p4":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_462
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v21, v52, -0x1

    :goto_470
    if-ltz v21, :cond_482

    .line 1033
    move/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    add-int/lit8 v21, v21, -0x1

    goto :goto_470

    .line 1035
    :cond_482
    return-object v20
.end method

.method public declared-synchronized destroyGeofence(I)Z
    .registers 9
    .param p1, "id"    # I

    .prologue
    .line 400
    monitor-enter p0

    :try_start_1
    const-string v3, "GeofenceService"

    const-string v4, "destroyGeofence"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    move-result v0

    .line 402
    .local v0, "callingUid":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteFromDB(I)Z

    move-result v2

    .line 403
    .local v2, "ret":Z
    if-eqz v2, :cond_34

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_34

    .line 404
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 406
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 407
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_4b

    .line 412
    .end local v1    # "message":Landroid/os/Message;
    :cond_32
    :goto_32
    monitor-exit p0

    return v2

    .line 408
    :cond_34
    if-eqz v2, :cond_32

    .line 409
    :try_start_36
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 410
    .restart local v1    # "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_4b

    goto :goto_32

    .line 400
    .end local v0    # "callingUid":I
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "ret":Z
    :catchall_4b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public findDistance(Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;)D
    .registers 22
    .param p1, "point1"    # Landroid/app/enterprise/geofencing/LatLongPoint;
    .param p2, "point2"    # Landroid/app/enterprise/geofencing/LatLongPoint;

    .prologue
    .line 1418
    const-wide v1, 0x40aeed880a82edb3L

    .line 1420
    .local v1, "R":D
    move-object/from16 v0, p1

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 1421
    .local v7, "lat2":D
    move-object/from16 v0, p1

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 1422
    .local v11, "lon2":D
    move-object/from16 v0, p2

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 1423
    .local v5, "lat1":D
    move-object/from16 v0, p2

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 1425
    .local v9, "lon1":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    sub-double v17, v11, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    mul-double v3, v13, v1

    .line 1429
    .local v3, "distance":D
    return-wide v3
.end method

.method public getGeofences()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/Geofence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    const-string v11, "GeofenceService"

    const-string v12, "getGeofences"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    move-result v1

    .line 554
    .local v1, "callingUid":I
    :try_start_b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    const/4 v11, 0x3

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "type"

    aput-object v12, v2, v11

    const/4 v11, 0x2

    const-string v12, "blobdata"

    aput-object v12, v2, v11

    .line 561
    .local v2, "columns":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "GEOFENCING"

    invoke-virtual {v11, v12, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 564
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_93

    .line 565
    :goto_2c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_90

    .line 567
    const-string v11, "_id"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 568
    .local v6, "id":I
    const-string v11, "type"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 569
    .local v10, "type":I
    const-string v11, "blobdata"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 572
    .local v4, "data":[B
    const/4 v11, 0x2

    if-ne v10, v11, :cond_6b

    .line 573
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .line 574
    .local v8, "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    iput v6, v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;->id:I

    .line 575
    iput v10, v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;->type:I

    .line 576
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_60} :catch_61

    goto :goto_2c

    .line 595
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "data":[B
    .end local v6    # "id":I
    .end local v8    # "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    .end local v10    # "type":I
    :catch_61
    move-exception v5

    .line 596
    .local v5, "e":Ljava/lang/Exception;
    const-string v11, "GeofenceService"

    const-string v12, "getGeofences - EX"

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    const/4 v9, 0x0

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6a
    :goto_6a
    return-object v9

    .line 577
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "data":[B
    .restart local v6    # "id":I
    .restart local v9    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    .restart local v10    # "type":I
    :cond_6b
    const/4 v11, 0x3

    if-ne v10, v11, :cond_82

    .line 578
    :try_start_6e
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LinearGeofence;

    .line 579
    .local v7, "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    iput v6, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->id:I

    .line 580
    iput v10, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->type:I

    .line 581
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->convertToLinear(Landroid/app/enterprise/geofencing/LinearGeofence;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    .line 582
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 584
    .end local v7    # "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    :cond_82
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/CircularGeofence;

    .line 585
    .local v0, "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    iput v6, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->id:I

    .line 586
    iput v10, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->type:I

    .line 587
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 590
    .end local v0    # "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    .end local v4    # "data":[B
    .end local v6    # "id":I
    .end local v10    # "type":I
    :cond_90
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 593
    :cond_93
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_96} :catch_61

    move-result v11

    if-eqz v11, :cond_6a

    const/4 v9, 0x0

    goto :goto_6a
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-object v0
.end method

.method public getMinDistanceParameter()F
    .registers 5

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "GEOFENCINGSETTINGS"

    const-string v3, "distance"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getMinTimeParameter()J
    .registers 5

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "GEOFENCINGSETTINGS"

    const-string v3, "time"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDeviceInsideGeofence()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    move-result v0

    .line 503
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public isGeofencingEnabled()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 485
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    move-result v0

    .line 488
    .local v0, "callingUid":I
    :try_start_6
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCINGSETTINGS"

    const-string v6, "state"

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_6 .. :try_end_f} :catch_15

    move-result v4

    if-ne v4, v2, :cond_13

    .line 491
    :goto_12
    return v2

    :cond_13
    move v2, v3

    .line 488
    goto :goto_12

    .line 490
    :catch_15
    move-exception v1

    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    move v2, v3

    .line 491
    goto :goto_12
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 205
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 221
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 214
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method

.method public setMinDistanceParameter(F)Z
    .registers 9
    .param p1, "distance"    # F

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    move-result v0

    .line 674
    .local v0, "callingUid":I
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_b

    .line 675
    const/4 v2, 0x0

    .line 686
    :cond_a
    :goto_a
    return v2

    .line 677
    :cond_b
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string v5, "distance"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 681
    .local v2, "ret":Z
    if-eqz v2, :cond_a

    .line 682
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 683
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method public setMinTimeParameter(J)Z
    .registers 10
    .param p1, "time"    # J

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    move-result v0

    .line 611
    .local v0, "callingUid":I
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_c

    .line 612
    const/4 v2, 0x0

    .line 623
    :cond_b
    :goto_b
    return v2

    .line 614
    :cond_c
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string v5, "time"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 618
    .local v2, "ret":Z
    if-eqz v2, :cond_b

    .line 619
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 620
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b
.end method

.method public startGeofencing()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 422
    const-string v3, "GeofenceService"

    const-string v4, "startGeofencing"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    move-result v0

    .line 425
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 426
    const/4 v2, 0x0

    .line 443
    :cond_13
    :goto_13
    return v2

    .line 429
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-nez v3, :cond_13

    .line 433
    :cond_1e
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string v5, "state"

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 437
    .local v2, "ret":Z
    if-eqz v2, :cond_13

    .line 438
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    .line 439
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 440
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_13
.end method

.method public stopGeofencing()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 454
    const-string v3, "GeofenceService"

    const-string v4, "stopGeofencing"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    move-result v0

    .line 457
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 475
    :cond_12
    :goto_12
    return v2

    .line 461
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 462
    const/4 v2, 0x1

    goto :goto_12

    .line 465
    :cond_1b
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string v5, "state"

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 469
    .local v2, "ret":Z
    if-eqz v2, :cond_12

    .line 470
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 471
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 472
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12
.end method

.method public systemReady()V
    .registers 5

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 200
    return-void
.end method
