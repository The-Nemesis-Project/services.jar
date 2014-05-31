.class public Lcom/android/server/ssrm/fgapps/TouchReportRate;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TouchReportRate.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;


# instance fields
.field final REPORT_RATE_DEFAULT:I

.field final TAG:Ljava/lang/String;

.field mIsBrowserForeground:Z

.field oldValue:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 27
    const-string v0, "SSRMv2:TouchReportRate"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->TAG:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->REPORT_RATE_DEFAULT:I

    .line 60
    iput v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->oldValue:I

    .line 34
    return-void
.end method


# virtual methods
.method calculateTouchReportRate()I
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsBrowserForeground:Z

    if-eqz v0, :cond_6

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onFgAppChanged()V
    .registers 3

    .prologue
    .line 38
    sget-object v1, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    .line 39
    .local v0, "sm":Lcom/android/server/ssrm/SortingMachine;
    if-nez v0, :cond_9

    .line 46
    :goto_8
    return-void

    .line 43
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsBrowserForeground:Z

    .line 45
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate(Z)V

    goto :goto_8
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 50
    return-void
.end method

.method public onScreenOn()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate(Z)V

    .line 74
    return-void
.end method

.method updateTouchReportRate(Z)V
    .registers 6
    .param p1, "force"    # Z

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->calculateTouchReportRate()I

    move-result v0

    .line 65
    .local v0, "newValue":I
    iget v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->oldValue:I

    if-ne v1, v0, :cond_a

    if-eqz p1, :cond_24

    .line 66
    :cond_a
    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->oldValue:I

    .line 67
    const-string v1, "SSRMv2:TouchReportRate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report_rate,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchFwReportRate(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_24
    return-void
.end method
