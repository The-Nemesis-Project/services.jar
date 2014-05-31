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

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;-><init>()V

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 129
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$2;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 116
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 118
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GeofenceService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 119
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 122
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # Landroid/location/Location;
    .param p2, "x2"    # Z

    .prologue
    .line 85
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

    .line 1668
    const/4 v0, 0x0

    .line 1669
    .local v0, "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    if-eqz p1, :cond_61

    .line 1670
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

    .line 1671
    .restart local v0    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_61

    .line 1672
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1674
    .local v2, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3a

    .line 1675
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1677
    :cond_3a
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_46

    .line 1678
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1680
    :cond_46
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_52

    .line 1681
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1683
    :cond_52
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_5e

    .line 1685
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1671
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1689
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

    .line 1387
    if-eqz p1, :cond_7

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    if-nez v5, :cond_8

    .line 1396
    :cond_7
    :goto_7
    return v4

    .line 1389
    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 1390
    .local v0, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 1392
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

    .line 1394
    const/4 v4, 0x1

    goto :goto_7
.end method

.method private checkDeviceInsideCircleSpherical(Landroid/location/Location;Landroid/app/enterprise/geofencing/CircularGeofence;)Z
    .registers 33
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "cfence"    # Landroid/app/enterprise/geofencing/CircularGeofence;

    .prologue
    .line 1350
    const-wide v2, 0x40b8e30000000000L

    .line 1352
    .local v2, "R":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    .line 1353
    .local v18, "pointlat":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    .line 1354
    .local v20, "pointlong":D
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .line 1355
    .local v4, "centerlat":D
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .line 1357
    .local v6, "centerlong":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 1358
    .local v12, "lat2":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 1359
    .local v16, "lon2":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 1360
    .local v10, "lat1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 1362
    .local v14, "lon1":D
    const-wide v24, 0x409925604189374cL

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    move-wide/from16 v26, v0

    mul-double v22, v24, v26

    .line 1364
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

    .line 1367
    .local v8, "distance":D
    cmpg-double v24, v8, v22

    if-gtz v24, :cond_70

    .line 1368
    const/16 v24, 0x1

    .line 1371
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

    .line 1503
    iget-object v1, p2, Landroid/app/enterprise/geofencing/LinearGeofence;->optimizedPoints:Ljava/util/List;

    .line 1504
    .local v1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v6, 0x1

    .line 1505
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

    .line 1507
    :goto_15
    if-ne v6, v7, :cond_1b

    move v0, v7

    .line 1511
    :goto_18
    return v0

    :cond_19
    move v6, v8

    .line 1505
    goto :goto_15

    :cond_1b
    move v0, v8

    .line 1511
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
    .line 1276
    monitor-enter p0

    const/4 v2, 0x0

    .line 1278
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 1280
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_4f

    .line 1282
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1284
    .local v1, "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1287
    .local v0, "id":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/geofencing/Geofence;

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkGeofenceInsideOrOutside(Landroid/location/Location;Landroid/app/enterprise/geofencing/Geofence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1288
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_37

    goto :goto_19

    .line 1276
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

    .line 1292
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3b
    const/4 v4, 0x1

    if-ne p2, v4, :cond_41

    .line 1293
    :try_start_3e
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->sendIntenttoAdmins(Ljava/util/List;)V

    .line 1296
    :cond_41
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_37

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v4, 0x0

    :goto_48
    move-object v2, v3

    .line 1299
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

    .line 1296
    goto :goto_48

    .end local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4d
    move-object v4, v2

    .line 1299
    goto :goto_49

    .line 1276
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

    .line 1453
    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    .line 1454
    .local v1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v8, 0x1

    .line 1456
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

    .line 1458
    :goto_15
    if-ne v8, v9, :cond_1b

    move v0, v9

    .line 1466
    :goto_18
    return v0

    :cond_19
    move v8, v10

    .line 1456
    goto :goto_15

    .line 1461
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

    .line 1463
    :goto_2d
    if-ne v8, v9, :cond_33

    move v0, v9

    .line 1464
    goto :goto_18

    :cond_31
    move v8, v10

    .line 1461
    goto :goto_2d

    :cond_33
    move v0, v10

    .line 1466
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
    .line 1410
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v0, 0x0

    .line 1411
    .local v0, "c":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1412
    .local v4, "nvert":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [D

    .line 1413
    .local v5, "vertx":[D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [D

    .line 1415
    .local v6, "verty":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2f

    .line 1416
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v7, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    aput-wide v7, v5, v1

    .line 1417
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v7, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    aput-wide v7, v6, v1

    .line 1415
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1430
    :cond_2f
    const/4 v1, 0x0

    add-int/lit8 v3, v4, -0x1

    .local v3, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_33
    if-ge v2, v4, :cond_6a

    .line 1431
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

    .line 1434
    if-nez v0, :cond_68

    .line 1435
    const/4 v0, 0x1

    .line 1430
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

    .line 1431
    :cond_64
    const/4 v7, 0x0

    goto :goto_3c

    :cond_66
    const/4 v8, 0x0

    goto :goto_43

    .line 1437
    :cond_68
    const/4 v0, 0x0

    goto :goto_5f

    .line 1440
    :cond_6a
    return v0
.end method

.method private checkGeofenceInsideOrOutside(Landroid/location/Location;Landroid/app/enterprise/geofencing/Geofence;)Z
    .registers 6
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "fence"    # Landroid/app/enterprise/geofencing/Geofence;

    .prologue
    const/4 v1, 0x1

    .line 1312
    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    if-ne v0, v1, :cond_f

    .line 1313
    check-cast p2, Landroid/app/enterprise/geofencing/CircularGeofence;

    .end local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideCircleSpherical(Landroid/location/Location;Landroid/app/enterprise/geofencing/CircularGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v1

    .line 1331
    :goto_e
    return v0

    .line 1316
    .restart local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_f
    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_29

    move-object v0, p2

    .line 1317
    check-cast v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    iget-object v0, v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1318
    check-cast p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .end local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygon(Landroid/location/Location;Landroid/app/enterprise/geofencing/PolygonalGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v1

    .line 1319
    goto :goto_e

    .line 1323
    .restart local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_29
    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_43

    move-object v0, p2

    .line 1324
    check-cast v0, Landroid/app/enterprise/geofencing/LinearGeofence;

    iget-object v0, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1325
    check-cast p2, Landroid/app/enterprise/geofencing/LinearGeofence;

    .end local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideLinear(Landroid/location/Location;Landroid/app/enterprise/geofencing/LinearGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v1

    .line 1326
    goto :goto_e

    .line 1331
    :cond_43
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private declared-synchronized checkMonitoring()V
    .registers 9

    .prologue
    .line 1870
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_8

    .line 1871
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->setLocationManager()V

    .line 1875
    :cond_8
    sget-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-eqz v0, :cond_16

    .line 1876
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1877
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1880
    :cond_16
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_78

    move-result v0

    if-eqz v0, :cond_20

    .line 1903
    :goto_1e
    monitor-exit p0

    return-void

    .line 1886
    :cond_20
    :try_start_20
    new-instance v4, Landroid/location/Criteria;

    invoke-direct {v4}, Landroid/location/Criteria;-><init>()V

    .line 1887
    .local v4, "criteria":Landroid/location/Criteria;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1888
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 1889
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 1890
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 1891
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 1893
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1895
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

    .line 1898
    .end local v4    # "criteria":Landroid/location/Criteria;
    :catch_57
    move-exception v7

    .line 1899
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

    .line 1900
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1901
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V
    :try_end_77
    .catchall {:try_start_58 .. :try_end_77} :catchall_78

    goto :goto_1e

    .line 1870
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
    .line 1232
    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 1233
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/lit8 v1, v3, -0x1

    .line 1234
    .local v1, "j":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v8, "pointList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v0, 0x0

    :goto_f
    div-int/lit8 v9, v3, 0x2

    if-ge v0, v9, :cond_54

    .line 1237
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

    .line 1238
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

    .line 1239
    .local v6, "midValueLong":D
    new-instance v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .line 1240
    .local v2, "lTemp":Landroid/app/enterprise/geofencing/LatLongPoint;
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    add-int/lit8 v1, v1, -0x1

    .line 1236
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1244
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
    .line 808
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v13, "frontList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v33, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v19, "listAbove":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const-wide/16 v31, 0x0

    .local v31, "slopePerpendicularAB":D
    const-wide/16 v7, 0x0

    .line 815
    .local v7, "distanceToPoint":D
    const-wide v17, 0x3f747ae147ae147bL

    .line 817
    .local v17, "latitudeNoise":D
    const-wide v20, 0x3f747ae147ae147bL

    .line 823
    .local v20, "longitudeNoise":D
    const-wide v41, 0x3ee2cc82c7677f8dL

    mul-double p2, p2, v41

    .line 828
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_25
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v14, v0, :cond_1cc

    .line 829
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    if-ne v14, v0, :cond_148

    .line 830
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 831
    .local v5, "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/16 v41, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 837
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

    .line 838
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-ltz v41, :cond_15e

    .line 839
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    sub-double v41, v41, v17

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .line 844
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

    .line 845
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-ltz v41, :cond_16a

    .line 846
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    sub-double v41, v41, v20

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .line 851
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

    .line 853
    .local v29, "slopeAB":D
    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
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

    .line 861
    .local v26, "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide/high16 v41, 0x3ff0000000000000L

    div-double v41, v41, v29

    move-wide/from16 v0, v41

    neg-double v0, v0

    move-wide/from16 v31, v0

    .line 863
    const-wide/high16 v41, 0x3ff0000000000000L

    mul-double v43, v31, v31

    add-double v41, v41, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v41

    div-double v7, p2, v41

    .line 867
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

    .line 869
    :cond_114
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    mul-double v43, v31, v7

    add-double v36, v41, v43

    .line 870
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

    .line 872
    .local v34, "xNewAbove":D
    new-instance v41, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v41

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    .end local v34    # "xNewAbove":D
    .end local v36    # "yNewAbove":D
    :cond_144
    :goto_144
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_25

    .line 833
    .end local v5    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v6    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v26    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v29    # "slopeAB":D
    :cond_148
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 834
    .restart local v5    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v41, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v6    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_4b

    .line 841
    :cond_15e
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    add-double v41, v41, v17

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    goto/16 :goto_6f

    .line 848
    :cond_16a
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    add-double v41, v41, v20

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    goto/16 :goto_93

    .line 877
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

    .line 879
    :cond_19a
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    mul-double v43, v31, v7

    sub-double v36, v41, v43

    .line 880
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

    .line 882
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

    .line 892
    .end local v5    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v6    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v26    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v29    # "slopeAB":D
    .end local v34    # "xNewAbove":D
    .end local v36    # "yNewAbove":D
    :cond_1cc
    const/16 v38, 0x0

    .line 893
    .local v38, "z":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v40, v41, -0x1

    .line 894
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

    .line 896
    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Double;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 897
    .local v22, "m1":D
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Double;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    .line 898
    .local v24, "m2":D
    move-object/from16 v0, v19

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 899
    .local v27, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 900
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

    .line 902
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

    .line 903
    .local v11, "finy":D
    new-instance v41, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v41

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v41

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    add-int/lit8 v39, v38, 0x1

    .end local v38    # "z":I
    .local v39, "z":I
    move/from16 v40, v38

    .line 894
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

    .line 909
    .end local v9    # "finx":D
    .end local v11    # "finy":D
    .end local v22    # "m1":D
    .end local v24    # "m2":D
    .end local v27    # "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v28    # "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_266
    return-object v13
.end method

.method private declared-synchronized deleteFromDB(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "_id"    # I

    .prologue
    .line 1647
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1648
    .local v1, "userId":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1649
    .local v0, "geofence_id_value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;Ljava/util/HashMap;I)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    move-result v2

    if-nez v2, :cond_20

    .line 1652
    const/4 v2, 0x0

    .line 1655
    :goto_1e
    monitor-exit p0

    return v2

    .line 1654
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2b

    .line 1655
    const/4 v2, 0x1

    goto :goto_1e

    .line 1647
    .end local v0    # "geofence_id_value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "userId":I
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized deleteGeofenceActiveListByAdmin(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1180
    monitor-enter p0

    const/4 v3, 0x1

    :try_start_2
    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v3

    .line 1184
    .local v0, "columns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCING"

    invoke-virtual {v3, v4, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1186
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_35

    .line 1187
    :goto_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1189
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

    .line 1195
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_2d
    move-exception v2

    .line 1196
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string v3, "GeofenceService"

    const-string v4, "deleteGeofenceActiveListByAdmin - EX"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_3b

    .line 1198
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    .line 1192
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_37
    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_2d
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_35

    .line 1180
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

    .line 1255
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1256
    .local v1, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1257
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_16

    .line 1262
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "object":Ljava/lang/Object;
    :goto_12
    return-object v3

    .line 1259
    :catch_13
    move-exception v0

    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    move-object v3, v4

    .line 1260
    goto :goto_12

    .line 1261
    .end local v0    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_16
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    move-object v3, v4

    .line 1262
    goto :goto_12
.end method

.method private deviceLocationUnavailableMessage(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1613
    const-string v2, "GeofenceService"

    const-string v3, "DEVICE_LOCATION_UNAVAILABLE"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    new-instance v0, Landroid/content/Intent;

    const-string v2, "edm.intent.action.device.location.unavailable"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1615
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_18

    .line 1616
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    :cond_18
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v1

    .line 1620
    .local v1, "ownerUid":I
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1622
    return-void
.end method

.method private enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
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
    .line 1703
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1704
    .local v4, "collinear":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v11, 0x0

    .line 1706
    .local v11, "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1708
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

    .line 1709
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1710
    .local v9, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1711
    .local v10, "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v11, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1715
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

    .line 1717
    .local v2, "area":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-nez v12, :cond_88

    .line 1718
    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6f

    .line 1719
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1720
    :cond_6f
    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_78

    .line 1721
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1722
    :cond_78
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_81

    .line 1723
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1708
    :cond_81
    :goto_81
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 1726
    :cond_88
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a4

    .line 1727
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findFirst(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1728
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findLast(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1729
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_81

    .line 1731
    :cond_a4
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 1734
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

    .line 1735
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
    .line 1763
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1765
    .local v0, "first":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 1766
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

    .line 1767
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "first":Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1765
    .restart local v0    # "first":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1770
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
    .line 1745
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1747
    .local v1, "last":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 1748
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

    .line 1749
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "last":Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1747
    .restart local v1    # "last":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1752
    :cond_33
    return-object v1
.end method

.method private getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;
    .registers 14
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
    const/4 v8, 0x0

    .line 1574
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1602
    :cond_9
    :goto_9
    return-object v8

    .line 1578
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1581
    .local v6, "userId":I
    :try_start_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "_id"

    aput-object v10, v0, v9

    .line 1587
    .local v0, "columns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "GEOFENCING"

    invoke-virtual {v9, v10, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 1590
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1591
    .local v4, "item":Landroid/content/ContentValues;
    const-string v9, "_id"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1592
    .local v3, "id":I
    const-string v9, "adminUid"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p2, :cond_2c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1593
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5f} :catch_60

    goto :goto_2c

    .line 1598
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "item":Landroid/content/ContentValues;
    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_60
    move-exception v1

    .line 1599
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "GeofenceService"

    const-string v10, "getActiveGeofenceIdsbyAdmin - EX"

    invoke-static {v9, v10, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 1597
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_69
    :try_start_69
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_60

    move-result v9

    if-eqz v9, :cond_70

    move-object v5, v8

    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_70
    move-object v8, v5

    goto :goto_9
.end method

.method private getEffectiveMinDistanceParameter()F
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 758
    const/4 v3, 0x0

    .line 760
    .local v3, "ret":F
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "distance"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "state"

    aput-object v7, v0, v6

    .line 765
    .local v0, "columns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "GEOFENCINGSETTINGS"

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 768
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 770
    .local v2, "item":Landroid/content/ContentValues;
    const-string/jumbo v6, "state"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_1c

    .line 775
    const-string v6, "distance"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v4

    .line 777
    .local v4, "value":F
    cmpl-float v6, v3, v8

    if-nez v6, :cond_45

    .line 778
    move v3, v4

    goto :goto_1c

    .line 779
    :cond_45
    cmpl-float v6, v4, v8

    if-eqz v6, :cond_1c

    cmpl-float v6, v3, v4

    if-lez v6, :cond_1c

    .line 780
    move v3, v4

    goto :goto_1c

    .line 784
    .end local v2    # "item":Landroid/content/ContentValues;
    .end local v4    # "value":F
    :cond_4f
    return v3
.end method

.method private getEffectiveMinTimeParameter()J
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 693
    const-wide/16 v3, 0x0

    .line 695
    .local v3, "ret":J
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "time"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "state"

    aput-object v9, v0, v8

    .line 700
    .local v0, "columns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCINGSETTINGS"

    invoke-virtual {v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 703
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 705
    .local v2, "item":Landroid/content/ContentValues;
    const-string/jumbo v8, "state"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_1f

    .line 710
    const-string/jumbo v8, "time"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 712
    .local v5, "value":J
    cmp-long v8, v3, v10

    if-nez v8, :cond_49

    .line 713
    move-wide v3, v5

    goto :goto_1f

    .line 714
    :cond_49
    cmp-long v8, v5, v10

    if-eqz v8, :cond_1f

    cmp-long v8, v3, v5

    if-lez v8, :cond_1f

    .line 715
    move-wide v3, v5

    goto :goto_1f

    .line 719
    .end local v2    # "item":Landroid/content/ContentValues;
    .end local v5    # "value":J
    :cond_53
    cmp-long v8, v3, v10

    if-nez v8, :cond_5a

    const-wide/32 v3, 0xea60

    .end local v3    # "ret":J
    :cond_5a
    return-wide v3
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1629
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_INFO"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1631
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_e

    .line 1632
    const/4 v2, 0x0

    .line 1636
    :goto_d
    return-object v2

    .line 1635
    :cond_e
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1636
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

    .line 1201
    const/4 v1, 0x0

    .line 1204
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_3
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v0, v4

    .line 1208
    .local v0, "columns":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCING"

    invoke-virtual {v4, v5, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1211
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_1c
    .catchall {:try_start_3 .. :try_end_15} :catchall_2c

    move-result v3

    .line 1217
    if-eqz v1, :cond_1b

    .line 1218
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_2a

    .line 1223
    .end local v0    # "columns":[Ljava/lang/String;
    :cond_1b
    :goto_1b
    return v3

    .line 1213
    :catch_1c
    move-exception v2

    .line 1214
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1d
    const-string v4, "GeofenceService"

    const-string v5, "isAdminHasGeofence - EX"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2c

    .line 1217
    if-eqz v1, :cond_1b

    .line 1218
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1b

    .line 1220
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2a
    move-exception v4

    goto :goto_1b

    .line 1216
    :catchall_2c
    move-exception v3

    .line 1217
    if-eqz v1, :cond_32

    .line 1218
    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    .line 1216
    :cond_32
    :goto_32
    throw v3

    .line 1220
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

    .line 556
    const-string v8, "GeofenceService"

    const-string v9, "isDeviceInsideGeofence"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 559
    .local v6, "token":J
    const/4 v0, 0x0

    .line 560
    .local v0, "activeGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 562
    .local v4, "location":Landroid/location/Location;
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 563
    .local v1, "criteria":Landroid/location/Criteria;
    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 564
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 565
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 566
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 567
    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 570
    :try_start_23
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    .line 571
    if-nez v4, :cond_3e

    .line 572
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    .line 573
    .local v5, "provider":Ljava/lang/String;
    if-eqz v5, :cond_3e

    const-string v8, "passive"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3e

    .line 574
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3d} :catch_47

    move-result-object v4

    .line 583
    .end local v5    # "provider":Ljava/lang/String;
    :cond_3e
    :goto_3e
    if-nez v4, :cond_54

    .line 584
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V

    .line 590
    :goto_43
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    return-object v0

    .line 577
    :catch_47
    move-exception v2

    .line 578
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "GeofenceService"

    const-string v9, "isDeviceInsideGeofence - EX"

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    const/4 v4, 0x0

    goto :goto_3e

    .line 586
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_54
    invoke-direct {p0, v4, v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v3

    .line 587
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_43
.end method

.method private declared-synchronized loadGeofenceActiveList(I)V
    .registers 14
    .param p1, "userId"    # I

    .prologue
    .line 1101
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 1102
    .local v6, "userManager":Landroid/os/UserManager;
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 1103
    .local v7, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_75

    .line 1106
    .local v5, "user":Landroid/content/pm/UserInfo;
    :try_start_20
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCINGSETTINGS"

    const-string v10, "adminUid"

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1109
    .local v4, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 1111
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1113
    .local v3, "storedUid":I
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCINGSETTINGS"

    const-string/jumbo v10, "state"

    invoke-virtual {v8, v3, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_35

    .line 1116
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_57
    .catchall {:try_start_20 .. :try_end_56} :catchall_75

    goto :goto_35

    .line 1120
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "storedUid":I
    .end local v4    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_57
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/lang/Exception;
    :try_start_58
    const-string v8, "GeofenceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadGeofenceActiveList - EX"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_58 .. :try_end_74} :catchall_75

    goto :goto_14

    .line 1101
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userManager":Landroid/os/UserManager;
    .end local v7    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_75
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1125
    .restart local v6    # "userManager":Landroid/os/UserManager;
    .restart local v7    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_78
    monitor-exit p0

    return-void
.end method

.method private parseStringToFloat(Ljava/lang/String;)F
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 789
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 791
    :goto_4
    return v1

    .line 790
    :catch_5
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private parseStringToLong(Ljava/lang/String;)J
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 797
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v1

    .line 799
    :goto_4
    return-wide v1

    .line 798
    :catch_5
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_4
.end method

.method private sendIntenttoAdmins(Ljava/util/List;)V
    .registers 20
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
    .line 1523
    .local p1, "relevantGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v14, "GeofenceService"

    const-string v15, "sendIntenttoAdmins"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 1525
    .local v13, "userManager":Landroid/os/UserManager;
    invoke-virtual {v13}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 1528
    .local v12, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 1529
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 1533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ADMIN"

    const-string v16, "adminUid"

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v10

    .line 1536
    .local v10, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_46
    :goto_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1537
    .local v9, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    .line 1539
    .local v8, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_ae

    .line 1540
    new-instance v6, Landroid/content/Intent;

    const-string v14, "edm.intent.action.device.inside"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1541
    .local v6, "intent":Landroid/content/Intent;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    new-array v5, v14, [I

    .line 1542
    .local v5, "id":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v2, v14, :cond_83

    .line 1543
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v5, v2

    .line 1542
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 1545
    :cond_83
    const-string v14, "edm.intent.extra.geofence.id"

    invoke-virtual {v6, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1546
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v14, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v7

    .line 1548
    .local v7, "ownerUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    const-string v16, "android.permission.sec.MDM_GEOFENCING"

    move-object/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_46

    .line 1554
    .end local v2    # "i":I
    .end local v5    # "id":[I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "ownerUid":I
    :cond_ae
    :try_start_ae
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "GEOFENCINGSETTINGS"

    const-string/jumbo v16, "state"

    move-object/from16 v0, v16

    invoke-virtual {v14, v9, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_46

    .line 1556
    new-instance v6, Landroid/content/Intent;

    const-string v14, "edm.intent.action.device.outside"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1557
    .restart local v6    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v14, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v7

    .line 1559
    .restart local v7    # "ownerUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1560
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    const-string v16, "android.permission.sec.MDM_GEOFENCING"

    move-object/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_ec} :catch_ee

    goto/16 :goto_46

    .line 1564
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "ownerUid":I
    :catch_ee
    move-exception v14

    goto/16 :goto_46

    .line 1570
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "uid":I
    .end local v10    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    :cond_f1
    return-void
.end method

.method private serializeGeoFence(Ljava/lang/Object;)[B
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1824
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1827
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1828
    .local v2, "out":Ljava/io/ObjectOutput;
    invoke-interface {v2, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1829
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    .line 1833
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_15

    move-result-object v3

    .line 1837
    .end local v2    # "out":Ljava/io/ObjectOutput;
    :goto_14
    return-object v3

    .line 1834
    :catch_15
    move-exception v1

    .line 1835
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1837
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private setLocationManager()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    .line 152
    return-void
.end method

.method private declared-synchronized updateGeofenceActiveListbyAdmin(I)V
    .registers 15
    .param p1, "uid"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    .line 1131
    monitor-enter p0

    const/4 v9, 0x3

    :try_start_4
    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "type"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "blobdata"

    aput-object v10, v1, v9

    .line 1136
    .local v1, "columns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "GEOFENCING"

    invoke-virtual {v9, v10, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1139
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_70

    .line 1140
    :cond_20
    :goto_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 1142
    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1144
    .local v5, "id":I
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 1146
    const-string/jumbo v9, "type"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1148
    .local v8, "type":I
    const-string v9, "blobdata"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1151
    .local v3, "data":[B
    if-ne v8, v11, :cond_72

    .line 1152
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .line 1153
    .local v7, "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    iput v5, v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;->id:I

    .line 1154
    iput v8, v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;->type:I

    .line 1155
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_66} :catch_67
    .catchall {:try_start_4 .. :try_end_66} :catchall_88

    goto :goto_20

    .line 1172
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v7    # "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .end local v8    # "type":I
    :catch_67
    move-exception v4

    .line 1173
    .local v4, "e":Ljava/lang/Exception;
    :try_start_68
    const-string v9, "GeofenceService"

    const-string/jumbo v10, "updateGeofenceActiveList - EX"

    invoke-static {v9, v10, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_88

    .line 1175
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_70
    :goto_70
    monitor-exit p0

    return-void

    .line 1156
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "data":[B
    .restart local v5    # "id":I
    .restart local v8    # "type":I
    :cond_72
    if-ne v8, v12, :cond_8b

    .line 1157
    :try_start_74
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LinearGeofence;

    .line 1158
    .local v6, "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    iput v5, v6, Landroid/app/enterprise/geofencing/LinearGeofence;->id:I

    .line 1159
    iput v8, v6, Landroid/app/enterprise/geofencing/LinearGeofence;->type:I

    .line 1160
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_87} :catch_67
    .catchall {:try_start_74 .. :try_end_87} :catchall_88

    goto :goto_20

    .line 1131
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v6    # "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    .end local v8    # "type":I
    :catchall_88
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1162
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "data":[B
    .restart local v5    # "id":I
    .restart local v8    # "type":I
    :cond_8b
    :try_start_8b
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/CircularGeofence;

    .line 1163
    .local v0, "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    iput v5, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->id:I

    .line 1164
    iput v8, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->type:I

    .line 1165
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 1169
    .end local v0    # "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v8    # "type":I
    :cond_9f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_a2} :catch_67
    .catchall {:try_start_8b .. :try_end_a2} :catchall_88

    goto :goto_70
.end method

.method private validateCircularGeofence(Landroid/app/enterprise/geofencing/LatLongPoint;D)Z
    .registers 9
    .param p1, "center"    # Landroid/app/enterprise/geofencing/LatLongPoint;
    .param p2, "radius"    # D

    .prologue
    .line 1852
    const/4 v0, 0x1

    .line 1853
    .local v0, "valid":Z
    const-wide/16 v1, 0x0

    cmpg-double v1, p2, v1

    if-gtz v1, :cond_9

    .line 1854
    const/4 v0, 0x0

    .line 1861
    :cond_8
    :goto_8
    return v0

    .line 1856
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

    .line 1858
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
    .line 1782
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x1

    .line 1783
    .local v2, "valid":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_40

    .line 1784
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1785
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

    .line 1788
    :cond_3a
    const/4 v2, 0x0

    move v3, v2

    .line 1792
    .end local v1    # "latlongPoint":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v2    # "valid":Z
    .local v3, "valid":I
    :goto_3c
    return v3

    .line 1783
    .end local v3    # "valid":I
    .restart local v1    # "latlongPoint":Landroid/app/enterprise/geofencing/LatLongPoint;
    .restart local v2    # "valid":Z
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1    # "latlongPoint":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_40
    move v3, v2

    .line 1792
    .restart local v3    # "valid":I
    goto :goto_3c
.end method

.method private writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I
    .param p3, "serializedBlob"    # [B

    .prologue
    .line 1803
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1804
    .local v0, "callingUid":I
    if-nez p3, :cond_6

    .line 1805
    const/4 v1, -0x1

    .line 1813
    :goto_5
    return v1

    .line 1806
    :cond_6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1807
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1808
    const-string/jumbo v3, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1809
    const-string v3, "blobdata"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1810
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCING"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 1812
    .local v1, "id":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    goto :goto_5
.end method


# virtual methods
.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/CircularGeofence;)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "circularGeofence"    # Landroid/app/enterprise/geofencing/CircularGeofence;

    .prologue
    const/4 v8, 0x1

    .line 376
    const-string v5, "GeofenceService"

    const-string v6, "createGeofence"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 378
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 380
    .local v0, "callingUid":I
    const/4 v1, -0x1

    .line 381
    .local v1, "id":I
    iget-object v5, p2, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, p2, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validateCircularGeofence(Landroid/app/enterprise/geofencing/LatLongPoint;D)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 383
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v4

    .line 384
    .local v4, "serializedBlob":[B
    if-nez v4, :cond_21

    move v2, v1

    .line 393
    .end local v1    # "id":I
    .end local v4    # "serializedBlob":[B
    .local v2, "id":I
    :goto_20
    return v2

    .line 387
    .end local v2    # "id":I
    .restart local v1    # "id":I
    .restart local v4    # "serializedBlob":[B
    :cond_21
    invoke-direct {p0, p1, v8, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I

    move-result v1

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 389
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 390
    .local v3, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v3    # "message":Landroid/os/Message;
    .end local v4    # "serializedBlob":[B
    :cond_3e
    move v2, v1

    .line 393
    .end local v1    # "id":I
    .restart local v2    # "id":I
    goto :goto_20
.end method

.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/Geofence;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "geofence"    # Landroid/app/enterprise/geofencing/Geofence;

    .prologue
    .line 312
    const/4 v0, -0x1

    .line 314
    .local v0, "id":I
    iget v1, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 315
    check-cast p2, Landroid/app/enterprise/geofencing/CircularGeofence;

    .end local p2    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/CircularGeofence;)I

    move-result v0

    .line 325
    :cond_c
    :goto_c
    return v0

    .line 318
    .restart local p2    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_d
    iget v1, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 319
    check-cast p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .end local p2    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/PolygonalGeofence;)I

    move-result v0

    goto :goto_c

    .line 322
    .restart local p2    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_19
    iget v1, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 323
    check-cast p2, Landroid/app/enterprise/geofencing/LinearGeofence;

    .end local p2    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/LinearGeofence;)I

    move-result v0

    goto :goto_c
.end method

.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/LinearGeofence;)I
    .registers 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "linearGeofence"    # Landroid/app/enterprise/geofencing/LinearGeofence;

    .prologue
    .line 334
    const-string v11, "GeofenceService"

    const-string v12, "createGeofence"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 336
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 337
    .local v7, "callingUid":I
    const/4 v8, -0x1

    .line 338
    .local v8, "id":I
    move-object/from16 v0, p2

    iget-wide v5, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    .line 339
    .local v5, "toleranceVal":D
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v2, "polygonList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    move-object/from16 v0, p2

    iget-wide v11, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    const-wide/16 v13, 0x0

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_51

    .line 341
    const-wide/high16 v11, 0x3ff0000000000000L

    move-object/from16 v0, p2

    iput-wide v11, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    .line 345
    :cond_29
    :goto_29
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p2

    iget-wide v12, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;

    move-result-object v2

    .line 347
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_98

    .line 348
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_96

    .line 349
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 350
    .local v3, "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    if-eqz v3, :cond_4f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-gt v11, v12, :cond_68

    .line 351
    :cond_4f
    const/4 v11, -0x1

    .line 364
    .end local v3    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :goto_50
    return v11

    .line 342
    :cond_51
    move-object/from16 v0, p2

    iget-wide v11, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    const-wide v13, 0x412e848000000000L

    cmpl-double v11, v11, v13

    if-lez v11, :cond_29

    .line 343
    const-wide v11, 0x412e847e00000000L

    move-object/from16 v0, p2

    iput-wide v11, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    goto :goto_29

    .line 352
    .restart local v3    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :cond_68
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object v4

    .line 353
    .local v4, "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    new-instance v1, Landroid/app/enterprise/geofencing/LinearGeofence;

    invoke-direct/range {v1 .. v6}, Landroid/app/enterprise/geofencing/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;D)V

    .line 355
    .local v1, "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v10

    .line 356
    .local v10, "serializedBlob":[B
    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11, v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I

    move-result v8

    .line 357
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    if-eqz v11, :cond_96

    .line 358
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 359
    .local v9, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v1    # "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    .end local v3    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .end local v4    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    .end local v9    # "message":Landroid/os/Message;
    .end local v10    # "serializedBlob":[B
    :cond_96
    move v11, v8

    .line 362
    goto :goto_50

    :cond_98
    move v11, v8

    .line 364
    goto :goto_50
.end method

.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/PolygonalGeofence;)I
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "polygonalGeofence"    # Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .prologue
    .line 404
    const-string v1, "GeofenceService"

    const-string v2, "createGeofence"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 406
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 409
    .local v7, "callingUid":I
    const/4 v8, -0x1

    .line 410
    .local v8, "id":I
    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_69

    .line 411
    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 412
    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 413
    .local v4, "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    if-eqz v4, :cond_2e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_30

    .line 414
    :cond_2e
    const/4 v1, -0x1

    .line 434
    .end local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :goto_2f
    return v1

    .line 415
    .restart local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :cond_30
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object v6

    .line 416
    .local v6, "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    iget-wide v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    const-wide/16 v11, 0x0

    cmpl-double v1, v1, v11

    if-nez v1, :cond_6b

    .line 417
    move-object v5, v4

    .line 423
    .local v5, "gracePoints":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :goto_3d
    new-instance v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    iget-wide v2, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    invoke-direct/range {v0 .. v6}, Landroid/app/enterprise/geofencing/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;)V

    .line 425
    .local v0, "pGeofence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v10

    .line 426
    .local v10, "serializedBlob":[B
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I

    move-result v8

    .line 428
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 429
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 430
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
    :cond_69
    move v1, v8

    .line 434
    goto :goto_2f

    .line 419
    .restart local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .restart local v6    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    :cond_6b
    iget-wide v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGracePoints(Ljava/util/List;D)Ljava/util/List;

    move-result-object v5

    .restart local v5    # "gracePoints":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    goto :goto_3d
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
    .line 918
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v20, "frontList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v11, "endList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v41, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v24, "listAbove":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v25, "listBelow":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const-wide/16 v39, 0x0

    .local v39, "slopePerpendicularAB":D
    const-wide/16 v7, 0x0

    .line 926
    .local v7, "distanceToPoint":D
    const-wide v22, 0x3f747ae147ae147bL

    .line 928
    .local v22, "latitudeNoise":D
    const-wide v26, 0x3f747ae147ae147bL

    .line 932
    .local v26, "longitudeNoise":D
    const/16 v42, 0x0

    .local v42, "temp":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v9, 0x0

    .local v9, "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v10, 0x0

    .line 937
    .local v10, "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide v52, 0x3ee2cc82c7677f8dL

    mul-double p2, p2, v52

    .line 939
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    move/from16 v0, v21

    move/from16 v1, v52

    if-ge v0, v1, :cond_370

    .line 940
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_20f

    .line 941
    add-int/lit8 v52, v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 942
    .local v5, "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 948
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

    .line 949
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_227

    .line 950
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    sub-double v52, v52, v22

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .line 955
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

    .line 956
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_233

    .line 957
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v52, v26

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .line 962
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

    .line 964
    .local v37, "slopeAB":D
    invoke-static/range {v37 .. v38}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v52

    move-object/from16 v0, v41

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
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

    .line 972
    .local v32, "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide/high16 v52, 0x3ff0000000000000L

    div-double v52, v52, v37

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v39, v0

    .line 974
    const-wide/high16 v52, 0x3ff0000000000000L

    mul-double v54, v39, v39

    add-double v52, v52, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v52

    div-double v7, p2, v52

    .line 978
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

    .line 980
    :cond_129
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v47, v52, v54

    .line 981
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

    .line 983
    .local v43, "xNewAbove":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v49, v52, v54

    .line 987
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

    .line 989
    .local v45, "xNewBelow":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    if-nez v21, :cond_18d

    .line 992
    move-object/from16 v42, v5

    .line 993
    :cond_18d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_19b

    .line 994
    move-object/from16 v42, v6

    .line 996
    :cond_19b
    if-eqz v21, :cond_1a9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_20b

    .line 997
    :cond_1a9
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v47, v52, v54

    .line 998
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

    .line 1000
    if-nez v21, :cond_23f

    .line 1001
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    :goto_1db
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v49, v52, v54

    .line 1007
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

    .line 1009
    if-nez v21, :cond_249

    .line 1010
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    .end local v43    # "xNewAbove":D
    .end local v45    # "xNewBelow":D
    .end local v47    # "yNewAbove":D
    .end local v49    # "yNewBelow":D
    :cond_20b
    :goto_20b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_34

    .line 944
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

    .line 945
    .restart local v5    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v52, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v6    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_60

    .line 952
    :cond_227
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    add-double v52, v52, v22

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    goto/16 :goto_84

    .line 959
    :cond_233
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    add-double v52, v52, v26

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    goto/16 :goto_a8

    .line 1003
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

    .line 1012
    :cond_249
    new-instance v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v10    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v45

    move-wide/from16 v2, v49

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v10    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto :goto_20b

    .line 1019
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

    .line 1021
    :cond_277
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v47, v52, v54

    .line 1022
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

    .line 1024
    .restart local v43    # "xNewAbove":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v49, v52, v54

    .line 1028
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

    .line 1030
    .restart local v45    # "xNewBelow":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    if-nez v21, :cond_2db

    .line 1033
    move-object/from16 v42, v5

    .line 1034
    :cond_2db
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_2e9

    .line 1035
    move-object/from16 v42, v6

    .line 1037
    :cond_2e9
    if-eqz v21, :cond_2f7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_20b

    .line 1038
    :cond_2f7
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v47, v52, v54

    .line 1039
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

    .line 1041
    if-nez v21, :cond_35b

    .line 1042
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    :goto_329
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v49, v52, v54

    .line 1048
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

    .line 1050
    if-nez v21, :cond_365

    .line 1051
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20b

    .line 1044
    :cond_35b
    new-instance v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v9    # "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v43

    move-wide/from16 v2, v47

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v9    # "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto :goto_329

    .line 1053
    :cond_365
    new-instance v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v10    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v45

    move-wide/from16 v2, v49

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v10    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_20b

    .line 1064
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

    .line 1065
    .local v51, "z":I
    const/16 v21, 0x0

    :goto_374
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x2

    move/from16 v0, v21

    move/from16 v1, v52

    if-ge v0, v1, :cond_462

    .line 1068
    move-object/from16 v0, v41

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Double;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    .line 1069
    .local v28, "m1":D
    add-int/lit8 v52, v21, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Double;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    .line 1070
    .local v30, "m2":D
    move-object/from16 v0, v24

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1071
    .local v33, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v52, v51, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1072
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

    .line 1074
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

    .line 1075
    .local v16, "finy":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v16

    invoke-direct {v0, v12, v13, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    move-object/from16 v0, v25

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1078
    .local v35, "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v52, v51, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1079
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

    .line 1081
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

    .line 1082
    .local v18, "finybelow":D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v18

    invoke-direct {v0, v14, v15, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    add-int/lit8 v51, v51, 0x1

    .line 1065
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_374

    .line 1087
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

    .line 1088
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v21, v52, -0x1

    :goto_470
    if-ltz v21, :cond_482

    .line 1090
    move/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    add-int/lit8 v21, v21, -0x1

    goto :goto_470

    .line 1092
    :cond_482
    return-object v20
.end method

.method public declared-synchronized destroyGeofence(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # I

    .prologue
    .line 445
    monitor-enter p0

    :try_start_1
    const-string v3, "GeofenceService"

    const-string v4, "destroyGeofence"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 447
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 448
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteFromDB(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v2

    .line 449
    .local v2, "ret":Z
    if-eqz v2, :cond_37

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 450
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 452
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 453
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_4e

    .line 458
    .end local v1    # "message":Landroid/os/Message;
    :cond_35
    :goto_35
    monitor-exit p0

    return v2

    .line 454
    :cond_37
    if-eqz v2, :cond_35

    .line 455
    :try_start_39
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 456
    .restart local v1    # "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_4e

    goto :goto_35

    .line 445
    .end local v0    # "callingUid":I
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "ret":Z
    :catchall_4e
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public findDistance(Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;)D
    .registers 22
    .param p1, "point1"    # Landroid/app/enterprise/geofencing/LatLongPoint;
    .param p2, "point2"    # Landroid/app/enterprise/geofencing/LatLongPoint;

    .prologue
    .line 1479
    const-wide v1, 0x40aeed880a82edb3L

    .line 1481
    .local v1, "R":D
    move-object/from16 v0, p1

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 1482
    .local v7, "lat2":D
    move-object/from16 v0, p1

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 1483
    .local v11, "lon2":D
    move-object/from16 v0, p2

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 1484
    .local v5, "lat1":D
    move-object/from16 v0, p2

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 1486
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

    .line 1490
    .local v3, "distance":D
    return-wide v3
.end method

.method public getGeofences(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/Geofence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    const-string v11, "GeofenceService"

    const-string v12, "getGeofences"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 604
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 608
    .local v1, "callingUid":I
    :try_start_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    const/4 v11, 0x3

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "type"

    aput-object v12, v2, v11

    const/4 v11, 0x2

    const-string v12, "blobdata"

    aput-object v12, v2, v11

    .line 615
    .local v2, "columns":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "GEOFENCING"

    invoke-virtual {v11, v12, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 618
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_97

    .line 619
    :goto_2f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_94

    .line 621
    const-string v11, "_id"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 622
    .local v6, "id":I
    const-string/jumbo v11, "type"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 623
    .local v10, "type":I
    const-string v11, "blobdata"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 626
    .local v4, "data":[B
    const/4 v11, 0x2

    if-ne v10, v11, :cond_6f

    .line 627
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .line 628
    .local v8, "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    iput v6, v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;->id:I

    .line 629
    iput v10, v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;->type:I

    .line 630
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_64} :catch_65

    goto :goto_2f

    .line 649
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "data":[B
    .end local v6    # "id":I
    .end local v8    # "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    .end local v10    # "type":I
    :catch_65
    move-exception v5

    .line 650
    .local v5, "e":Ljava/lang/Exception;
    const-string v11, "GeofenceService"

    const-string v12, "getGeofences - EX"

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    const/4 v9, 0x0

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6e
    :goto_6e
    return-object v9

    .line 631
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "data":[B
    .restart local v6    # "id":I
    .restart local v9    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    .restart local v10    # "type":I
    :cond_6f
    const/4 v11, 0x3

    if-ne v10, v11, :cond_86

    .line 632
    :try_start_72
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LinearGeofence;

    .line 633
    .local v7, "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    iput v6, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->id:I

    .line 634
    iput v10, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->type:I

    .line 635
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->convertToLinear(Landroid/app/enterprise/geofencing/LinearGeofence;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    .line 636
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 638
    .end local v7    # "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    :cond_86
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/CircularGeofence;

    .line 639
    .local v0, "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    iput v6, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->id:I

    .line 640
    iput v10, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->type:I

    .line 641
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 644
    .end local v0    # "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    .end local v4    # "data":[B
    .end local v6    # "id":I
    .end local v10    # "type":I
    :cond_94
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 647
    :cond_97
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_9a} :catch_65

    move-result v11

    if-eqz v11, :cond_6e

    const/4 v9, 0x0

    goto :goto_6e
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-object v0
.end method

.method public getMinDistanceParameter(Landroid/app/enterprise/ContextInfo;)F
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 751
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 752
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string v3, "distance"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getMinTimeParameter(Landroid/app/enterprise/ContextInfo;)J
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 687
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 688
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "time"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public isDeviceInsideGeofence(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 552
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 533
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 536
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v5, "GEOFENCINGSETTINGS"

    const-string/jumbo v6, "state"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_6 .. :try_end_12} :catch_18

    move-result v3

    if-ne v3, v1, :cond_16

    .line 540
    :goto_15
    return v1

    :cond_16
    move v1, v2

    .line 536
    goto :goto_15

    .line 539
    :catch_18
    move-exception v0

    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    move v1, v2

    .line 540
    goto :goto_15
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 245
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 261
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return-void
.end method

.method public setMinDistanceParameter(Landroid/app/enterprise/ContextInfo;F)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "distance"    # F

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 729
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 730
    .local v0, "callingUid":I
    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_d

    .line 731
    const/4 v2, 0x0

    .line 742
    :cond_c
    :goto_c
    return v2

    .line 733
    :cond_d
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string v5, "distance"

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 737
    .local v2, "ret":Z
    if-eqz v2, :cond_c

    .line 738
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 739
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c
.end method

.method public setMinTimeParameter(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # J

    .prologue
    .line 663
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 664
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 666
    .local v0, "callingUid":I
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_e

    .line 667
    const/4 v2, 0x0

    .line 678
    :cond_d
    :goto_d
    return v2

    .line 669
    :cond_e
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 673
    .local v2, "ret":Z
    if-eqz v2, :cond_d

    .line 674
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 675
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d
.end method

.method public startGeofencing(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x1

    .line 468
    const-string v3, "GeofenceService"

    const-string/jumbo v4, "startGeofencing"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 470
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 472
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 473
    const/4 v2, 0x0

    .line 490
    :cond_16
    :goto_16
    return v2

    .line 476
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-nez v3, :cond_16

    .line 480
    :cond_21
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 484
    .local v2, "ret":Z
    if-eqz v2, :cond_16

    .line 485
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    .line 486
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 487
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_16
.end method

.method public stopGeofencing(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 501
    const-string v3, "GeofenceService"

    const-string/jumbo v4, "stopGeofencing"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 503
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 505
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 523
    :cond_15
    :goto_15
    return v2

    .line 509
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 510
    const/4 v2, 0x1

    goto :goto_15

    .line 513
    :cond_1e
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 517
    .local v2, "ret":Z
    if-eqz v2, :cond_15

    .line 518
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 519
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 520
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15
.end method

.method public systemReady()V
    .registers 7

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "count":I
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 237
    .local v2, "message":Landroid/os/Message;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 238
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 240
    return-void
.end method
