.class public final Lcom/android/server/ssrm/fgapps/AirViewOnOffDummy;
.super Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;
.source "AirViewOnOffDummy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method protected calculateAirViewStatus(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;)I
    .registers 4
    .param p1, "deviceInfo"    # Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;
    .param p2, "settingInfo"    # Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
