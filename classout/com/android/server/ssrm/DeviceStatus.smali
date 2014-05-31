.class public Lcom/android/server/ssrm/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# static fields
.field private static sBatteyRemaining:I

.field private static sPowerConnected:Z

.field private static sPowerSavingMode:Z

.field private static sUsbConnected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryRemaining()I
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/android/server/ssrm/DeviceStatus;->sBatteyRemaining:I

    return v0
.end method

.method public static isPowerConnected()Z
    .registers 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerConnected:Z

    return v0
.end method

.method public static isPowerSavingMode()Z
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    return v0
.end method

.method public static isUsbConnected()Z
    .registers 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sUsbConnected:Z

    return v0
.end method

.method public static setBatteryRemaining(I)V
    .registers 1
    .param p0, "percent"    # I

    .prologue
    .line 34
    sput p0, Lcom/android/server/ssrm/DeviceStatus;->sBatteyRemaining:I

    .line 35
    return-void
.end method

.method public static setPowerConnected(Z)V
    .registers 1
    .param p0, "connected"    # Z

    .prologue
    .line 54
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sPowerConnected:Z

    .line 55
    return-void
.end method

.method public static setPowerSavingMode(Z)V
    .registers 1
    .param p0, "on"    # Z

    .prologue
    .line 24
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    .line 25
    return-void
.end method

.method public static setUsbConnected(Z)V
    .registers 1
    .param p0, "connected"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sUsbConnected:Z

    .line 45
    return-void
.end method
