.class public abstract Lcom/android/server/ssrm/fgapps/FgAppListener;
.super Ljava/lang/Object;
.source "FgAppListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
    }
.end annotation


# static fields
.field static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field static final SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String; = "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

.field static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;

.field static mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

.field static mSettingInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;


# instance fields
.field private mBootComplete:Z

.field private mForegroundPackageName:Ljava/lang/String;

.field private mIsFgAppInPackageList:Z

.field mIsRegistered:Z

.field private mMultiWindowOn:Z

.field protected final mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateDisable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    .line 318
    new-instance v0, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    .line 326
    new-instance v0, Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mSettingInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mUpdateDisable:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    .line 194
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    .line 248
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 308
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    .line 328
    return-void
.end method

.method protected static fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;)",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_22

    .line 40
    sget-object v2, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    monitor-enter v2

    .line 41
    :try_start_b
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_21

    .line 42
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 43
    .local v0, "obj":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->setRegister()V

    .line 44
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v0    # "obj":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_2b

    .line 48
    :cond_22
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener;

    return-object v1

    .line 46
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method protected static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {p0, p1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public static notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 79
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 81
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 82
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onFgAppChangedImpl(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_a

    .line 85
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_28
    return-void
.end method

.method public static onBrowserDashModeForAll(Z)V
    .registers 5
    .param p0, "on"    # Z

    .prologue
    .line 70
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 72
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 73
    invoke-virtual {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onBrowserDashMode(Z)V

    goto :goto_a

    .line 76
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_28
    return-void
.end method

.method private onFgAppChangedImpl(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 88
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_6

    if-nez p2, :cond_7

    .line 103
    :cond_6
    :goto_6
    return-void

    .line 92
    :cond_7
    sput-object p1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    .line 95
    instance-of v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    if-eqz v1, :cond_6

    move-object v1, p0

    .line 96
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    invoke-interface {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppChanged()V

    .line 97
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    .local v0, "isFgAppInPackageList":Z
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    if-eq v1, v0, :cond_6

    .line 99
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    move-object v1, p0

    .line 100
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppInPackageList(Z)V

    goto :goto_6
.end method

.method public static onReceiveForAll(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 63
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 64
    invoke-virtual {v2, p0, p1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    goto :goto_a

    .line 67
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_28
    return-void
.end method

.method public static onSIPVisibilityChangedForAll(Z)V
    .registers 5
    .param p0, "visible"    # Z

    .prologue
    .line 332
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iput-boolean p0, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mSIPVisible:Z

    .line 334
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 335
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 336
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 337
    instance-of v3, v2, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;

    if-eqz v3, :cond_e

    .line 338
    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;

    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;->onSipVisibilityChanged(Z)V

    goto :goto_e

    .line 342
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    :cond_32
    return-void
.end method

.method public static onUsbConnectionStatusChangedForAll(Z)V
    .registers 5
    .param p0, "connected"    # Z

    .prologue
    .line 345
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iget-boolean v3, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mUsbConnected:Z

    if-ne v3, p0, :cond_7

    .line 358
    :cond_6
    return-void

    .line 348
    :cond_7
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iput-boolean p0, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mUsbConnected:Z

    .line 350
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 351
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 352
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 353
    instance-of v3, v2, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;

    if-eqz v3, :cond_15

    .line 354
    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;

    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;->onUsbConnectionStatusChanged(Z)V

    goto :goto_15
.end method

.method public static register(Ljava/lang/Class;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .registers 4
    .param p1, "fgAppListener"    # Lcom/android/server/ssrm/fgapps/FgAppListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    sget-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 53
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    monitor-enter v1

    .line 54
    :try_start_b
    sget-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 56
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->setRegister()V

    .line 58
    :cond_14
    return-void

    .line 55
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected static writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToSysfs:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_35

    .line 294
    :cond_34
    :goto_34
    return-void

    .line 274
    :cond_35
    const/4 v1, 0x0

    .line 276
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_36
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_55
    .catchall {:try_start_36 .. :try_end_3b} :catchall_4e

    .line 277
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_3b
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 278
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_47} :catch_65
    .catchall {:try_start_3b .. :try_end_47} :catchall_62

    .line 284
    if-eqz v2, :cond_4c

    .line 286
    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_60

    :cond_4c
    :goto_4c
    move-object v1, v2

    .line 293
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_34

    .line 284
    :catchall_4e
    move-exception v3

    :goto_4f
    if-eqz v1, :cond_54

    .line 286
    :try_start_51
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5e

    .line 284
    :cond_54
    :goto_54
    throw v3

    .line 279
    :catch_55
    move-exception v3

    .line 284
    :goto_56
    if-eqz v1, :cond_34

    .line 286
    :try_start_58
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_34

    .line 287
    :catch_5c
    move-exception v3

    goto :goto_34

    :catch_5e
    move-exception v4

    goto :goto_54

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_60
    move-exception v3

    goto :goto_4c

    .line 284
    :catchall_62
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4f

    .line 279
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_65
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_56
.end method

.method public static x([I)Ljava/lang/String;
    .registers 2
    .param p0, "raw"    # [I

    .prologue
    .line 361
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method

.method protected clearPackages()V
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 264
    return-void
.end method

.method protected getForegroundPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected isBootComplete()Z
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    return v0
.end method

.method protected isMultiWindowActivated()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    return v0
.end method

.method protected isPackageExist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 255
    if-nez p1, :cond_4

    .line 256
    const/4 v0, 0x0

    .line 259
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method isRegistered()Z
    .registers 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    return v0
.end method

.method protected onBrowserDashMode(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 207
    return-void
.end method

.method onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "value"    # Lcom/android/server/ssrm/fgapps/FgAppListener;

    .prologue
    const/4 v8, 0x0

    .line 116
    const-string v0, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    .line 117
    .local v0, "ACTION_NOTIFY_MULTIWINDOW_STATUS":Ljava/lang/String;
    const-string v1, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    .line 119
    .local v1, "EXTRA_MULTIWINDOW_RUNNING":Ljava/lang/String;
    if-eqz p1, :cond_9

    if-nez p2, :cond_a

    .line 169
    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_9
    :goto_9
    return-void

    .line 123
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_a
    sput-object p1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "action":Ljava/lang/String;
    const-string v7, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 127
    const-string v7, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    .line 128
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;

    if-eqz v7, :cond_9

    .line 129
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    iget-boolean v7, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    invoke-interface {p3, v7}, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;->onMultiWindowStatusChanged(Z)V

    goto :goto_9

    .line 132
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_2c
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 133
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    .line 134
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;

    if-eqz v7, :cond_9

    .line 135
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;->onBootComplete()V

    goto :goto_9

    .line 138
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_41
    const-string v7, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_51

    const-string v7, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 139
    :cond_51
    const-string v7, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "statusName":Ljava/lang/String;
    const-string v7, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 141
    .local v6, "statusValue":Z
    const-string v7, "PackageName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "packageName":Ljava/lang/String;
    const-string v7, "BOOSTER_UPDATE_DISABLE"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 143
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mUpdateDisable:Z

    .line 145
    :cond_6d
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;

    if-eqz v7, :cond_9

    .line 146
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3, v5, v6, v4}, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;->onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_9

    .line 149
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "statusName":Ljava/lang/String;
    .end local v6    # "statusValue":Z
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_77
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 150
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    if-eqz v7, :cond_9

    .line 151
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;->onLockScreenRelease()V

    goto :goto_9

    .line 153
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_89
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b4

    .line 154
    const-string v7, "keyguard"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 156
    .local v3, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-nez v7, :cond_a9

    .line 157
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    if-eqz v7, :cond_a9

    move-object v7, p3

    .line 158
    check-cast v7, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    invoke-interface {v7}, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;->onLockScreenRelease()V

    .line 161
    :cond_a9
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;

    if-eqz v7, :cond_9

    .line 162
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;->onScreenOn()V

    goto/16 :goto_9

    .line 164
    .end local v3    # "mKeyguardManager":Landroid/app/KeyguardManager;
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_b4
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 165
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;

    if-eqz v7, :cond_9

    .line 166
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;->onScreenOff()V

    goto/16 :goto_9
.end method

.method readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-static {p1, p2}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setRegister()V
    .registers 2

    .prologue
    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    .line 316
    return-void
.end method

.method protected updateForegroundPackageStatus()V
    .registers 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 192
    :cond_4
    :goto_4
    return-void

    .line 184
    :cond_5
    instance-of v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    if-eqz v1, :cond_4

    move-object v1, p0

    .line 185
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    invoke-interface {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppChanged()V

    .line 186
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 187
    .local v0, "isFgAppInPackageList":Z
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    if-eq v1, v0, :cond_4

    .line 188
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    move-object v1, p0

    .line 189
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppInPackageList(Z)V

    goto :goto_4
.end method
