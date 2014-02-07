.class Lcom/android/server/AppWidgetServiceImpl;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;,
        Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;,
        Lcom/android/server/AppWidgetServiceImpl$Host;,
        Lcom/android/server/AppWidgetServiceImpl$Provider;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MIN_UPDATE_PERIOD:I = 0x1b7740

.field private static final SECRET_SETTINGS_FILENAME:Ljava/lang/String; = "appwidget-secrets.xml"

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final TAG:Ljava/lang/String; = "AppWidgetServiceImpl"


# instance fields
.field final mAlarmManager:Landroid/app/AlarmManager;

.field final mAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mDeletedHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mHasFeature:Z

.field final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field final mInstalledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mLocale:Ljava/util/Locale;

.field mMaxWidgetBitmapMemory:I

.field mNextAppWidgetId:I

.field final mPackagesWithBindWidgetPermission:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/IPackageManager;

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field private final mSaveStateHandler:Landroid/os/Handler;

.field private final mSaveStateRunnable:Ljava/lang/Runnable;

.field mSecretAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field mSecretHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field mSecretProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mStateLoaded:Z

.field final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "saveStateHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    .line 199
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    .line 214
    iput-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSecretProviders:Ljava/util/ArrayList;

    .line 215
    iput-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSecretHosts:Ljava/util/ArrayList;

    .line 216
    iput-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSecretAppWidgetIds:Ljava/util/ArrayList;

    .line 1090
    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/AppWidgetServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    .line 219
    iput-object p1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 220
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    .line 221
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 222
    iput p2, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    .line 223
    iput-object p3, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.app_widgets"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    .line 226
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    .line 228
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppWidgetServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AppWidgetServiceImpl;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    return-void
.end method

.method private bindAppWidgetIdImpl(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 674
    sget-boolean v6, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v6, :cond_25

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindAppWidgetIdImpl appwid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " provider="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 676
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 678
    .local v1, "ident":J
    :try_start_29
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_4d

    .line 679
    :try_start_2c
    iget-boolean v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v6, :cond_35

    .line 680
    monitor-exit v7
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_4a

    .line 756
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    :goto_34
    return-void

    .line 682
    :cond_35
    :try_start_35
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 683
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 684
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 685
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v0, :cond_52

    .line 686
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "bad appWidgetId"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 754
    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_4a
    move-exception v6

    monitor-exit v7
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v6
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 756
    :catchall_4d
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 688
    .restart local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_52
    :try_start_52
    iget-object v6, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v6, :cond_7f

    .line 689
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appWidgetId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " already bound to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 692
    :cond_7f
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v5

    .line 693
    .local v5, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v5, :cond_9e

    .line 694
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not a appwidget provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 696
    :cond_9e
    iget-boolean v6, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v6, :cond_bb

    .line 697
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t bind to a 3rd party provider in safe mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 701
    :cond_bb
    iput-object v5, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 702
    if-nez p3, :cond_c5

    .line 703
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .end local p3    # "options":Landroid/os/Bundle;
    .local v4, "options":Landroid/os/Bundle;
    move-object p3, v4

    .line 705
    .end local v4    # "options":Landroid/os/Bundle;
    .restart local p3    # "options":Landroid/os/Bundle;
    :cond_c5
    iput-object p3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    .line 708
    const-string v6, "appWidgetCategory"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d5

    .line 709
    const-string v6, "appWidgetCategory"

    const/4 v8, 0x1

    invoke-virtual {p3, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    :cond_d5
    iget-object v6, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v6, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 715
    .local v3, "instancesSize":I
    if-ne v3, v9, :cond_e5

    .line 717
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 724
    :cond_e5
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v8, 0x0

    aput p1, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 727
    invoke-static {v5}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 728
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 754
    monitor-exit v7
    :try_end_f9
    .catchall {:try_start_52 .. :try_end_f9} :catchall_4a

    .line 756
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_34
.end method

.method private callerHasBindAppWidgetPermission(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 783
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 785
    .local v0, "callingUid":I
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_10

    move-result v3

    if-nez v3, :cond_12

    .line 793
    :goto_f
    return v2

    .line 788
    :catch_10
    move-exception v1

    .line 789
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_f

    .line 791
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_12
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 792
    :try_start_15
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 793
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3

    goto :goto_f

    .line 794
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v2
.end method

.method private cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 3
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1317
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 1318
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    .line 1320
    .end local p1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_c
    return-object p1
.end method

.method private cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 1328
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1330
    :goto_e
    return-object v0

    :cond_f
    move-object v0, p1

    goto :goto_e
.end method

.method private cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "rv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1310
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 1311
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p1

    .line 1313
    .end local p1    # "rv":Landroid/widget/RemoteViews;
    :cond_c
    return-object p1
.end method

.method private copyAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .registers 3
    .param p1, "targetId"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .param p2, "sourceId"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .prologue
    .line 2903
    return-void
.end method

.method private copyHost(Lcom/android/server/AppWidgetServiceImpl$Host;Lcom/android/server/AppWidgetServiceImpl$Host;)V
    .registers 3
    .param p1, "targetH"    # Lcom/android/server/AppWidgetServiceImpl$Host;
    .param p2, "sourceH"    # Lcom/android/server/AppWidgetServiceImpl$Host;

    .prologue
    .line 2922
    return-void
.end method

.method private copyProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .registers 3
    .param p1, "targetP"    # Lcom/android/server/AppWidgetServiceImpl$Provider;
    .param p2, "sourceP"    # Lcom/android/server/AppWidgetServiceImpl$Provider;

    .prologue
    .line 2912
    return-void
.end method

.method private copySecretAppWidgetToSecretState()Z
    .registers 2

    .prologue
    .line 2838
    const/4 v0, 0x0

    return v0
.end method

.method private copySecretAppWidgetToState()V
    .registers 1

    .prologue
    .line 2895
    return-void
.end method

.method private decrementAppWidgetServiceRefCount(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .registers 6
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .prologue
    .line 990
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 991
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/Intent$FilterComparison;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 992
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    .line 993
    .local v2, "key":Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 994
    .local v0, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget v3, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 997
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 998
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 999
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 1003
    .end local v0    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "key":Landroid/content/Intent$FilterComparison;
    :cond_3b
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .prologue
    .line 943
    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/AppWidgetServiceImpl;Landroid/content/Intent;)V

    .line 963
    .local v0, "conn":Landroid/content/ServiceConnection;
    iget-object v4, p2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v4, v4, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 966
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 968
    .local v1, "token":J
    :try_start_11
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_20

    .line 971
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 973
    return-void

    .line 971
    :catchall_20
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private dumpAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;ILjava/io/PrintWriter;)V
    .registers 5
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .param p2, "index"    # I
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 431
    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] id="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 433
    const-string v0, "    hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 435
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 436
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 437
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_4c

    .line 438
    const-string v0, "    provider="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    :cond_4c
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_5c

    .line 442
    const-string v0, "    host.callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 444
    :cond_5c
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_6a

    .line 445
    const-string v0, "    views="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 447
    :cond_6a
    return-void
.end method

.method private dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .registers 5
    .param p1, "host"    # Lcom/android/server/AppWidgetServiceImpl$Host;
    .param p2, "index"    # I
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 421
    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 423
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 424
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 425
    const-string v0, "    callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 426
    const-string v0, "    instances.size="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 427
    const-string v0, " zombie="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 428
    return-void
.end method

.method private dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .registers 6
    .param p1, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;
    .param p2, "index"    # I
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 399
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 400
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "] provider "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 403
    const-string v1, "    min=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 404
    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 405
    const-string v1, ")   minResize=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 406
    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 407
    const-string v1, ") updatePeriodMillis="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 409
    const-string v1, " resizeMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 411
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 412
    const-string v1, " autoAdvanceViewId="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 414
    const-string v1, " initialLayout=#"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    const-string v1, " uid="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 417
    const-string v1, " zombie="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 418
    return-void
.end method

.method private ensureStateLoadedLocked()V
    .registers 2

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mStateLoaded:Z

    if-nez v0, :cond_8

    .line 520
    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v0, :cond_9

    .line 527
    :cond_8
    :goto_8
    return-void

    .line 523
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->loadAppWidgetListLocked()V

    .line 524
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->loadStateLocked()V

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mStateLoaded:Z

    goto :goto_8
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Host;)[I
    .registers 5
    .param p0, "h"    # Lcom/android/server/AppWidgetServiceImpl$Host;

    .prologue
    .line 1566
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1567
    .local v2, "instancesSize":I
    new-array v0, v2, [I

    .line 1568
    .local v0, "appWidgetIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_1a

    .line 1569
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    .line 1568
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1571
    :cond_1a
    return-object v0
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I
    .registers 5
    .param p0, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;

    .prologue
    .line 1545
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1546
    .local v2, "instancesSize":I
    new-array v0, v2, [I

    .line 1547
    .local v0, "appWidgetIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_1a

    .line 1548
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    .line 1547
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1550
    :cond_1a
    return-object v0
.end method

.method static getSecretSettingsFile(I)Ljava/io/File;
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 2765
    const/4 v0, 0x0

    return-object v0
.end method

.method static getSettingsFile(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .prologue
    .line 2018
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "appwidgets.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "fc"    # Landroid/content/Intent$FilterComparison;

    .prologue
    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 979
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 984
    .restart local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 985
    return-void

    .line 981
    :cond_19
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 982
    .restart local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method private isLocalBinder()Z
    .registers 3

    .prologue
    .line 1306
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method private parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .registers 20
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1588
    const/4 v7, 0x0

    .line 1590
    .local v7, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1591
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v9, 0x0

    .line 1593
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.appwidget.provider"

    invoke-virtual {v1, v14, v15}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 1595
    if-nez v9, :cond_3d

    .line 1596
    const-string v14, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No android.appwidget.provider meta-data for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_36} :catch_1a0
    .catchall {:try_start_6 .. :try_end_36} :catchall_196

    .line 1598
    const/4 v8, 0x0

    .line 1680
    if-eqz v9, :cond_3c

    .line 1681
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1683
    :cond_3c
    :goto_3c
    return-object v8

    .line 1601
    :cond_3d
    :try_start_3d
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1605
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_41
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_4b

    const/4 v14, 0x2

    if-ne v12, v14, :cond_41

    .line 1609
    :cond_4b
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1610
    .local v6, "nodeName":Ljava/lang/String;
    const-string v14, "appwidget-provider"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7e

    .line 1611
    const-string v14, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Meta-data does not start with appwidget-provider tag for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_77} :catch_1a0
    .catchall {:try_start_3d .. :try_end_77} :catchall_196

    .line 1613
    const/4 v8, 0x0

    .line 1680
    if-eqz v9, :cond_3c

    .line 1681
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3c

    .line 1616
    :cond_7e
    :try_start_7e
    new-instance v8, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {v8}, Lcom/android/server/AppWidgetServiceImpl$Provider;-><init>()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_83} :catch_1a0
    .catchall {:try_start_7e .. :try_end_83} :catchall_196

    .line 1617
    .end local v7    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .local v8, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :try_start_83
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v5, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1618
    .local v5, "info":Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p1

    iput-object v0, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1619
    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v14, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    .line 1621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v10

    .line 1624
    .local v10, "res":Landroid/content/res/Resources;
    sget-object v14, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    invoke-virtual {v10, v2, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 1630
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1632
    .local v13, "value":Landroid/util/TypedValue;
    if-eqz v13, :cond_157

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_b7
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 1633
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1634
    if-eqz v13, :cond_15a

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_c2
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 1635
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1637
    if-eqz v13, :cond_15d

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_ce
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 1638
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1640
    if-eqz v13, :cond_161

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_da
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 1641
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 1643
    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 1645
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 1647
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1649
    .local v3, "className":Ljava/lang/String;
    if-eqz v3, :cond_107

    .line 1650
    new-instance v14, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 1652
    :cond_107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 1654
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 1656
    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 1658
    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 1661
    const/16 v14, 0xb

    const/4 v15, 0x1

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 1664
    sget-boolean v14, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v14, :cond_14c

    .line 1665
    iget v14, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v14, :cond_165

    .line 1666
    iget v14, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->labelRes:I

    .line 1672
    :cond_14c
    :goto_14c
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_14f} :catch_16c
    .catchall {:try_start_83 .. :try_end_14f} :catchall_19d

    .line 1680
    if-eqz v9, :cond_154

    .line 1681
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_154
    move-object v7, v8

    .line 1683
    .end local v8    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v7    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    goto/16 :goto_3c

    .line 1632
    .end local v3    # "className":Ljava/lang/String;
    .end local v7    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v8    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_157
    const/4 v14, 0x0

    goto/16 :goto_b7

    .line 1634
    :cond_15a
    const/4 v14, 0x0

    goto/16 :goto_c2

    .line 1637
    :cond_15d
    :try_start_15d
    iget v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    goto/16 :goto_ce

    .line 1640
    :cond_161
    iget v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    goto/16 :goto_da

    .line 1668
    .restart local v3    # "className":Ljava/lang/String;
    :cond_165
    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->labelRes:I
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_16b} :catch_16c
    .catchall {:try_start_15d .. :try_end_16b} :catchall_19d

    goto :goto_14c

    .line 1673
    .end local v3    # "className":Ljava/lang/String;
    .end local v5    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "value":Landroid/util/TypedValue;
    :catch_16c
    move-exception v4

    move-object v7, v8

    .line 1677
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v8    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v12    # "type":I
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :goto_16e
    :try_start_16e
    const-string v14, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "XML parsing failed for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18e
    .catchall {:try_start_16e .. :try_end_18e} :catchall_196

    .line 1678
    const/4 v8, 0x0

    .line 1680
    if-eqz v9, :cond_3c

    .line 1681
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_3c

    .line 1680
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_196
    move-exception v14

    :goto_197
    if-eqz v9, :cond_19c

    .line 1681
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_19c
    throw v14

    .line 1680
    .end local v7    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v8    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v12    # "type":I
    :catchall_19d
    move-exception v14

    move-object v7, v8

    .end local v8    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v7    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    goto :goto_197

    .line 1673
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_1a0
    move-exception v4

    goto :goto_16e
.end method

.method private parseSecretProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2438
    const/4 v0, 0x0

    return-object v0
.end method

.method private saveStateAsync()V
    .registers 3

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1088
    return-void
.end method

.method private unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .registers 7
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .prologue
    .line 921
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    .line 923
    .local v0, "appWidgetId":I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 925
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 926
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 927
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_c

    .line 928
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 930
    .local v1, "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 931
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 932
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 938
    .end local v1    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_36
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 939
    return-void
.end method


# virtual methods
.method addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 7
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    .line 1463
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    .line 1475
    :cond_c
    :goto_c
    return v1

    .line 1466
    :cond_d
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1469
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/android/server/AppWidgetServiceImpl;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v0

    .line 1471
    .local v0, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-eqz v0, :cond_c

    .line 1472
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    const/4 v1, 0x1

    goto :goto_c
.end method

.method addProvidersForPackageLocked(Ljava/lang/String;)Z
    .registers 14
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2051
    const/4 v5, 0x0

    .line 2052
    .local v5, "providersAdded":Z
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2053
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2056
    :try_start_c
    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    iget v11, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v8, v4, v9, v10, v11}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1f} :catch_39

    move-result-object v2

    .line 2063
    .local v2, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_3b

    .line 2064
    .local v0, "N":I
    :goto_22
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-ge v3, v0, :cond_4d

    .line 2065
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 2066
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2067
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x40000

    and-int/2addr v8, v9

    if-eqz v8, :cond_40

    .line 2064
    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 2059
    .end local v0    # "N":I
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "i":I
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_39
    move-exception v6

    .line 2076
    :goto_3a
    return v0

    .line 2063
    .restart local v2    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_22

    .line 2070
    .restart local v0    # "N":I
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "i":I
    .restart local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_40
    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 2071
    invoke-virtual {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 2072
    const/4 v5, 0x1

    goto :goto_36

    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4d
    move v0, v5

    .line 2076
    goto :goto_3a
.end method

.method addSecretProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 3
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2336
    const/4 v0, 0x0

    return v0
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->enforceSystemOrCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 531
    .local v1, "callingUid":I
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 532
    :try_start_7
    iget-boolean v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v4, :cond_e

    .line 533
    const/4 v0, -0x1

    monitor-exit v5

    .line 559
    :goto_d
    return v0

    .line 535
    :cond_e
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 536
    iget v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    .line 547
    .local v0, "appWidgetId":I
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v2

    .line 549
    .local v2, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    new-instance v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {v3}, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;-><init>()V

    .line 550
    .local v3, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    iput v0, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    .line 551
    iput-object v2, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 553
    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 557
    sget-boolean v4, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v4, :cond_5f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Allocating AppWidgetId for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " host="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 559
    :cond_5f
    monitor-exit v5

    goto :goto_d

    .line 560
    .end local v0    # "appWidgetId":I
    .end local v2    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_61
    move-exception v4

    monitor-exit v5
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_61

    throw v4
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_APPWIDGET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAppWidgetId appWidgetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetIdImpl(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 764
    return-void
.end method

.method public bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 768
    iget-boolean v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v2, :cond_6

    .line 779
    :goto_5
    return v1

    .line 772
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_APPWIDGET"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_e} :catch_13

    .line 778
    :cond_e
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetIdImpl(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 779
    const/4 v1, 0x1

    goto :goto_5

    .line 773
    :catch_13
    move-exception v0

    .line 774
    .local v0, "se":Ljava/lang/SecurityException;
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->callerHasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 21
    .param p1, "appWidgetId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "connection"    # Landroid/os/IBinder;

    .prologue
    .line 832
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v14

    .line 833
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v13, :cond_d

    .line 834
    monitor-exit v14

    .line 888
    :goto_c
    return-void

    .line 836
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 837
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v7

    .line 838
    .local v7, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v7, :cond_21

    .line 839
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v15, "bad appWidgetId"

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 887
    .end local v7    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_1e
    move-exception v13

    monitor-exit v14
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v13

    .line 841
    .restart local v7    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_21
    :try_start_21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    move-result-object v2

    .line 843
    .local v2, "componentName":Landroid/content/ComponentName;
    :try_start_25
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    const/16 v15, 0x1000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v13, v2, v15, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    .line 845
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    const-string v13, "android.permission.BIND_REMOTEVIEWS"

    iget-object v15, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_74

    .line 846
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_5a} :catch_5a
    .catchall {:try_start_25 .. :try_end_5a} :catchall_1e

    .line 849
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :catch_5a
    move-exception v5

    .line 850
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_5b
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown component "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 856
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v9    # "si":Landroid/content/pm/ServiceInfo;
    :cond_74
    const/4 v3, 0x0

    .line 857
    .local v3, "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    new-instance v6, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 858
    .local v6, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 859
    .local v8, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    .line 860
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 861
    .restart local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v3}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 862
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a9
    move-object v4, v3

    .line 866
    .end local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .local v4, "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    iget-object v13, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v13, v13, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 867
    .local v12, "userId":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    if-eq v12, v13, :cond_e0

    .line 868
    const-string v13, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AppWidgetServiceImpl of user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " binding to provider on user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_e0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_e3
    .catchall {:try_start_5b .. :try_end_e3} :catchall_1e

    move-result-wide v10

    .line 875
    .local v10, "token":J
    :try_start_e4
    new-instance v3, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    move-object/from16 v0, p3

    invoke-direct {v3, v8, v0}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;-><init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    :try_end_eb
    .catchall {:try_start_e4 .. :try_end_eb} :catchall_112

    .line 876
    .end local v4    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .restart local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    :try_start_eb
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v3, v15, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 878
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_105
    .catchall {:try_start_eb .. :try_end_105} :catchall_118

    .line 880
    :try_start_105
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/server/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V

    .line 887
    monitor-exit v14

    goto/16 :goto_c

    .line 880
    .end local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .restart local v4    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    :catchall_112
    move-exception v13

    move-object v3, v4

    .end local v4    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .restart local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    :goto_114
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_118
    .catchall {:try_start_105 .. :try_end_118} :catchall_1e

    :catchall_118
    move-exception v13

    goto :goto_114
.end method

.method canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z
    .registers 6
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .param p2, "callingUid"    # I

    .prologue
    const/4 v0, 0x1

    .line 1373
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-virtual {v1, p2}, Lcom/android/server/AppWidgetServiceImpl$Host;->uidMatches(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1386
    :cond_9
    :goto_9
    return v0

    .line 1377
    :cond_a
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    if-eq v1, p2, :cond_9

    .line 1381
    :cond_14
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1386
    const/4 v0, 0x0

    goto :goto_9
.end method

.method cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .registers 6
    .param p1, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;

    .prologue
    .line 660
    sget-boolean v2, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelBroadcasts for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 661
    :cond_1a
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v2, :cond_34

    .line 662
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 665
    .local v0, "token":J
    :try_start_29
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_35

    .line 667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 669
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 671
    .end local v0    # "token":J
    :cond_34
    return-void

    .line 667
    .restart local v0    # "token":J
    :catchall_35
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method computeMaximumWidgetBitmapMemory()V
    .registers 6

    .prologue
    .line 238
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 239
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 240
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 241
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 244
    iget v3, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x6

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 245
    return-void
.end method

.method public deleteAllHosts()V
    .registers 8

    .prologue
    .line 593
    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6

    .line 594
    :try_start_3
    iget-boolean v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v5, :cond_9

    .line 595
    monitor-exit v6

    .line 612
    :goto_8
    return-void

    .line 597
    :cond_9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 599
    .local v1, "callingUid":I
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 600
    .local v0, "N":I
    const/4 v2, 0x0

    .line 601
    .local v2, "changed":Z
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_19
    if-ltz v4, :cond_30

    .line 602
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 603
    .local v3, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    invoke-virtual {v3, v1}, Lcom/android/server/AppWidgetServiceImpl$Host;->uidMatches(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 604
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 605
    const/4 v2, 0x1

    .line 601
    :cond_2d
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 608
    .end local v3    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_30
    if-eqz v2, :cond_35

    .line 609
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 611
    :cond_35
    monitor-exit v6

    goto :goto_8

    .end local v0    # "N":I
    .end local v1    # "callingUid":I
    .end local v2    # "changed":Z
    .end local v4    # "i":I
    :catchall_37
    move-exception v5

    monitor-exit v6
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v5
.end method

.method public deleteAppWidgetId(I)V
    .registers 5
    .param p1, "appWidgetId"    # I

    .prologue
    .line 564
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 565
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v1, :cond_9

    .line 566
    monitor-exit v2

    .line 575
    :goto_8
    return-void

    .line 568
    :cond_9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 569
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 570
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_18

    .line 571
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 572
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 574
    :cond_18
    monitor-exit v2

    goto :goto_8

    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .registers 8
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 631
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 632
    .local v0, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 633
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 635
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 637
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 638
    .local v2, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-eqz v2, :cond_65

    .line 639
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 640
    iget-boolean v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v3, :cond_65

    .line 642
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 644
    const-string v3, "appWidgetId"

    iget v4, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 646
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_65

    .line 648
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 651
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 653
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 657
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_65
    return-void
.end method

.method public deleteHost(I)V
    .registers 6
    .param p1, "hostId"    # I

    .prologue
    .line 578
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 579
    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v2, :cond_9

    .line 580
    monitor-exit v3

    .line 590
    :goto_8
    return-void

    .line 582
    :cond_9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 584
    .local v0, "callingUid":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v1

    .line 585
    .local v1, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    if-eqz v1, :cond_1c

    .line 586
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 587
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 589
    :cond_1c
    monitor-exit v3

    goto :goto_8

    .end local v0    # "callingUid":I
    .end local v1    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V
    .registers 6
    .param p1, "host"    # Lcom/android/server/AppWidgetServiceImpl$Host;

    .prologue
    .line 615
    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 616
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 617
    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 618
    .local v2, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 616
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 620
    .end local v2    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_18
    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 621
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 622
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 625
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 450
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_33

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    :goto_32
    return-void

    .line 458
    :cond_33
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 459
    :try_start_36
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 460
    .local v0, "N":I
    const-string v2, "Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_42
    if-ge v1, v0, :cond_52

    .line 462
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 465
    :cond_52
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 466
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    const-string v2, "AppWidgetIds:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    const/4 v1, 0x0

    :goto_63
    if-ge v1, v0, :cond_73

    .line 469
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;ILjava/io/PrintWriter;)V

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 472
    :cond_73
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 473
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    const-string v2, "Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    const/4 v1, 0x0

    :goto_84
    if-ge v1, v0, :cond_94

    .line 476
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 479
    :cond_94
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 480
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    const-string v2, "Deleted Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    const/4 v1, 0x0

    :goto_a5
    if-ge v1, v0, :cond_b5

    .line 483
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_a5

    .line 486
    :cond_b5
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 487
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    const-string v2, "Deleted Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    const/4 v1, 0x0

    :goto_c6
    if-ge v1, v0, :cond_d6

    .line 490
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_c6

    .line 515
    :cond_d6
    monitor-exit v3

    goto/16 :goto_32

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_d9
    move-exception v2

    monitor-exit v3
    :try_end_db
    .catchall {:try_start_36 .. :try_end_db} :catchall_d9

    throw v2
.end method

.method enforceCallingUid(Ljava/lang/String;)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1708
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1711
    .local v0, "callingUid":I
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_7} :catch_27

    move-result v2

    .line 1716
    .local v2, "packageUid":I
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_41

    .line 1717
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1712
    .end local v2    # "packageUid":I
    :catch_27
    move-exception v1

    .line 1713
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1720
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageUid":I
    :cond_41
    return v0
.end method

.method enforceSystemOrCallingUid(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1700
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1701
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_e

    if-nez v0, :cond_f

    .line 1704
    .end local v0    # "callingUid":I
    :cond_e
    :goto_e
    return v0

    .restart local v0    # "callingUid":I
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->enforceCallingUid(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2225
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2227
    .local v6, "returnListWidget":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    if-eq v8, v9, :cond_20

    .line 2228
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Can only be called by system user"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_17

    .line 2257
    :catch_17
    move-exception v0

    .line 2258
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "AppWidgetServiceImpl"

    const-string v9, "error in getAllWidgets"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2260
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    return-object v6

    .line 2230
    :cond_20
    :try_start_20
    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 2231
    .local v1, "hs":Lcom/android/server/AppWidgetServiceImpl$Host;
    if-eqz p1, :cond_3e

    if-eqz p1, :cond_26

    iget-object v8, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 2232
    :cond_3e
    iget-object v8, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_44
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 2233
    .local v7, "widgetId":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_70

    .line 2234
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2235
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2236
    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v8, :cond_44

    .line 2237
    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 2240
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_70
    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2241
    .local v4, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_91

    .line 2242
    iget v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v8, :cond_44

    .line 2244
    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 2246
    :cond_91
    if-nez v4, :cond_44

    .line 2247
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2248
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2249
    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v8, :cond_44

    .line 2250
    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_ac} :catch_17

    goto :goto_44
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 6
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1554
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1555
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1556
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v0

    .line 1557
    .local v0, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-eqz v0, :cond_1a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v3, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    if-ne v1, v3, :cond_1a

    .line 1558
    invoke-static {v0}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v1

    monitor-exit v2

    .line 1560
    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v2

    goto :goto_19

    .line 1562
    .end local v0    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getAppWidgetIdsForHost(I)[I
    .registers 6
    .param p1, "hostId"    # I

    .prologue
    .line 1575
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1576
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1578
    .local v0, "callingUid":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v1

    .line 1579
    .local v1, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    if-eqz v1, :cond_16

    .line 1580
    invoke-static {v1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Host;)[I

    move-result-object v2

    monitor-exit v3

    .line 1582
    :goto_15
    return-object v2

    :cond_16
    const/4 v2, 0x0

    new-array v2, v2, [I

    monitor-exit v3

    goto :goto_15

    .line 1584
    .end local v0    # "callingUid":I
    .end local v1    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 6
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1006
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1007
    :try_start_4
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_a

    .line 1008
    monitor-exit v2

    .line 1015
    :goto_9
    return-object v1

    .line 1010
    :cond_a
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1011
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 1012
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_2a

    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v3, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v3, :cond_2a

    .line 1013
    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    monitor-exit v2

    goto :goto_9

    .line 1016
    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v1

    .line 1015
    .restart local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_2a
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    goto :goto_9
.end method

.method public getAppWidgetOptions(I)Landroid/os/Bundle;
    .registers 5
    .param p1, "appWidgetId"    # I

    .prologue
    .line 1128
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1129
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v1, :cond_b

    .line 1130
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v2

    .line 1137
    :goto_a
    return-object v1

    .line 1132
    :cond_b
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1133
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 1134
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    if-eqz v1, :cond_23

    .line 1135
    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v2

    goto :goto_a

    .line 1139
    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1

    .line 1137
    .restart local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_23
    :try_start_23
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    goto :goto_a
.end method

.method public getAppWidgetViews(I)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1020
    sget-boolean v2, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetViews id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1021
    :cond_1b
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1022
    :try_start_1e
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_24

    .line 1023
    monitor-exit v2

    .line 1031
    :goto_23
    return-object v1

    .line 1025
    :cond_24
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1026
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 1027
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_38

    .line 1028
    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    monitor-exit v2

    goto :goto_23

    .line 1032
    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    throw v1

    .line 1030
    .restart local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_38
    :try_start_38
    sget-boolean v3, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v3, :cond_41

    const-string v3, "   couldn\'t find appwidgetid"

    invoke-direct {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1031
    :cond_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_35

    goto :goto_23
.end method

.method public getInstalledProviders(I)Ljava/util/List;
    .registers 8
    .param p1, "categoryFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1037
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v4, :cond_f

    .line 1038
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    monitor-exit v5

    .line 1049
    :goto_e
    return-object v3

    .line 1040
    :cond_f
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1041
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1042
    .local v0, "N":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1043
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_3f

    .line 1044
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1045
    .local v2, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-boolean v4, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v4, :cond_3c

    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_3c

    .line 1046
    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1049
    .end local v2    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_3f
    monitor-exit v5

    goto :goto_e

    .line 1050
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v4
.end method

.method public getSecretAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 2287
    const/4 v0, 0x0

    return-object v0
.end method

.method getUidForPackage(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1687
    const/4 v0, 0x0

    .line 1689
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_1b

    move-result-object v0

    .line 1693
    :goto_a
    if-eqz v0, :cond_10

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_16

    .line 1694
    :cond_10
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 1696
    :cond_16
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1

    .line 1690
    :catch_1b
    move-exception v1

    goto :goto_a
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v0, :cond_6

    .line 799
    const/4 v0, 0x0

    .line 807
    :goto_5
    return v0

    .line 801
    :cond_6
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasBindAppWidgetPermission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 806
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 807
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_5

    .line 808
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method loadAppWidgetListLocked()V
    .registers 10

    .prologue
    .line 1446
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1448
    .local v3, "intent":Landroid/content/Intent;
    :try_start_7
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    iget v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v5, v3, v6, v7, v8}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 1452
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_2d

    const/4 v0, 0x0

    .line 1453
    .local v0, "N":I
    :goto_1e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    if-ge v2, v0, :cond_33

    .line 1454
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1455
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 1453
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1452
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_30} :catch_32

    move-result v0

    goto :goto_1e

    .line 1457
    .end local v1    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_32
    move-exception v5

    .line 1460
    :cond_33
    return-void
.end method

.method loadSecretAppWidgetListLocked()V
    .registers 1

    .prologue
    .line 2307
    return-void
.end method

.method loadSecretStateLocked()V
    .registers 1

    .prologue
    .line 2499
    return-void
.end method

.method loadStateLocked()V
    .registers 7

    .prologue
    .line 1741
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 1743
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_4
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 1744
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_2b

    .line 1746
    if-eqz v2, :cond_10

    .line 1748
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_2b

    .line 1756
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_10
    :goto_10
    return-void

    .line 1749
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_11
    move-exception v0

    .line 1750
    .local v0, "e":Ljava/io/IOException;
    :try_start_12
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_2a} :catch_2b

    goto :goto_10

    .line 1753
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_2b
    move-exception v0

    .line 1754
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .registers 7
    .param p1, "appWidgetId"    # I

    .prologue
    .line 1390
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1391
    .local v1, "callingUid":I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1392
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_23

    .line 1393
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1394
    .local v3, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    iget v4, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    if-ne v4, p1, :cond_20

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1398
    .end local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :goto_1f
    return-object v3

    .line 1392
    .restart local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1398
    .end local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_23
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "hostId"    # I

    .prologue
    .line 1413
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1414
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1f

    .line 1415
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1416
    .local v1, "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    invoke-virtual {v1, p1}, Lcom/android/server/AppWidgetServiceImpl$Host;->uidMatches(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget v3, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    if-ne v3, p2, :cond_1c

    .line 1420
    .end local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :goto_1b
    return-object v1

    .line 1414
    .restart local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1420
    .end local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hostId"    # I

    .prologue
    .line 1424
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1425
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_21

    .line 1426
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1427
    .local v1, "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    iget v4, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    if-ne v4, p3, :cond_1e

    iget-object v4, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1436
    .end local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :goto_1d
    return-object v1

    .line 1425
    .restart local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1431
    .end local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_21
    new-instance v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {v2}, Lcom/android/server/AppWidgetServiceImpl$Host;-><init>()V

    .line 1432
    .local v2, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    iput-object p2, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    .line 1433
    iput p1, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    .line 1434
    iput p3, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    .line 1435
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 1436
    goto :goto_1d
.end method

.method lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .registers 6
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1402
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1403
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 1404
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1405
    .local v2, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1409
    .end local v2    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :goto_1b
    return-object v2

    .line 1403
    .restart local v2    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1409
    .end local v2    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method lookupSecretAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .registers 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 2452
    const/4 v0, 0x0

    return-object v0
.end method

.method lookupSecretHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;
    .registers 4
    .param p1, "uid"    # I
    .param p2, "hostId"    # I

    .prologue
    .line 2478
    const/4 v0, 0x0

    return-object v0
.end method

.method lookupSecretProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .registers 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 2465
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .registers 8
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I

    .prologue
    .line 1169
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_5

    .line 1187
    :cond_4
    :goto_4
    return-void

    .line 1172
    :cond_5
    if-eqz p1, :cond_4

    .line 1175
    array-length v3, p1

    if-eqz v3, :cond_4

    .line 1178
    array-length v0, p1

    .line 1180
    .local v0, "N":I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1181
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_20

    .line 1183
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v2

    .line 1184
    .local v2, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetServiceImpl;->notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)V

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1186
    .end local v2    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_20
    monitor-exit v4

    goto :goto_4

    .end local v1    # "i":I
    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw v3
.end method

.method notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)V
    .registers 15
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .param p2, "viewId"    # I

    .prologue
    .line 1248
    if-eqz p1, :cond_83

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v9, :cond_83

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v9, v9, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v9, :cond_83

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-boolean v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v9, :cond_83

    .line 1250
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v9, :cond_23

    .line 1253
    :try_start_18
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v10, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    iget v11, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v9, v10, p2, v11}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(III)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_77

    .line 1263
    :cond_23
    :goto_23
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v9, :cond_83

    .line 1264
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1265
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_33
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent$FilterComparison;

    .line 1266
    .local v4, "key":Landroid/content/Intent$FilterComparison;
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    iget v10, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 1267
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1269
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/AppWidgetServiceImpl;)V

    .line 1290
    .local v0, "conn":Landroid/content/ServiceConnection;
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v9, v9, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1292
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1294
    .local v6, "token":J
    :try_start_68
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v3, v0, v10, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_7e

    .line 1297
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_33

    .line 1254
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "key":Landroid/content/Intent$FilterComparison;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v6    # "token":J
    .end local v8    # "userId":I
    :catch_77
    move-exception v1

    .line 1257
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_23

    .line 1297
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "conn":Landroid/content/ServiceConnection;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "key":Landroid/content/Intent$FilterComparison;
    .restart local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .restart local v6    # "token":J
    .restart local v8    # "userId":I
    :catchall_7e
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1303
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "key":Landroid/content/Intent$FilterComparison;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v6    # "token":J
    .end local v8    # "userId":I
    :cond_83
    return-void
.end method

.method notifyHostsForProvidersChangedLocked()V
    .registers 7

    .prologue
    .line 2208
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2209
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_25

    .line 2210
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 2212
    .local v2, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :try_start_12
    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v4, :cond_1d

    .line 2213
    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v4, v5}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_20

    .line 2209
    :cond_1d
    :goto_1d
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 2215
    :catch_20
    move-exception v1

    .line 2219
    .local v1, "ex":Landroid/os/RemoteException;
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_1d

    .line 2222
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v2    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_25
    return-void
.end method

.method onBroadcastReceived(Landroid/content/Intent;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    .line 291
    sget-boolean v11, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v11, :cond_1b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onBroadcast "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 292
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 294
    .local v1, "added":Z
    const/4 v3, 0x0

    .line 295
    .local v3, "changed":Z
    const/4 v9, 0x0

    .line 296
    .local v9, "providersModified":Z
    const/4 v7, 0x0

    .line 333
    .local v7, "pkgList":[Ljava/lang/String;
    const-string v11, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 334
    const-string v11, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 335
    const/4 v1, 0x1

    .line 352
    :goto_32
    if-eqz v7, :cond_37

    array-length v11, v7

    if-nez v11, :cond_66

    .line 396
    :cond_37
    :goto_37
    return-void

    .line 336
    :cond_38
    const-string v11, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_48

    .line 337
    const-string v11, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 338
    const/4 v1, 0x0

    goto :goto_32

    .line 340
    :cond_48
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 341
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_37

    .line 344
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 345
    .local v8, "pkgName":Ljava/lang/String;
    if-eqz v8, :cond_37

    .line 348
    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "pkgList":[Ljava/lang/String;
    aput-object v8, v7, v13

    .line 349
    .restart local v7    # "pkgList":[Ljava/lang/String;
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 350
    const-string v11, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_32

    .line 355
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_66
    if-nez v1, :cond_6a

    if-eqz v3, :cond_b7

    .line 356
    :cond_6a
    iget-object v12, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v12

    .line 357
    :try_start_6d
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 358
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 359
    .local v4, "extras":Landroid/os/Bundle;
    if-nez v3, :cond_81

    if-eqz v4, :cond_91

    const-string v11, "android.intent.extra.REPLACING"

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_91

    .line 361
    :cond_81
    move-object v2, v7

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_84
    if-ge v5, v6, :cond_a0

    aget-object v8, v2, v5

    .line 363
    .restart local v8    # "pkgName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {p0, v8, v11}, Lcom/android/server/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v11

    or-int/2addr v9, v11

    .line 361
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    .line 367
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_91
    move-object v2, v7

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_94
    if-ge v5, v6, :cond_a0

    aget-object v8, v2, v5

    .line 368
    .restart local v8    # "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/server/AppWidgetServiceImpl;->addProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v9, v11

    .line 367
    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    .line 372
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_a0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 373
    monitor-exit v12
    :try_end_a4
    .catchall {:try_start_6d .. :try_end_a4} :catchall_b4

    .line 389
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_a4
    :goto_a4
    if-eqz v9, :cond_37

    .line 391
    iget-object v12, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v12

    .line 392
    :try_start_a9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 393
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->notifyHostsForProvidersChangedLocked()V

    .line 394
    monitor-exit v12

    goto :goto_37

    :catchall_b1
    move-exception v11

    monitor-exit v12
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_b1

    throw v11

    .line 373
    .end local v4    # "extras":Landroid/os/Bundle;
    :catchall_b4
    move-exception v11

    :try_start_b5
    monitor-exit v12
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v11

    .line 375
    :cond_b7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 376
    .restart local v4    # "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_c5

    const-string v11, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_a4

    .line 379
    :cond_c5
    iget-object v12, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v12

    .line 380
    :try_start_c8
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 381
    move-object v2, v7

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_ce
    if-ge v5, v6, :cond_dd

    aget-object v8, v2, v5

    .line 382
    .restart local v8    # "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/server/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v9, v11

    .line 383
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 381
    add-int/lit8 v5, v5, 0x1

    goto :goto_ce

    .line 385
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_dd
    monitor-exit v12

    goto :goto_a4

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_df
    move-exception v11

    monitor-exit v12
    :try_end_e1
    .catchall {:try_start_c8 .. :try_end_e1} :catchall_df

    throw v11
.end method

.method onConfigurationChanged()V
    .registers 10

    .prologue
    .line 264
    sget-boolean v7, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v7, :cond_9

    const-string v7, "Got onConfigurationChanged()"

    invoke-direct {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 265
    :cond_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 266
    .local v6, "revised":Ljava/util/Locale;
    if-eqz v6, :cond_17

    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_51

    .line 267
    :cond_17
    iput-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 269
    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    .line 270
    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 274
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    .local v3, "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 277
    .local v5, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 278
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_31
    if-ltz v2, :cond_4d

    .line 279
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 280
    .local v4, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v7, v4, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 281
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    .line 282
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lcom/android/server/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z

    .line 278
    :cond_4a
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    .line 285
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v4    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_4d
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 286
    monitor-exit v8

    .line 288
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v5    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_51
    return-void

    .line 286
    :catchall_52
    move-exception v7

    monitor-exit v8
    :try_end_54
    .catchall {:try_start_1c .. :try_end_54} :catchall_52

    throw v7
.end method

.method onUserRemoved()V
    .registers 2

    .prologue
    .line 2047
    iget v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v0}, Lcom/android/server/AppWidgetServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2048
    return-void
.end method

.method onUserStopping()V
    .registers 5

    .prologue
    .line 2039
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2040
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 2041
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 2042
    .local v2, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 2040
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2044
    .end local v2    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_18
    return-void
.end method

.method public partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .registers 10
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1143
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_5

    .line 1166
    :cond_4
    :goto_4
    return-void

    .line 1146
    :cond_5
    if-eqz p1, :cond_4

    .line 1149
    array-length v3, p1

    if-eqz v3, :cond_4

    .line 1152
    array-length v0, p1

    .line 1154
    .local v0, "N":I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1155
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_4b

    .line 1157
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v2

    .line 1158
    .local v2, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v2, :cond_3f

    .line 1159
    const-string v3, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widget id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1160
    :cond_3f
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_3c

    .line 1162
    const/4 v3, 0x1

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    goto :goto_3c

    .line 1165
    .end local v1    # "i":I
    .end local v2    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_48

    throw v3

    .restart local v1    # "i":I
    :cond_4b
    :try_start_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_48

    goto :goto_4
.end method

.method pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V
    .registers 3
    .param p1, "host"    # Lcom/android/server/AppWidgetServiceImpl$Host;

    .prologue
    .line 1440
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_11

    .line 1441
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1443
    :cond_11
    return-void
.end method

.method readSecretStateFromFileLocked(Ljava/io/FileInputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 2759
    return-void
.end method

.method readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .registers 36
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 1853
    const/16 v28, 0x0

    .line 1855
    .local v28, "success":Z
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v23

    .line 1856
    .local v23, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1859
    const/16 v26, 0x0

    .line 1860
    .local v26, "providerIndex":I
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1862
    .local v13, "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    :cond_18
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v30

    .line 1863
    .local v30, "type":I
    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_d4

    .line 1864
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 1865
    .local v29, "tag":Ljava/lang/String;
    const-string v31, "p"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_127

    .line 1868
    const/16 v31, 0x0

    const-string v32, "pkg"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1869
    .local v24, "pkg":Ljava/lang/String;
    const/16 v31, 0x0

    const-string v32, "cl"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1871
    .local v6, "cl":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;
    :try_end_53
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_53} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_53} :catch_1b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_53} :catch_1fa
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_53} :catch_3a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_53} :catch_3c2

    move-result-object v21

    .line 1873
    .local v21, "packageManager":Landroid/content/pm/IPackageManager;
    :try_start_54
    new-instance v31, Landroid/content/ComponentName;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v33, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_70} :catch_106
    .catch Ljava/lang/NullPointerException; {:try_start_54 .. :try_end_70} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_70} :catch_1b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_70} :catch_1fa
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_70} :catch_3a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_54 .. :try_end_70} :catch_3c2

    .line 1880
    :goto_70
    :try_start_70
    new-instance v31, Landroid/content/ComponentName;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v19

    .line 1881
    .local v19, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v19, :cond_c5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c5

    .line 1883
    new-instance v19, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .end local v19    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    invoke-direct/range {v19 .. v19}, Lcom/android/server/AppWidgetServiceImpl$Provider;-><init>()V

    .line 1884
    .restart local v19    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    new-instance v31, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v31 .. v31}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1885
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v31, v0

    new-instance v32, Landroid/content/ComponentName;

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1886
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1889
    :cond_c5
    if-eqz v19, :cond_d2

    .line 1891
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d2
    .catch Ljava/lang/NullPointerException; {:try_start_70 .. :try_end_d2} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_d2} :catch_1b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_d2} :catch_1fa
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_d2} :catch_3a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_70 .. :try_end_d2} :catch_3c2

    .line 1893
    :cond_d2
    add-int/lit8 v26, v26, 0x1

    .line 1984
    .end local v6    # "cl":Ljava/lang/String;
    .end local v19    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v21    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v24    # "pkg":Ljava/lang/String;
    .end local v29    # "tag":Ljava/lang/String;
    :cond_d4
    :goto_d4
    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_18

    .line 1985
    const/16 v28, 0x1

    .line 1998
    .end local v13    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "providerIndex":I
    .end local v30    # "type":I
    :goto_de
    if-eqz v28, :cond_3df

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v11, v31, -0x1

    .local v11, "i":I
    :goto_ec
    if-ltz v11, :cond_41f

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 2001
    add-int/lit8 v11, v11, -0x1

    goto :goto_ec

    .line 1874
    .end local v11    # "i":I
    .restart local v6    # "cl":Ljava/lang/String;
    .restart local v13    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v21    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "pkg":Ljava/lang/String;
    .restart local v26    # "providerIndex":I
    .restart local v29    # "tag":Ljava/lang/String;
    .restart local v30    # "type":I
    :catch_106
    move-exception v7

    .line 1875
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v24, v32, v33

    invoke-virtual/range {v31 .. v32}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1877
    .local v25, "pkgs":[Ljava/lang/String;
    const/16 v31, 0x0

    aget-object v24, v25, v31

    goto/16 :goto_70

    .line 1894
    .end local v6    # "cl":Ljava/lang/String;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v21    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v24    # "pkg":Ljava/lang/String;
    .end local v25    # "pkgs":[Ljava/lang/String;
    :cond_127
    const-string v31, "h"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1cf

    .line 1895
    new-instance v10, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {v10}, Lcom/android/server/AppWidgetServiceImpl$Host;-><init>()V

    .line 1899
    .local v10, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    const/16 v31, 0x0

    const-string v32, "pkg"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v10, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;
    :try_end_14a
    .catch Ljava/lang/NullPointerException; {:try_start_107 .. :try_end_14a} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_107 .. :try_end_14a} :catch_1b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_107 .. :try_end_14a} :catch_1fa
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_14a} :catch_3a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_107 .. :try_end_14a} :catch_3c2

    .line 1901
    :try_start_14a
    iget-object v0, v10, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    iput v0, v10, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I
    :try_end_15a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14a .. :try_end_15a} :catch_1aa
    .catch Ljava/lang/NullPointerException; {:try_start_14a .. :try_end_15a} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_14a .. :try_end_15a} :catch_1b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14a .. :try_end_15a} :catch_1fa
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_15a} :catch_3a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14a .. :try_end_15a} :catch_3c2

    .line 1905
    :goto_15a
    :try_start_15a
    iget-boolean v0, v10, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    move/from16 v31, v0

    if-eqz v31, :cond_168

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d4

    .line 1908
    :cond_168
    const/16 v31, 0x0

    const-string v32, "id"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x10

    invoke-static/range {v31 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v31

    move/from16 v0, v31

    iput v0, v10, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18b
    .catch Ljava/lang/NullPointerException; {:try_start_15a .. :try_end_18b} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_15a .. :try_end_18b} :catch_1b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15a .. :try_end_18b} :catch_1fa
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_18b} :catch_3a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15a .. :try_end_18b} :catch_3c2

    goto/16 :goto_d4

    .line 1986
    .end local v10    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v13    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "providerIndex":I
    .end local v29    # "tag":Ljava/lang/String;
    .end local v30    # "type":I
    :catch_18d
    move-exception v7

    .line 1987
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v31, "AppWidgetServiceImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "failed parsing "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_de

    .line 1902
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v10    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    .restart local v13    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "providerIndex":I
    .restart local v29    # "tag":Ljava/lang/String;
    .restart local v30    # "type":I
    :catch_1aa
    move-exception v8

    .line 1903
    .local v8, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v31, 0x1

    :try_start_1ad
    move/from16 v0, v31

    iput-boolean v0, v10, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z
    :try_end_1b1
    .catch Ljava/lang/NullPointerException; {:try_start_1ad .. :try_end_1b1} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_1ad .. :try_end_1b1} :catch_1b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ad .. :try_end_1b1} :catch_1fa
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b1} :catch_3a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1ad .. :try_end_1b1} :catch_3c2

    goto :goto_15a

    .line 1988
    .end local v8    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v13    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "providerIndex":I
    .end local v29    # "tag":Ljava/lang/String;
    .end local v30    # "type":I
    :catch_1b2
    move-exception v7

    .line 1989
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v31, "AppWidgetServiceImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "failed parsing "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_de

    .line 1912
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "providerIndex":I
    .restart local v29    # "tag":Ljava/lang/String;
    .restart local v30    # "type":I
    :cond_1cf
    :try_start_1cf
    const-string v31, "b"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_217

    .line 1913
    const/16 v31, 0x0

    const-string v32, "packageName"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1914
    .local v22, "packageName":Ljava/lang/String;
    if-eqz v22, :cond_d4

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1f8
    .catch Ljava/lang/NullPointerException; {:try_start_1cf .. :try_end_1f8} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_1cf .. :try_end_1f8} :catch_1b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1cf .. :try_end_1f8} :catch_1fa
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1f8} :catch_3a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1cf .. :try_end_1f8} :catch_3c2

    goto/16 :goto_d4

    .line 1990
    .end local v13    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "providerIndex":I
    .end local v29    # "tag":Ljava/lang/String;
    .end local v30    # "type":I
    :catch_1fa
    move-exception v7

    .line 1991
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v31, "AppWidgetServiceImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "failed parsing "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_de

    .line 1917
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v13    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "providerIndex":I
    .restart local v29    # "tag":Ljava/lang/String;
    .restart local v30    # "type":I
    :cond_217
    :try_start_217
    const-string v31, "g"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d4

    .line 1918
    new-instance v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {v12}, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;-><init>()V

    .line 1919
    .local v12, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    const/16 v31, 0x0

    const-string v32, "id"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x10

    invoke-static/range {v31 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v31

    move/from16 v0, v31

    iput v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    .line 1920
    iget v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_25c

    .line 1921
    iget v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    .line 1924
    :cond_25c
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 1925
    .local v18, "options":Landroid/os/Bundle;
    const/16 v31, 0x0

    const-string v32, "min_width"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1926
    .local v17, "minWidthString":Ljava/lang/String;
    if-eqz v17, :cond_286

    .line 1927
    const-string v31, "appWidgetMinWidth"

    const/16 v32, 0x10

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v32

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1930
    :cond_286
    const/16 v31, 0x0

    const-string v32, "min_height"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1931
    .local v16, "minHeightString":Ljava/lang/String;
    if-eqz v16, :cond_2ab

    .line 1932
    const-string v31, "appWidgetMinHeight"

    const/16 v32, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v32

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1935
    :cond_2ab
    const/16 v31, 0x0

    const-string v32, "max_width"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1936
    .local v15, "maxWidthString":Ljava/lang/String;
    if-eqz v15, :cond_2ce

    .line 1937
    const-string v31, "appWidgetMaxWidth"

    const/16 v32, 0x10

    move/from16 v0, v32

    invoke-static {v15, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v32

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1940
    :cond_2ce
    const/16 v31, 0x0

    const-string v32, "max_height"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1941
    .local v14, "maxHeightString":Ljava/lang/String;
    if-eqz v14, :cond_2f1

    .line 1942
    const-string v31, "appWidgetMaxHeight"

    const/16 v32, 0x10

    move/from16 v0, v32

    invoke-static {v14, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v32

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1945
    :cond_2f1
    const/16 v31, 0x0

    const-string v32, "host_category"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1946
    .local v5, "categoryString":Ljava/lang/String;
    if-eqz v5, :cond_314

    .line 1947
    const-string v31, "appWidgetCategory"

    const/16 v32, 0x10

    move/from16 v0, v32

    invoke-static {v5, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v32

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1950
    :cond_314
    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    .line 1952
    const/16 v31, 0x0

    const-string v32, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1953
    .local v27, "providerString":Ljava/lang/String;
    if-eqz v27, :cond_348

    .line 1957
    const/16 v31, 0x10

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v20

    .line 1958
    .local v20, "pIndex":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v0, v31

    iput-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1963
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d4

    .line 1970
    .end local v20    # "pIndex":I
    :cond_348
    const/16 v31, 0x0

    const-string v32, "h"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x10

    invoke-static/range {v31 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 1971
    .local v9, "hIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v0, v31

    iput-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1972
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d4

    .line 1977
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v31, v0

    if-eqz v31, :cond_389

    .line 1978
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    :cond_389
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a3
    .catch Ljava/lang/NullPointerException; {:try_start_217 .. :try_end_3a3} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_217 .. :try_end_3a3} :catch_1b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_217 .. :try_end_3a3} :catch_1fa
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_3a3} :catch_3a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_217 .. :try_end_3a3} :catch_3c2

    goto/16 :goto_d4

    .line 1992
    .end local v5    # "categoryString":Ljava/lang/String;
    .end local v9    # "hIndex":I
    .end local v12    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .end local v13    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v14    # "maxHeightString":Ljava/lang/String;
    .end local v15    # "maxWidthString":Ljava/lang/String;
    .end local v16    # "minHeightString":Ljava/lang/String;
    .end local v17    # "minWidthString":Ljava/lang/String;
    .end local v18    # "options":Landroid/os/Bundle;
    .end local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "providerIndex":I
    .end local v27    # "providerString":Ljava/lang/String;
    .end local v29    # "tag":Ljava/lang/String;
    .end local v30    # "type":I
    :catch_3a5
    move-exception v7

    .line 1993
    .local v7, "e":Ljava/io/IOException;
    const-string v31, "AppWidgetServiceImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "failed parsing "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_de

    .line 1994
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3c2
    move-exception v7

    .line 1995
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v31, "AppWidgetServiceImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "failed parsing "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_de

    .line 2006
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3df
    const-string v31, "AppWidgetServiceImpl"

    const-string v32, "Failed to read state, clearing widgets and hosts."

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2011
    .local v4, "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_403
    if-ge v11, v4, :cond_41f

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 2011
    add-int/lit8 v11, v11, 0x1

    goto :goto_403

    .line 2015
    .end local v4    # "N":I
    :cond_41f
    return-void
.end method

.method registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V
    .registers 14
    .param p1, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    .prologue
    const/4 v7, 0x1

    .line 1517
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_55

    .line 1521
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_56

    .line 1522
    .local v7, "alreadyRegistered":Z
    :goto_b
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "appWidgetIds"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1524
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1525
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1527
    .local v9, "token":J
    :try_start_22
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    new-instance v3, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v3, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1, v8, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_58

    .line 1530
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1532
    if-nez v7, :cond_55

    .line 1533
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 1534
    .local v4, "period":J
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v4, v0

    if-gez v0, :cond_48

    .line 1535
    const-wide/32 v4, 0x1b7740

    .line 1537
    :cond_48
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1542
    .end local v4    # "period":J
    .end local v7    # "alreadyRegistered":Z
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "token":J
    :cond_55
    return-void

    .line 1521
    :cond_56
    const/4 v7, 0x0

    goto :goto_b

    .line 1530
    .restart local v7    # "alreadyRegistered":Z
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "token":J
    :catchall_58
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;

    .prologue
    const/4 v4, 0x0

    .line 1480
    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1481
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_30

    .line 1482
    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1484
    .local v2, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 1486
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1488
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1489
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1490
    iput-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1491
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 1492
    iput-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1481
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1494
    .end local v2    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_30
    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1495
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1496
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1499
    return-void
.end method

.method removeProvidersForPackageLocked(Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2182
    const/4 v4, 0x0

    .line 2183
    .local v4, "providersRemoved":Z
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2184
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_28

    .line 2185
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 2186
    .local v3, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v5, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2187
    invoke-virtual {p0, v2, v3}, Lcom/android/server/AppWidgetServiceImpl;->removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 2188
    const/4 v4, 0x1

    .line 2184
    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 2196
    .end local v3    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_28
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2197
    add-int/lit8 v2, v0, -0x1

    :goto_30
    if-ltz v2, :cond_48

    .line 2198
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 2199
    .local v1, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    iget-object v5, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 2200
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 2197
    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    .line 2204
    .end local v1    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_48
    return v4
.end method

.method saveSecretStateLocked()V
    .registers 1

    .prologue
    .line 2517
    return-void
.end method

.method saveStateLocked()V
    .registers 7

    .prologue
    .line 1759
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_5

    .line 1775
    :goto_4
    return-void

    .line 1762
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 1765
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_9
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1766
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1767
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_4

    .line 1772
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_17
    move-exception v0

    .line 1773
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed open state file for write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1769
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_31
    :try_start_31
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1770
    const-string v3, "AppWidgetServiceImpl"

    const-string v4, "Failed to save state, restoring backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3b} :catch_17

    goto :goto_4
.end method

.method savedSecretStateFile()Landroid/util/AtomicFile;
    .registers 2

    .prologue
    .line 2784
    const/4 v0, 0x0

    return-object v0
.end method

.method savedStateFile()Landroid/util/AtomicFile;
    .registers 5

    .prologue
    .line 2022
    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 2023
    .local v0, "dir":Ljava/io/File;
    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v3}, Lcom/android/server/AppWidgetServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    .line 2024
    .local v2, "settingsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_29

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    if-nez v3, :cond_29

    .line 2025
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2026
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2029
    :cond_1f
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/appwidgets.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2032
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2034
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_29
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .registers 6
    .param p1, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;

    .prologue
    .line 1502
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1503
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1504
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1505
    return-void
.end method

.method sendInitialBroadcasts()V
    .registers 7

    .prologue
    .line 1724
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1725
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1726
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1727
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_2f

    .line 1728
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1729
    .local v3, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2c

    .line 1730
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1731
    invoke-static {v3}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v1

    .line 1732
    .local v1, "appWidgetIds":[I
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 1733
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 1727
    .end local v1    # "appWidgetIds":[I
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1736
    .end local v3    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_2f
    monitor-exit v5

    .line 1737
    return-void

    .line 1736
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_31
    move-exception v4

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v4
.end method

.method sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V
    .registers 7
    .param p1, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 1508
    if-eqz p2, :cond_24

    array-length v1, p2

    if-lez v1, :cond_24

    .line 1509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1510
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1511
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1512
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1514
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_24
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Z

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v0, :cond_5

    .line 828
    :goto_4
    return-void

    .line 815
    :cond_5
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBindAppWidgetPermission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 820
    :try_start_22
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 821
    if-eqz p2, :cond_34

    .line 822
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 826
    :goto_2c
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 827
    monitor-exit v1

    goto :goto_4

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_31

    throw v0

    .line 824
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_31

    goto :goto_2c
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .registers 14
    .param p1, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hostId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1335
    .local p4, "updatedViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    iget-boolean v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v7, :cond_8

    .line 1336
    const/4 v7, 0x0

    new-array v6, v7, [I

    .line 1354
    :goto_7
    return-object v6

    .line 1338
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 1339
    .local v1, "callingUid":I
    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1340
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1341
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v2

    .line 1342
    .local v2, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    iput-object p1, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1344
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 1346
    iget-object v5, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    .line 1347
    .local v5, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1348
    .local v0, "N":I
    new-array v6, v0, [I

    .line 1349
    .local v6, "updatedIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    if-ge v3, v0, :cond_3c

    .line 1350
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1351
    .local v4, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    iget v7, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    aput v7, v6, v3

    .line 1352
    iget-object v7, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1354
    .end local v4    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_3c
    monitor-exit v8

    goto :goto_7

    .line 1355
    .end local v0    # "N":I
    .end local v2    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v3    # "i":I
    .end local v5    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;>;"
    .end local v6    # "updatedIds":[I
    :catchall_3e
    move-exception v7

    monitor-exit v8
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_3e

    throw v7
.end method

.method public stopListening(I)V
    .registers 5
    .param p1, "hostId"    # I

    .prologue
    .line 1359
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1360
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v1, :cond_9

    .line 1361
    monitor-exit v2

    .line 1370
    :goto_8
    return-void

    .line 1363
    :cond_9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1364
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 1365
    .local v0, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_1c

    .line 1366
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1367
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 1369
    :cond_1c
    monitor-exit v2

    goto :goto_8

    .end local v0    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public systemReady(Z)V
    .registers 4
    .param p1, "safeMode"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    .line 250
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 251
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 256
    monitor-exit v1

    .line 257
    return-void

    .line 256
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .registers 9
    .param p1, "appWidgetId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 892
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 893
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_9

    .line 894
    monitor-exit v4

    .line 917
    :goto_8
    return-void

    .line 896
    :cond_9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 899
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 901
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v1

    .line 906
    .local v1, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v1, :cond_32

    .line 907
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad appWidgetId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 916
    .end local v1    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v3

    .line 910
    .restart local v1    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .restart local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 912
    .local v0, "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 913
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 914
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    .end local v0    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .end local v1    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_2f

    goto :goto_8
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .registers 10
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1054
    iget-boolean v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v4, :cond_5

    .line 1084
    :cond_4
    :goto_4
    return-void

    .line 1057
    :cond_5
    if-eqz p1, :cond_4

    .line 1060
    sget-boolean v4, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v4, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAppWidgetIds views: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1061
    :cond_21
    const/4 v1, 0x0

    .line 1062
    .local v1, "bitmapMemoryUsage":I
    if-eqz p2, :cond_28

    .line 1063
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v1

    .line 1065
    :cond_28
    iget v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    if-le v1, v4, :cond_5d

    .line 1066
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") The total memory cannot exceed that required to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fill the device\'s screen once."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1072
    :cond_5d
    array-length v4, p1

    if-eqz v4, :cond_4

    .line 1075
    array-length v0, p1

    .line 1077
    .local v0, "N":I
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1078
    :try_start_64
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1079
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_68
    if-ge v2, v0, :cond_76

    .line 1080
    aget v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v3

    .line 1081
    .local v3, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v3, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 1079
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 1083
    .end local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_76
    monitor-exit v5

    goto :goto_4

    .end local v2    # "i":I
    :catchall_78
    move-exception v4

    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_64 .. :try_end_7a} :catchall_78

    throw v4
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    .line 1214
    return-void
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V
    .registers 8
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "isPartialUpdate"    # Z

    .prologue
    .line 1220
    if-eqz p1, :cond_27

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_27

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v1, :cond_27

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v1, :cond_27

    .line 1222
    if-nez p3, :cond_28

    .line 1224
    iput-object p2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 1231
    :goto_16
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_27

    .line 1234
    :try_start_1c
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v1, v2, p2, v3}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_27} :catch_2e

    .line 1242
    :cond_27
    :goto_27
    return-void

    .line 1227
    :cond_28
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_16

    .line 1235
    :catch_2e
    move-exception v0

    .line 1238
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_27
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "appWidgetId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1101
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1102
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_9

    .line 1103
    monitor-exit v4

    .line 1125
    :goto_8
    return-void

    .line 1105
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 1106
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1107
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 1109
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v0, :cond_1b

    .line 1110
    monitor-exit v4

    goto :goto_8

    .line 1124
    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_18
    move-exception v3

    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v3

    .line 1113
    .restart local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_1b
    :try_start_1b
    iget-object v2, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1115
    .local v2, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    invoke-virtual {v3, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1118
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1120
    const-string v3, "appWidgetId"

    iget v5, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1121
    const-string v3, "appWidgetOptions"

    iget-object v5, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1122
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1123
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 1124
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_1b .. :try_end_4e} :catchall_18

    goto :goto_8
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 13
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1190
    iget-boolean v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v6, :cond_5

    .line 1210
    :goto_4
    return-void

    .line 1193
    :cond_5
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1194
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v5

    .line 1196
    .local v5, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v5, :cond_2e

    .line 1197
    const-string v6, "AppWidgetServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAppWidgetProvider: provider doesn\'t exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    monitor-exit v7

    goto :goto_4

    .line 1209
    .end local v5    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catchall_2b
    move-exception v6

    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v6

    .line 1200
    .restart local v5    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_2e
    :try_start_2e
    iget-object v4, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    .line 1201
    .local v4, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1202
    .local v1, "callingUid":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1203
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_39
    if-ge v2, v0, :cond_4d

    .line 1204
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1205
    .local v3, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 1206
    invoke-virtual {p0, v3, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 1203
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 1209
    .end local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_4d
    monitor-exit v7
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_2b

    goto :goto_4
.end method

.method updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 28
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2086
    .local p2, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/16 v18, 0x0

    .line 2087
    .local v18, "providersUpdated":Z
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 2088
    .local v15, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2089
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2092
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v13, v1, v2, v3}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_3e} :catch_62

    move-result-object v8

    .line 2101
    .local v8, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v8, :cond_66

    const/4 v5, 0x0

    .line 2102
    .local v5, "N":I
    :goto_42
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_43
    if-ge v11, v5, :cond_147

    .line 2103
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 2104
    .local v20, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2105
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    const/high16 v22, 0x40000

    and-int v21, v21, v22

    if-eqz v21, :cond_6b

    .line 2102
    :cond_5f
    :goto_5f
    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    .line 2095
    .end local v5    # "N":I
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v8    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "i":I
    .end local v20    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_62
    move-exception v19

    .line 2097
    .local v19, "re":Landroid/os/RemoteException;
    const/16 v21, 0x0

    .line 2178
    .end local v19    # "re":Landroid/os/RemoteException;
    :goto_65
    return v21

    .line 2101
    .restart local v8    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_66
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_42

    .line 2108
    .restart local v5    # "N":I
    .restart local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "i":I
    .restart local v20    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6b
    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5f

    .line 2109
    new-instance v9, Landroid/content/ComponentName;

    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    .local v9, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v16

    .line 2111
    .local v16, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v16, :cond_a8

    .line 2112
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v21

    if-eqz v21, :cond_5f

    .line 2113
    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2114
    const/16 v18, 0x1

    goto :goto_5f

    .line 2117
    :cond_a8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/android/server/AppWidgetServiceImpl;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v17

    .line 2118
    .local v17, "parsed":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-eqz v17, :cond_5f

    .line 2119
    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2121
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2123
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2124
    .local v4, "M":I
    if-lez v4, :cond_5f

    .line 2125
    invoke-static/range {v16 .. v16}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v7

    .line 2129
    .local v7, "appWidgetIds":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 2130
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 2133
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_e6
    if-ge v14, v4, :cond_13c

    .line 2134
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 2135
    .local v12, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 2136
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12b

    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12b

    .line 2138
    :try_start_10e
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v21, v0

    iget v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v24, v0

    invoke-interface/range {v21 .. v24}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;I)V
    :try_end_12b
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_12b} :catch_12e

    .line 2133
    :cond_12b
    :goto_12b
    add-int/lit8 v14, v14, 0x1

    goto :goto_e6

    .line 2140
    :catch_12e
    move-exception v10

    .line 2144
    .local v10, "ex":Landroid/os/RemoteException;
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_12b

    .line 2149
    .end local v10    # "ex":Landroid/os/RemoteException;
    .end local v12    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_13c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 2150
    const/16 v18, 0x1

    goto/16 :goto_5f

    .line 2158
    .end local v4    # "M":I
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "appWidgetIds":[I
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v14    # "j":I
    .end local v16    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v17    # "parsed":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v20    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2159
    add-int/lit8 v11, v5, -0x1

    :goto_153
    if-ltz v11, :cond_1b6

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 2161
    .restart local v16    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1b3

    .line 2170
    if-eqz p2, :cond_1aa

    .line 2171
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2173
    :cond_1aa
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Lcom/android/server/AppWidgetServiceImpl;->removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 2174
    const/16 v18, 0x1

    .line 2159
    :cond_1b3
    add-int/lit8 v11, v11, -0x1

    goto :goto_153

    .end local v16    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1b6
    move/from16 v21, v18

    .line 2178
    goto/16 :goto_65
.end method

.method writeSecretStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .registers 3
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 2591
    const/4 v0, 0x0

    return v0
.end method

.method writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .registers 16
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v10, 0x1

    .line 1781
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1782
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v6, p1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1783
    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1784
    const/4 v9, 0x0

    const-string v11, "gs"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1786
    const/4 v8, 0x0

    .line 1787
    .local v8, "providerIndex":I
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1788
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v0, :cond_63

    .line 1789
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1790
    .local v7, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v9, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_60

    .line 1791
    const/4 v9, 0x0

    const-string v11, "p"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1792
    const/4 v9, 0x0

    const-string v11, "pkg"

    iget-object v12, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1793
    const/4 v9, 0x0

    const-string v11, "cl"

    iget-object v12, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1794
    const/4 v9, 0x0

    const-string v11, "p"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1795
    iput v8, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->tag:I

    .line 1796
    add-int/lit8 v8, v8, 0x1

    .line 1788
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1800
    .end local v7    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_63
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1801
    const/4 v3, 0x0

    :goto_6a
    if-ge v3, v0, :cond_99

    .line 1802
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1803
    .local v2, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    const/4 v9, 0x0

    const-string v11, "h"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1804
    const/4 v9, 0x0

    const-string v11, "pkg"

    iget-object v12, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1805
    const/4 v9, 0x0

    const-string v11, "id"

    iget v12, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1806
    const/4 v9, 0x0

    const-string v11, "h"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1807
    iput v3, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->tag:I

    .line 1801
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 1810
    .end local v2    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_99
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1811
    const/4 v3, 0x0

    :goto_a0
    if-ge v3, v0, :cond_144

    .line 1812
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1813
    .local v4, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    const/4 v9, 0x0

    const-string v11, "g"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1814
    const/4 v9, 0x0

    const-string v11, "id"

    iget v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1815
    const/4 v9, 0x0

    const-string v11, "h"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v12, v12, Lcom/android/server/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1816
    iget-object v9, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v9, :cond_dc

    .line 1817
    const/4 v9, 0x0

    const-string v11, "p"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v12, v12, Lcom/android/server/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1819
    :cond_dc
    iget-object v9, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    if-eqz v9, :cond_13a

    .line 1820
    const/4 v9, 0x0

    const-string v11, "min_width"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const-string v13, "appWidgetMinWidth"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1822
    const/4 v9, 0x0

    const-string v11, "min_height"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const-string v13, "appWidgetMinHeight"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1824
    const/4 v9, 0x0

    const-string v11, "max_width"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const-string v13, "appWidgetMaxWidth"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1826
    const/4 v9, 0x0

    const-string v11, "max_height"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const-string v13, "appWidgetMaxHeight"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1828
    const/4 v9, 0x0

    const-string v11, "host_category"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const-string v13, "appWidgetCategory"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1831
    :cond_13a
    const/4 v9, 0x0

    const-string v11, "g"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1811
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a0

    .line 1834
    .end local v4    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_144
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1835
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_14a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_184

    .line 1836
    const/4 v9, 0x0

    const-string v11, "b"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1837
    const/4 v11, 0x0

    const-string v12, "packageName"

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6, v11, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1838
    const/4 v9, 0x0

    const-string v11, "b"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_168} :catch_169

    goto :goto_14a

    .line 1845
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v8    # "providerIndex":I
    :catch_169
    move-exception v1

    .line 1846
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to write state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const/4 v9, 0x0

    .end local v1    # "e":Ljava/io/IOException;
    :goto_183
    return v9

    .line 1841
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "providerIndex":I
    :cond_184
    const/4 v9, 0x0

    :try_start_185
    const-string v11, "gs"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1843
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_18d} :catch_169

    move v9, v10

    .line 1844
    goto :goto_183
.end method
