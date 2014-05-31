.class public Lcom/android/server/ssrm/fgapps/SideTouch;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "SideTouch.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;


# instance fields
.field final TAG:Ljava/lang/String;

.field mIsAppForeground:Z

.field mMultiverse:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 33
    const-string v0, "SSRMv2:SideTouch"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SideTouch;->TAG:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SideTouch;->mIsAppForeground:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SideTouch;->mMultiverse:Z

    .line 36
    return-void
.end method


# virtual methods
.method public onBootComplete()V
    .registers 9

    .prologue
    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.sidetouch.GRIP"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/android/server/ssrm/fgapps/SideTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 78
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x200

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 80
    .local v4, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 81
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/fgapps/SideTouch;->addPackage(Ljava/lang/String;)V

    .line 82
    const-string v5, "SSRMv2:SideTouch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/fgapps/SideTouch;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 84
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_47
    return-void
.end method

.method public onFgAppChanged()V
    .registers 1

    .prologue
    .line 42
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/SideTouch;->mIsAppForeground:Z

    .line 47
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SideTouch;->updateSideTouch()V

    .line 48
    return-void
.end method

.method public onScreenOn()V
    .registers 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SideTouch;->updateSideTouch()V

    .line 71
    return-void
.end method

.method public setMultiverseEnable(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 53
    const-string v0, "SSRMv2:SideTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultiverseEnable:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/SideTouch;->mMultiverse:Z

    .line 55
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SideTouch;->updateSideTouch()V

    .line 56
    return-void
.end method

.method updateSideTouch()V
    .registers 4

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SideTouch;->mIsAppForeground:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SideTouch;->mMultiverse:Z

    if-eqz v0, :cond_1a

    .line 60
    :cond_8
    const-string v0, "SSRMv2:SideTouch"

    const-string v1, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v2, "sidekey_enable,1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "SSRMv2:SideTouch"

    const-string v1, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    :goto_19
    return-void

    .line 63
    :cond_1a
    const-string v0, "SSRMv2:SideTouch"

    const-string v1, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v2, "sidekey_enable,0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "SSRMv2:SideTouch"

    const-string v1, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_19
.end method
