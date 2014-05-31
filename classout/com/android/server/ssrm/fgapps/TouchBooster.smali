.class public final Lcom/android/server/ssrm/fgapps/TouchBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TouchBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;


# instance fields
.field final MESSENGERS:[Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field final TOUCH_BOOSTER_DEFAULT:I

.field final TOUCH_KEY_BOOSTER_DEFAULT:I

.field lastTouchBoosterValue:I

.field lastTouchKeyBoosterValue:I

.field mBrowserVisible:Z

.field mIsHeavyAppInForeground:Z

.field mIsSetDefault:Z

.field mMessengerVisible:Z

.field mSIPVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 27
    const-string v0, "SSRMv2:TouchBooster"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.talk"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->MESSENGERS:[Ljava/lang/String;

    .line 36
    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->TOUCH_BOOSTER_DEFAULT:I

    .line 38
    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->TOUCH_KEY_BOOSTER_DEFAULT:I

    .line 40
    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    .line 42
    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    .line 44
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsSetDefault:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsHeavyAppInForeground:Z

    .line 30
    return-void
.end method


# virtual methods
.method calculateCurrentTouchBooster()I
    .registers 3

    .prologue
    const/4 v0, 0x3

    .line 79
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    if-eqz v1, :cond_a

    .line 91
    :cond_9
    :goto_9
    return v0

    .line 82
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    if-eqz v1, :cond_10

    .line 83
    const/4 v0, 0x1

    goto :goto_9

    .line 85
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-nez v1, :cond_9

    .line 88
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_1b

    .line 89
    const/16 v0, 0x9

    goto :goto_9

    .line 91
    :cond_1b
    const/4 v0, 0x2

    goto :goto_9
.end method

.method calculateCurrentTouchKeyBooster()I
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-eqz v0, :cond_6

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    goto :goto_5
.end method

.method public onFgAppChanged()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 112
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    .line 113
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "fgPackageName":Ljava/lang/String;
    if-nez v1, :cond_d

    .line 134
    :goto_c
    return-void

    .line 120
    :cond_d
    sget-object v6, Lcom/android/server/ssrm/fgapps/TouchBooster;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v5

    .line 121
    .local v5, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v5, v1}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 122
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    .line 124
    :cond_1b
    invoke-virtual {v5, v1}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsHeavyAppInForeground:Z

    .line 126
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->MESSENGERS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_25
    if-ge v2, v3, :cond_31

    aget-object v4, v0, v2

    .line 127
    .local v4, "messengerPackageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 128
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    .line 133
    .end local v4    # "messengerPackageName":Ljava/lang/String;
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    goto :goto_c

    .line 126
    .restart local v4    # "messengerPackageName":Ljava/lang/String;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 138
    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    .line 76
    return-void
.end method

.method updateTouchBooster()V
    .registers 4

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mUpdateDisable:Z

    if-eqz v0, :cond_13

    .line 48
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsSetDefault:Z

    if-nez v0, :cond_12

    .line 49
    const-string v0, "SSRMv2:TouchBooster"

    const-string v1, "boost_level,2"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchBooster(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsSetDefault:Z

    .line 70
    :cond_12
    :goto_12
    return-void

    .line 54
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsSetDefault:Z

    .line 56
    iget v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateCurrentTouchBooster()I

    move-result v1

    if-eq v0, v1, :cond_58

    .line 57
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateCurrentTouchBooster()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    .line 61
    const-string v0, "SSRMv2:TouchBooster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boost_level,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchBooster(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "SSRMv2:TouchBooster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch Booster Level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/TouchBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_58
    iget v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateCurrentTouchKeyBooster()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 65
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateCurrentTouchKeyBooster()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    .line 67
    const-string v0, "SSRMv2:TouchBooster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchKeyBooster(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "SSRMv2:TouchBooster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch Key Booster Level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/TouchBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12
.end method
