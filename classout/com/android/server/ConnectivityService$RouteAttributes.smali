.class final Lcom/android/server/ConnectivityService$RouteAttributes;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAttributes"
.end annotation


# instance fields
.field private metric:I

.field private tableId:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 3

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 638
    # ++operator for: Lcom/android/server/ConnectivityService;->mRouteIdCtr:I
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$004(Lcom/android/server/ConnectivityService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->tableId:I

    .line 639
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metric:I

    .line 640
    return-void
.end method


# virtual methods
.method public getMetric()I
    .registers 2

    .prologue
    .line 647
    iget v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metric:I

    return v0
.end method

.method public getTableId()I
    .registers 2

    .prologue
    .line 643
    iget v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->tableId:I

    return v0
.end method

.method public setMetric(I)V
    .registers 2
    .param p1, "m"    # I

    .prologue
    .line 651
    iput p1, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metric:I

    .line 652
    return-void
.end method
