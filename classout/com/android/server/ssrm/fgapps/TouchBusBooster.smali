.class public final Lcom/android/server/ssrm/fgapps/TouchBusBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TouchBusBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "SSRMv2:TouchBusBooster"


# instance fields
.field mTouchBusPowerSaving:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mTouchBusPowerSaving:Z

    .line 31
    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .registers 12

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_d

    .line 108
    :cond_c
    :goto_c
    return-void

    .line 61
    :cond_d
    const/4 v4, 0x0

    .line 62
    .local v4, "isPowerSavingPackage":Z
    const/4 v3, 0x0

    .line 64
    .local v3, "isBusOnly":Z
    sget-object v9, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v8

    .line 65
    .local v8, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v8, v6}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 66
    const/4 v4, 0x1

    .line 70
    :cond_1c
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "com.facebook.katana"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "com.google.android.talk"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "com.kakao.talk"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "com.whatsapp"

    aput-object v10, v1, v9

    .line 74
    .local v1, "busPowerSavingPackages":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_36
    if-ge v2, v5, :cond_42

    aget-object v7, v0, v2

    .line 75
    .local v7, "psPackage":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 76
    const/4 v4, 0x1

    .line 77
    const/4 v3, 0x1

    .line 82
    .end local v7    # "psPackage":Ljava/lang/String;
    :cond_42
    iget-boolean v9, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mTouchBusPowerSaving:Z

    if-eq v9, v4, :cond_c

    .line 85
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mTouchBusPowerSaving:Z

    .line 87
    iget-boolean v9, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mTouchBusPowerSaving:Z

    if-eqz v9, :cond_72

    .line 88
    const-string v9, "SSRMv2:TouchBusBooster"

    const-string v10, "TouchBusPowerSaving:: now it is enabled."

    invoke-static {v9, v10}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-nez v3, :cond_5c

    .line 92
    const-string v9, "SSRMv2:TouchBusBooster"

    const-string v10, "boost_level,1"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchBooster(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_5c
    sget-boolean v9, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    if-eqz v9, :cond_c

    .line 95
    const-string v9, "0"

    const-string v10, "/sys/class/devfreq/exynos5-busfreq-mif/en_monitoring"

    invoke-virtual {p0, v9, v10}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v9, "0"

    const-string v10, "/sys/class/devfreq/exynos5-busfreq-int/en_monitoring"

    invoke-virtual {p0, v9, v10}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 74
    .restart local v7    # "psPackage":Ljava/lang/String;
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 99
    .end local v7    # "psPackage":Ljava/lang/String;
    :cond_72
    const-string v9, "SSRMv2:TouchBusBooster"

    const-string v10, "TouchBusPowerSaving:: now it is disabled."

    invoke-static {v9, v10}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v9, "SSRMv2:TouchBusBooster"

    const-string v10, "boost_level,2"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchBooster(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-boolean v9, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    if-eqz v9, :cond_c

    .line 104
    const-string v9, "1"

    const-string v10, "/sys/class/devfreq/exynos5-busfreq-mif/en_monitoring"

    invoke-virtual {p0, v9, v10}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v9, "1"

    const-string v10, "/sys/class/devfreq/exynos5-busfreq-int/en_monitoring"

    invoke-virtual {p0, v9, v10}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 120
    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mTouchBusPowerSaving:Z

    if-eqz v0, :cond_5

    .line 52
    :goto_4
    return-void

    .line 41
    :cond_5
    if-eqz p1, :cond_16

    .line 42
    const-string v0, "SSRMv2:TouchBusBooster"

    const-string v1, "onSIPEventCallback:: now touch booster level 1 is enabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "SSRMv2:TouchBusBooster"

    const-string v1, "boost_level,1"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchBooster(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 47
    :cond_16
    const-string v0, "SSRMv2:TouchBusBooster"

    const-string v1, "onSIPEventCallback:: now touch booster level 2 is enabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "SSRMv2:TouchBusBooster"

    const-string v1, "boost_level,2"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchBooster(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method readLineFromSysfs(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "SSRMv2:TouchBusBooster"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    return-void
.end method

.method writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p2, p1}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
