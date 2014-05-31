.class public final Lcom/android/server/ssrm/fgapps/AirViewOnOffForDual;
.super Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;
.source "AirViewOnOffForDual.java"


# instance fields
.field mSetupWizardFinished:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AirViewOnOffForDual;->checkSetupWizardFinished()V

    .line 29
    return-void
.end method


# virtual methods
.method protected calculateAirViewStatus(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;)I
    .registers 11
    .param p1, "deviceInfo"    # Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;
    .param p2, "settingInfo"    # Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, "AIRVIEW_MODE_PEN_ONLY":I
    const/4 v1, 0x1

    .line 44
    .local v1, "AIRVIEW_MODE_FINGER_ONLY":I
    const/4 v0, 0x2

    .line 46
    .local v0, "AIRVIEW_MODE_AUTO":I
    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/AirViewOnOffForDual;->mSetupWizardFinished:Z

    if-nez v6, :cond_19

    .line 47
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AirViewOnOffForDual;->checkSetupWizardFinished()V

    .line 48
    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/AirViewOnOffForDual;->mSetupWizardFinished:Z

    if-nez v6, :cond_19

    .line 49
    const-string v4, "SSRMv2:AirViewOnOff"

    const-string v5, "Setup wizard is foreground yet."

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_18
    :goto_18
    return v3

    .line 54
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->isGripVolumeDown()Z

    move-result v6

    if-eqz v6, :cond_21

    move v3, v4

    .line 55
    goto :goto_18

    .line 57
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->isClearCoverOn()Z

    move-result v6

    if-nez v6, :cond_18

    .line 60
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->isOneHandSamsungKeypad()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->isSIPVisible()Z

    move-result v6

    if-eqz v6, :cond_35

    move v3, v5

    .line 61
    goto :goto_18

    .line 63
    :cond_35
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->isOneHandDialer()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->isContactDialerVisible()Z

    move-result v6

    if-nez v6, :cond_47

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->isPhoneContactDialerVisible()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 65
    :cond_47
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->isAirViewMasterOn()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->getAirViewMode()I

    move-result v3

    if-eqz v3, :cond_55

    .line 67
    const/4 v3, 0x3

    goto :goto_18

    :cond_55
    move v3, v5

    .line 69
    goto :goto_18

    .line 72
    :cond_57
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->isOneHandPattern()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->isPatternLockVisible()Z

    move-result v6

    if-eqz v6, :cond_65

    move v3, v5

    .line 73
    goto :goto_18

    .line 75
    :cond_65
    iget-object v6, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    if-eqz v6, :cond_7b

    iget-object v6, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    const-string v7, "com.sec.android.app.popupcalculator"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->isOneHandCalculator()Z

    move-result v6

    if-eqz v6, :cond_7b

    move v3, v5

    .line 78
    goto :goto_18

    .line 80
    :cond_7b
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->isLockScreenVisible()Z

    move-result v5

    if-eqz v5, :cond_83

    move v3, v4

    .line 81
    goto :goto_18

    .line 83
    :cond_83
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->isAirViewMasterOn()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 86
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->getAirViewMode()I

    move-result v5

    if-eqz v5, :cond_18

    .line 94
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->isMultiWindow()Z

    move-result v5

    if-nez v5, :cond_18

    .line 97
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->isStatusBarVisible()Z

    move-result v5

    if-nez v5, :cond_18

    .line 100
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->isBrowserMainPageVisible()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->isMagnifierOn()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 103
    :cond_a7
    iget-boolean v5, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mIsAirViewAppOnFg:Z

    if-eqz v5, :cond_18

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->isSIPVisible()Z

    move-result v5

    if-nez v5, :cond_18

    move v3, v4

    .line 104
    goto/16 :goto_18
.end method

.method public checkSetupWizardFinished()V
    .registers 4

    .prologue
    .line 32
    const-string v0, "FINISH"

    const-string v1, "persist.sys.setupwizard"

    const-string v2, "FINISH"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AirViewOnOffForDual;->mSetupWizardFinished:Z

    .line 34
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AirViewOnOffForDual;->mSetupWizardFinished:Z

    if-nez v0, :cond_1a

    .line 35
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setLockScreen(Z)V

    .line 37
    :cond_1a
    return-void
.end method
