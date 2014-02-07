.class public Lcom/android/server/ThermalService$PlatformInfo;
.super Ljava/lang/Object;
.source "ThermalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlatformInfo"
.end annotation


# instance fields
.field public mMaxThermalStates:I

.field final synthetic this$0:Lcom/android/server/ThermalService;


# direct methods
.method public constructor <init>(Lcom/android/server/ThermalService;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/ThermalService$PlatformInfo;->this$0:Lcom/android/server/ThermalService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxThermalStates()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/ThermalService$PlatformInfo;->mMaxThermalStates:I

    return v0
.end method

.method public printAttrs()V
    .registers 3

    .prologue
    .line 87
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ThermalService$PlatformInfo;->mMaxThermalStates:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
