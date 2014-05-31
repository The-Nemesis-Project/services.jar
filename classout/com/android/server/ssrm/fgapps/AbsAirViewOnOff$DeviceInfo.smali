.class Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;
.super Ljava/lang/Object;
.source "AbsAirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeviceInfo"
.end annotation


# instance fields
.field private mBrowserMainPageOn:Z

.field private mClearCoverOn:Z

.field private mContactDialerOn:Z

.field private mGripVolumeDownOn:Z

.field private mLandscape:Z

.field private mLockScreenOn:Z

.field private mMultiWindowOn:Z

.field private mPatternLockOn:Z

.field private mPenAttached:Z

.field private mPhoneDialerOn:Z

.field private mSIPOn:Z

.field private mStatusBarOn:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 518
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    .line 520
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    .line 521
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    .line 522
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    .line 523
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    .line 524
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    .line 525
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    .line 526
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    .line 527
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    .line 528
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    .line 529
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    .line 530
    return-void
.end method


# virtual methods
.method isBrowserMainPageVisible()Z
    .registers 2

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    return v0
.end method

.method isClearCoverOn()Z
    .registers 2

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    return v0
.end method

.method isContactDialerVisible()Z
    .registers 2

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    return v0
.end method

.method isGripVolumeDown()Z
    .registers 2

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    return v0
.end method

.method isLandscapeMode()Z
    .registers 2

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    return v0
.end method

.method isLockScreenVisible()Z
    .registers 2

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    return v0
.end method

.method isMultiWindow()Z
    .registers 2

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    return v0
.end method

.method isPatternLockVisible()Z
    .registers 2

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    return v0
.end method

.method isPenAttached()Z
    .registers 2

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    return v0
.end method

.method isPhoneContactDialerVisible()Z
    .registers 2

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    return v0
.end method

.method isSIPVisible()Z
    .registers 2

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mSIPOn:Z

    return v0
.end method

.method isStatusBarVisible()Z
    .registers 2

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    return v0
.end method

.method printDebug()V
    .registers 4

    .prologue
    .line 629
    const-string v1, "SSRMv2:AirViewOnOff"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceInfo:: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    if-eqz v0, :cond_83

    const-string v0, "1"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    if-eqz v0, :cond_86

    const-string v0, "1"

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    if-eqz v0, :cond_89

    const-string v0, "1"

    :goto_27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    if-eqz v0, :cond_8c

    const-string v0, "1"

    :goto_31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    if-eqz v0, :cond_8f

    const-string v0, "1"

    :goto_3b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    if-eqz v0, :cond_92

    const-string v0, "1"

    :goto_45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    if-eqz v0, :cond_95

    const-string v0, "1"

    :goto_4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    if-eqz v0, :cond_98

    const-string v0, "1"

    :goto_59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    if-eqz v0, :cond_9b

    const-string v0, "1"

    :goto_63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    if-eqz v0, :cond_9e

    const-string v0, "1"

    :goto_6d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    if-eqz v0, :cond_a1

    const-string v0, "1"

    :goto_77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void

    .line 629
    :cond_83
    const-string v0, "0"

    goto :goto_13

    :cond_86
    const-string v0, "0"

    goto :goto_1d

    :cond_89
    const-string v0, "0"

    goto :goto_27

    :cond_8c
    const-string v0, "0"

    goto :goto_31

    :cond_8f
    const-string v0, "0"

    goto :goto_3b

    :cond_92
    const-string v0, "0"

    goto :goto_45

    :cond_95
    const-string v0, "0"

    goto :goto_4f

    :cond_98
    const-string v0, "0"

    goto :goto_59

    :cond_9b
    const-string v0, "0"

    goto :goto_63

    :cond_9e
    const-string v0, "0"

    goto :goto_6d

    :cond_a1
    const-string v0, "0"

    goto :goto_77
.end method

.method setBrowserMainPage(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    .line 582
    return-void
.end method

.method setClearCover(Z)V
    .registers 2
    .param p1, "covered"    # Z

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    .line 534
    return-void
.end method

.method setContactDialerVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    .line 598
    return-void
.end method

.method setGripVolumeDown(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 621
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    .line 622
    return-void
.end method

.method setLandscape(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    .line 574
    return-void
.end method

.method setLockScreen(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 557
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    .line 558
    return-void
.end method

.method setMultiWindow(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    .line 542
    return-void
.end method

.method setPatternLockVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    .line 614
    return-void
.end method

.method setPenAttached(Z)V
    .registers 2
    .param p1, "attach"    # Z

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    .line 590
    return-void
.end method

.method setPhoneDialerVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 605
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    .line 606
    return-void
.end method

.method setSIP(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 565
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mSIPOn:Z

    .line 566
    return-void
.end method

.method setStatusBar(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    .line 550
    return-void
.end method
