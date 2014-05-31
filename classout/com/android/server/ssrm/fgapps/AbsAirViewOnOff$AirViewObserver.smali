.class Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;
.super Landroid/database/ContentObserver;
.source "AbsAirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AirViewObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;)V
    .registers 3

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    .line 803
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 804
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iget-object v0, v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;

    if-eqz v0, :cond_12

    .line 809
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iget-object v0, v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->readAirViewSettings()V

    .line 810
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    .line 812
    :cond_12
    return-void
.end method
