.class Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;
.super Ljava/lang/Object;
.source "AbsAirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsAirViewInfo"
.end annotation


# instance fields
.field private mAirViewMasterOnOff:Z

.field private mAirViewMode:I

.field mAirViewObserver:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

.field private mFingerOverViewOn:Z

.field private mMagnifierOn:Z

.field private mOneHandAnyScreen:Z

.field private mOneHandCalculator:Z

.field private mOneHandDialer:Z

.field private mOneHandPattern:Z

.field private mOneHandSamsungKeypad:Z

.field mResolver:Landroid/content/ContentResolver;

.field mcontext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-object p2, p1, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mContext:Landroid/content/Context;

    .line 667
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    .line 669
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->readAirViewSettings()V

    .line 670
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->registerObservers()V

    .line 671
    return-void
.end method


# virtual methods
.method public getAirViewMode()I
    .registers 2

    .prologue
    .line 765
    iget v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMode:I

    return v0
.end method

.method public isAirViewMasterOn()Z
    .registers 2

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    return v0
.end method

.method public isFingerHoverOn()Z
    .registers 2

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    return v0
.end method

.method public isMagnifierOn()Z
    .registers 2

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    return v0
.end method

.method public isOneHandAnyScreen()Z
    .registers 2

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    return v0
.end method

.method public isOneHandCalculator()Z
    .registers 2

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    return v0
.end method

.method public isOneHandDialer()Z
    .registers 2

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    return v0
.end method

.method public isOneHandPattern()Z
    .registers 2

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    return v0
.end method

.method public isOneHandSamsungKeypad()Z
    .registers 2

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    return v0
.end method

.method printDebug()V
    .registers 4

    .prologue
    .line 793
    const-string v1, "SSRMv2:AirViewOnOff"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsAirViewInfo:: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    if-eqz v0, :cond_6b

    const-string v0, "1"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    if-eqz v0, :cond_6e

    const-string v0, "1"

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    if-eqz v0, :cond_71

    const-string v0, "1"

    :goto_2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    if-eqz v0, :cond_74

    const-string v0, "1"

    :goto_37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    if-eqz v0, :cond_77

    const-string v0, "1"

    :goto_41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    if-eqz v0, :cond_7a

    const-string v0, "1"

    :goto_4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    if-eqz v0, :cond_7d

    const-string v0, "1"

    :goto_55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    if-eqz v0, :cond_80

    const-string v0, "1"

    :goto_5f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return-void

    .line 793
    :cond_6b
    const-string v0, "0"

    goto :goto_13

    :cond_6e
    const-string v0, "0"

    goto :goto_1d

    :cond_71
    const-string v0, "0"

    goto :goto_2d

    :cond_74
    const-string v0, "0"

    goto :goto_37

    :cond_77
    const-string v0, "0"

    goto :goto_41

    :cond_7a
    const-string v0, "0"

    goto :goto_4b

    :cond_7d
    const-string v0, "0"

    goto :goto_55

    :cond_80
    const-string v0, "0"

    goto :goto_5f
.end method

.method readAirViewSettings()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 674
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_6d

    .line 675
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    .line 680
    :goto_e
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_70

    .line 681
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    .line 686
    :goto_1a
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMode:I

    .line 688
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_73

    .line 689
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    .line 694
    :goto_30
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "any_screen_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_76

    .line 695
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    .line 700
    :goto_3c
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_dialer_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_79

    .line 701
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    .line 706
    :goto_48
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_7c

    .line 707
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    .line 712
    :goto_54
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_calculator_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_7f

    .line 713
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    .line 718
    :goto_60
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_pattern_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_82

    .line 719
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    .line 723
    :goto_6c
    return-void

    .line 677
    :cond_6d
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    goto :goto_e

    .line 683
    :cond_70
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    goto :goto_1a

    .line 691
    :cond_73
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    goto :goto_30

    .line 697
    :cond_76
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    goto :goto_3c

    .line 703
    :cond_79
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    goto :goto_48

    .line 709
    :cond_7c
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    goto :goto_54

    .line 715
    :cond_7f
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    goto :goto_60

    .line 721
    :cond_82
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    goto :goto_6c
.end method

.method registerObservers()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 726
    new-instance v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;-><init>(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

    .line 727
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 730
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 733
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 736
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view_magnifier"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 739
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "any_screen_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 742
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_dialer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 745
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 748
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_calculator_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 751
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_pattern_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 754
    return-void
.end method
