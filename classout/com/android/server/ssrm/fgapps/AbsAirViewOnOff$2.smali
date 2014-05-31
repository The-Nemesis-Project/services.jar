.class Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;
.super Ljava/lang/Object;
.source "AbsAirViewOnOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->discoverAndRegisterPackagesWithFingerHoverIntentFilter(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

.field final synthetic val$activityManager:Landroid/app/ActivityManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;)V
    .registers 4

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iput-object p2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->val$activityManager:Landroid/app/ActivityManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/16 v9, 0x200

    const/4 v8, 0x1

    .line 371
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.airview.HOVER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, "mIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 374
    .local v4, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 375
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iget-object v5, v5, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 379
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_47
    sget-object v5, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_93

    .line 380
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "mIntent":Landroid/content/Intent;
    sget-object v5, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .restart local v1    # "mIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 382
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 383
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iget-object v5, v5, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 388
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_93
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->val$activityManager:Landroid/app/ActivityManager;

    if-eqz v5, :cond_c0

    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->val$activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_c0

    .line 389
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->val$activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iget-object v5, v5, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 392
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iput-boolean v8, v5, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mIsAirViewAppOnFg:Z

    .line 395
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_c0
    return-void
.end method
