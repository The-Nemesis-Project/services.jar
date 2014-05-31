.class public Lcom/android/server/ssrm/BatteryCoolDownMode;
.super Ljava/lang/Object;
.source "BatteryCoolDownMode.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field final ACTION_CHECK_SIOP_LEVEL:Ljava/lang/String;

.field final BATTERY_OVERHEAT_LEVEL:Ljava/lang/String;

.field final BATT_OVERHEAT_LEVEL_2:I

.field final BATT_TEMP_FOR_NOTIFICATION:I

.field final BATT_TEMP_FOR_PROCESS_KILL:I

.field final BATT_TEMP_FOR_RELEASE:I

.field final CHECK_SIOP_LEVEL_LIST:Ljava/lang/String;

.field DELAY_FOR_BATTERY_COOLDOWN:I

.field final OVERHEAT_ID:Ljava/lang/String;

.field mBatteryOverheatLevel:I

.field mBatteryOverheatLevelPrev:I

.field mExceptionProcessListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mIntentCheckSIOPLevel:Landroid/content/Intent;

.field mKillActiveApplicationsRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "SSRMv2:BatteryCoolDownMode"

    sput-object v0, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    .line 39
    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevelPrev:I

    .line 41
    const v0, 0xea60

    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->DELAY_FOR_BATTERY_COOLDOWN:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_OVERHEAT_LEVEL_2:I

    .line 45
    const/16 v0, 0x352

    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_PROCESS_KILL:I

    .line 47
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_RELEASE:I

    .line 49
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_NOTIFICATION:I

    .line 51
    const-string v0, "android.intent.action.CHECK_SIOP_LEVEL"

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->ACTION_CHECK_SIOP_LEVEL:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHECK_SIOP_LEVEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    .line 55
    const-string v0, "battery_overheat_level"

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATTERY_OVERHEAT_LEVEL:Ljava/lang/String;

    .line 57
    const-string v0, "overheat_id"

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->OVERHEAT_ID:Ljava/lang/String;

    .line 59
    const-string v0, "check_siop_level_list"

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->CHECK_SIOP_LEVEL_LIST:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/android/server/ssrm/BatteryCoolDownMode$3;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/BatteryCoolDownMode$3;-><init>(Lcom/android/server/ssrm/BatteryCoolDownMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/BatteryCoolDownMode;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ssrm/BatteryCoolDownMode;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/BatteryCoolDownMode;->killActiveApplications(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

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
    .line 231
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v5

    .line 233
    .local v5, "monitor":Lcom/android/server/ssrm/Monitor;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v4, "mResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v6, v5, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 240
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

    .line 241
    .local v2, "item":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 243
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
    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, "mResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0x3e8

    invoke-virtual {p1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 214
    .local v3, "mRunningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_50

    .line 215
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

    .line 216
    .local v1, "item":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v4, :cond_11

    .line 217
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 219
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 221
    :cond_3d
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 227
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_50
    return-object v2
.end method

.method private killActiveApplications(I)I
    .registers 15
    .param p1, "battOverheatLevel"    # I

    .prologue
    const/4 v12, 0x1

    .line 164
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v8

    .line 166
    .local v8, "monitor":Lcom/android/server/ssrm/Monitor;
    sget-object v10, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

    const-string v11, "killActiveApplications start"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v10, v8, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 169
    .local v3, "mActivityManager":Landroid/app/ActivityManager;
    invoke-direct {p0, v3}, Lcom/android/server/ssrm/BatteryCoolDownMode;->getRunningTasks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v7

    .line 170
    .local v7, "mRunningTaskInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 172
    .local v9, "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v10, 0x2

    if-ne p1, v10, :cond_db

    .line 173
    invoke-direct {p0}, Lcom/android/server/ssrm/BatteryCoolDownMode;->getLaunchers()Ljava/util/HashMap;

    move-result-object v6

    .line 174
    .local v6, "mLuncherInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v4, "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    .line 176
    .local v5, "mForcedStopNumber":I
    const-string v10, "com.android.contacts"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v10, "com.android.phone"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_54

    .line 180
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 181
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 179
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 185
    :cond_54
    const/4 v0, 0x0

    :goto_55
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_6b

    .line 186
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 187
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 185
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 191
    :cond_6b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    .local v2, "item":Ljava/lang/String;
    sget-object v10, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " killActiveApplications : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_6f

    .line 196
    .end local v2    # "item":Ljava/lang/String;
    :cond_97
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9b
    :goto_9b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 197
    .local v2, "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v10, "com.sec.android.app.videoplayer"

    iget-object v11, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 198
    sget-object v10, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " killActiveApplications : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v10, v8, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v11, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_9b

    .line 203
    .end local v2    # "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_d5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v10, v5

    .line 206
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5    # "mForcedStopNumber":I
    .end local v6    # "mLuncherInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_da
    return v10

    :cond_db
    const/4 v10, -0x1

    goto :goto_da
.end method


# virtual methods
.method public showCoolDownAlert(I)V
    .registers 10
    .param p1, "msg"    # I

    .prologue
    const/4 v7, 0x0

    .line 114
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    .line 115
    .local v2, "monitor":Lcom/android/server/ssrm/Monitor;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 117
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a3d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 119
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a3c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a3e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/ssrm/BatteryCoolDownMode$2;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/BatteryCoolDownMode$2;-><init>(Lcom/android/server/ssrm/BatteryCoolDownMode;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 133
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 134
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 135
    return-void
.end method

.method public startBatteryCoolDownMode(I)V
    .registers 8
    .param p1, "batteryTemp"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 68
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    .line 69
    .local v0, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    if-nez v1, :cond_b

    .line 111
    :cond_a
    :goto_a
    return-void

    .line 72
    :cond_b
    sget-object v1, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Current Battery Temperature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/16 v1, 0x352

    if-lt p1, v1, :cond_93

    .line 75
    iput v5, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    .line 81
    :goto_29
    iget v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevelPrev:I

    if-ne v1, v5, :cond_33

    const/16 v1, 0x320

    if-le p1, v1, :cond_33

    .line 82
    iput v5, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    .line 87
    :cond_33
    iget v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevelPrev:I

    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    if-eq v1, v2, :cond_a

    .line 88
    sget-object v1, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBatteryCoolDownMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionProcessListMap:Ljava/util/HashMap;

    .line 90
    iget v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    if-ne v1, v5, :cond_9e

    .line 91
    iget-object v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionProcessListMap:Ljava/util/HashMap;

    const-string v2, "com.sec.knox.containeragent"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionProcessListMap:Ljava/util/HashMap;

    const-string v2, "com.android.contacts"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionProcessListMap:Ljava/util/HashMap;

    const-string v2, "com.android.phone"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/BatteryCoolDownMode$1;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/BatteryCoolDownMode$1;-><init>(Lcom/android/server/ssrm/BatteryCoolDownMode;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 109
    :goto_8d
    iget v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    iput v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevelPrev:I

    goto/16 :goto_a

    .line 76
    :cond_93
    const/16 v1, 0x2ee

    if-lt p1, v1, :cond_9a

    .line 77
    iput v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    goto :goto_29

    .line 79
    :cond_9a
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    goto :goto_29

    .line 103
    :cond_9e
    iget-object v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v2, "check_siop_level_list"

    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionProcessListMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v2, "battery_overheat_level"

    iget v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v2, "overheat_id"

    const v3, 0x1040a3b

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v1, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_8d
.end method
