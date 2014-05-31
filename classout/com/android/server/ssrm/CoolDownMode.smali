.class public Lcom/android/server/ssrm/CoolDownMode;
.super Ljava/lang/Object;
.source "CoolDownMode.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field final ACTION_CHECK_SIOP_LEVEL:Ljava/lang/String;

.field final CHECK_SIOP_LEVEL_LEVEL:Ljava/lang/String;

.field final CHECK_SIOP_LEVEL_LIST:Ljava/lang/String;

.field DELAY_FOR_SIOPLEVE_6:I

.field DELAY_FOR_SIOPLEVE_8:I

.field final OVERHEAT_ID:Ljava/lang/String;

.field VZW_COOLDOWN_TEMP_LEVEL_6:I

.field VZW_COOLDOWN_TEMP_LEVEL_8:I

.field final VZW_COOL_DOWN_LEVEL_0:I

.field final VZW_COOL_DOWN_LEVEL_6:I

.field final VZW_COOL_DOWN_LEVEL_8:I

.field isSetupWizardCompleted:Z

.field mCurSIOPStep:I

.field final mIntentCheckSIOPLevel:Landroid/content/Intent;

.field mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

.field mPrevSIOPStep:I

.field mSendSIOPLevelDelay:J

.field mStartKillActiveApplicationsRunnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "SSRMv2:CoolDownMode"

    sput-object v0, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const v3, 0xea60

    const/4 v2, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    .line 39
    iput v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    .line 43
    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_6:I

    .line 45
    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_8:I

    .line 47
    const/16 v0, 0x262

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    .line 49
    const/16 v0, 0x2a8

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    .line 51
    iput v2, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_0:I

    .line 53
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_6:I

    .line 55
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_8:I

    .line 57
    iput-boolean v2, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    .line 61
    const-string v0, "android.intent.action.CHECK_SIOP_LEVEL"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->ACTION_CHECK_SIOP_LEVEL:Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHECK_SIOP_LEVEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    .line 65
    const-string v0, "check_siop_level_level"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->CHECK_SIOP_LEVEL_LEVEL:Ljava/lang/String;

    .line 67
    const-string v0, "check_siop_level_list"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->CHECK_SIOP_LEVEL_LIST:Ljava/lang/String;

    .line 69
    const-string v0, "overheat_id"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->OVERHEAT_ID:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/android/server/ssrm/CoolDownMode$2;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/CoolDownMode$2;-><init>(Lcom/android/server/ssrm/CoolDownMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/CoolDownMode;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ssrm/CoolDownMode;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CoolDownMode;->killActiveApplications(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getLaunchers()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v5

    .line 274
    .local v5, "monitor":Lcom/android/server/ssrm/Monitor;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v4, "mResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object v6, v5, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 281
    .local v3, "mLauncherInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 282
    .local v2, "item":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 284
    .end local v2    # "item":Landroid/content/pm/ResolveInfo;
    :cond_40
    return-object v4
.end method

.method private getRunningTasks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "activityManager"    # Landroid/app/ActivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v2, "mResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0x3e8

    invoke-virtual {p1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 255
    .local v3, "mRunningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_50

    .line 256
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 257
    .local v1, "item":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v4, :cond_11

    .line 258
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 260
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 262
    :cond_3d
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 268
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_50
    return-object v2
.end method

.method private killActiveApplications(I)I
    .registers 14
    .param p1, "siopLevel"    # I

    .prologue
    const/4 v11, 0x1

    .line 190
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v7

    .line 192
    .local v7, "monitor":Lcom/android/server/ssrm/Monitor;
    const-string v9, "checkingSIOP"

    const-string v10, "killActiveApplications start"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v9, v7, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/CoolDownMode;->getRunningTasks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v6

    .line 194
    .local v6, "mRunningTaskInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, v7, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v9}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 196
    .local v8, "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/16 v9, 0x8

    if-ne p1, v9, :cond_10e

    .line 197
    invoke-direct {p0}, Lcom/android/server/ssrm/CoolDownMode;->getLaunchers()Ljava/util/HashMap;

    move-result-object v5

    .line 198
    .local v5, "mLuncherInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v3, "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 200
    .local v4, "mForcedStopNumber":I
    const-string v9, "com.android.contacts"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v9, "com.android.phone"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v9, "com.google.android.apps.maps"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-boolean v9, v7, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v9, :cond_60

    .line 204
    const-string v9, "com.android.settings"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v9, "com.sec.allsharecastplayer"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v9, "com.sec.android.app.wfdbroker"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_61
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_77

    .line 210
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 211
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 215
    :cond_77
    const/4 v0, 0x0

    :goto_78
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_9c

    .line 216
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_96

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "com.vznavigator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 218
    :cond_96
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 215
    :cond_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 222
    :cond_9c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    .local v2, "item":Ljava/lang/String;
    sget-object v9, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " killActiveApplications : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v9, v7, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_a0

    .line 227
    .end local v2    # "item":Ljava/lang/String;
    :cond_ca
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ce
    :goto_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_108

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 228
    .local v2, "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v9, "com.sec.android.app.videoplayer"

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ce

    .line 229
    sget-object v9, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " killActiveApplications : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v9, v7, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_ce

    .line 234
    .end local v2    # "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_108
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v4, v9

    .line 247
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4    # "mForcedStopNumber":I
    .end local v5    # "mLuncherInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_10d
    :goto_10d
    return v4

    .line 235
    :cond_10e
    const/4 v9, 0x6

    if-lt p1, v9, :cond_142

    .line 236
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 237
    .restart local v3    # "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 238
    .restart local v4    # "mForcedStopNumber":I
    const-string v9, "com.into.stability"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_122
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_10d

    .line 240
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13f

    .line 241
    iget-object v10, v7, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 242
    add-int/lit8 v4, v4, 0x1

    .line 239
    :cond_13f
    add-int/lit8 v0, v0, 0x1

    goto :goto_122

    .line 247
    .end local v0    # "i":I
    .end local v3    # "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4    # "mForcedStopNumber":I
    :cond_142
    const/4 v4, -0x1

    goto :goto_10d
.end method


# virtual methods
.method isSetupWizardFinished()Z
    .registers 4

    .prologue
    .line 288
    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "setupFinished":Ljava/lang/String;
    if-eqz v0, :cond_19

    const-string v1, "FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 290
    sget-object v1, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    const-string v2, " isSetupWizardFinished ? : true "

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v1, 0x1

    .line 294
    :goto_18
    return v1

    .line 293
    :cond_19
    sget-object v1, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    const-string v2, " isSetupWizardFinished ? : false "

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public showCoolDownAlert(Ljava/lang/String;)V
    .registers 9
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 130
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    .line 131
    .local v2, "monitor":Lcom/android/server/ssrm/Monitor;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 133
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a39

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 135
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a38

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a3a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/ssrm/CoolDownMode$1;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/CoolDownMode$1;-><init>(Lcom/android/server/ssrm/CoolDownMode;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 149
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 150
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 151
    return-void
.end method

.method public startVZWCoolDownMode(I)V
    .registers 12
    .param p1, "currentTemperature"    # I

    .prologue
    const v9, 0x1040a37

    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v1

    .line 77
    .local v1, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-boolean v2, v1, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    if-eqz v2, :cond_14

    iget-boolean v2, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    if-nez v2, :cond_21

    .line 78
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardFinished()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 79
    iput-boolean v6, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    .line 81
    :cond_1c
    iget-boolean v2, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    if-nez v2, :cond_21

    .line 127
    :goto_20
    return-void

    .line 86
    :cond_21
    iget v2, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    if-lt p1, v2, :cond_91

    .line 87
    iput v8, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    .line 96
    :goto_27
    iget v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    if-eq v2, v3, :cond_8c

    .line 97
    sget-object v2, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendSIOPLevel is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "sys.siop.level"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v0, "mExceptionProcessListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-ne v2, v8, :cond_9b

    .line 101
    iget v2, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_8:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    .line 117
    :goto_70
    iget-boolean v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    if-eqz v2, :cond_7d

    .line 118
    iget-object v2, v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iput-boolean v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    .line 121
    :cond_7d
    iget v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-eqz v2, :cond_8c

    .line 122
    iput-boolean v6, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    .line 123
    iget-object v2, v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    .end local v0    # "mExceptionProcessListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_8c
    iget v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    iput v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    goto :goto_20

    .line 88
    :cond_91
    iget v2, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    if-lt p1, v2, :cond_98

    .line 89
    iput v7, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    goto :goto_27

    .line 91
    :cond_98
    iput v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    goto :goto_27

    .line 102
    .restart local v0    # "mExceptionProcessListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_9b
    iget v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-ne v2, v7, :cond_ce

    .line 103
    iget v2, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_6:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    .line 104
    const-string v2, "com.into.stability"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v3, "check_siop_level_list"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 106
    iget-object v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v3, "check_siop_level_level"

    iget v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v3, "overheat_id"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v2, v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_70

    .line 111
    :cond_ce
    iget-object v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v3, "check_siop_level_list"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 112
    iget-object v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v3, "check_siop_level_level"

    iget v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iget-object v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v3, "overheat_id"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object v2, v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_70
.end method
