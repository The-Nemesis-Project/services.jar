.class final Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;
.super Ljava/lang/Object;
.source "GeofenceService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeoLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 2

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p2, "x1"    # Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;
    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$500(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;

    .line 245
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 251
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 257
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 262
    return-void
.end method
