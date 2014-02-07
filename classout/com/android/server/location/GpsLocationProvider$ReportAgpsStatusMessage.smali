.class Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportAgpsStatusMessage"
.end annotation


# instance fields
.field ipAddr:[B

.field password:Ljava/lang/String;

.field ssid:Ljava/lang/String;

.field status:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;II[BLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "type"    # I
    .param p3, "status"    # I
    .param p4, "ipAddr"    # [B
    .param p5, "ssid"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 3406
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3407
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->type:I

    .line 3408
    iput p3, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->status:I

    .line 3409
    iput-object p4, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->ipAddr:[B

    .line 3410
    iput-object p5, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->ssid:Ljava/lang/String;

    .line 3411
    iput-object p6, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->password:Ljava/lang/String;

    .line 3412
    return-void
.end method
