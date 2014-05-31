.class public Lcom/android/server/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ClipboardService$PerUserClipboard;,
        Lcom/android/server/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerID:I

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 106
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    .line 112
    iput-object p1, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 115
    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_23
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v4, "clipboard"

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_45

    move-result-object v1

    .line 122
    :goto_2b
    iput-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 125
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/ClipboardService$1;

    invoke-direct {v4, p0}, Lcom/android/server/ClipboardService$1;-><init>(Lcom/android/server/ClipboardService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    .line 138
    return-void

    .line 119
    .end local v2    # "userFilter":Landroid/content/IntentFilter;
    :catch_45
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "clipboard"

    const-string v4, "AM dead"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method static synthetic access$000(Lcom/android/server/ClipboardService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ClipboardService;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/ClipboardService;->removeClipboard(I)V

    return-void
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 552
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 553
    .local v8, "targetUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 555
    .local v3, "oldIdentity":J
    const/4 v9, 0x0

    :try_start_d
    invoke-interface {v6, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 556
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_7d

    .line 557
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2c} :catch_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_aa

    .line 563
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :catch_2c
    move-exception v9

    .line 566
    :cond_2d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 568
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 571
    .local v1, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    .line 572
    .local v7, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v7, :cond_b5

    .line 573
    invoke-virtual {v7}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v9

    if-nez v9, :cond_b4

    .line 574
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b4

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b4

    .line 576
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 577
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_65
    if-ge v2, v0, :cond_af

    .line 578
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 559
    .end local v0    # "N":I
    .end local v1    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v2    # "i":I
    .end local v7    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7d
    :try_start_7d
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-nez v9, :cond_2d

    .line 560
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calling uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not own package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_aa} :catch_2c
    .catchall {:try_start_7d .. :try_end_aa} :catchall_aa

    .line 566
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_aa
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 580
    .restart local v0    # "N":I
    .restart local v1    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v2    # "i":I
    .restart local v7    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_af
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_b4
    :goto_b4
    return-void

    .line 588
    :cond_b5
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v9, :cond_b4

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b4

    .line 589
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 590
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c8
    if-ge v2, v0, :cond_d6

    .line 591
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_c8

    .line 593
    :cond_d6
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b4
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .registers 6
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    .prologue
    .line 523
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 524
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 525
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 527
    :cond_11
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .registers 5
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "uid"    # I

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 514
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 516
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 517
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 518
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 520
    :cond_20
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I

    .prologue
    .line 499
    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 510
    :goto_c
    return-void

    .line 502
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 505
    .local v0, "ident":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, p2, v3, p1, v4}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_21
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 508
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 506
    :catch_21
    move-exception v2

    goto :goto_18
.end method

.method private final clearActiveOwnersLocked()V
    .registers 9

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 621
    .local v1, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 624
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 625
    .local v4, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v4, :cond_4f

    .line 626
    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 627
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 628
    .local v5, "uid":I
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_26

    .line 672
    .end local v5    # "uid":I
    :cond_25
    return-void

    .line 631
    .restart local v5    # "uid":I
    :cond_26
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 632
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    if-ge v2, v0, :cond_25

    .line 633
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 632
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 640
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v5    # "uid":I
    :cond_4f
    iget v6, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v6, :cond_9e

    .line 641
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v6, :cond_70

    .line 642
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v6, :cond_25

    .line 645
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 646
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_62
    if-ge v2, v0, :cond_25

    .line 647
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 646
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 651
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_70
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 652
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_77
    if-ge v2, v0, :cond_85

    .line 653
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 656
    :cond_85
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v6, :cond_25

    .line 659
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    .line 660
    .local v3, "n":I
    const/4 v2, 0x0

    :goto_90
    if-ge v2, v3, :cond_25

    .line 661
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    .line 664
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_9e
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v6, :cond_25

    .line 667
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 668
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a9
    if-ge v2, v0, :cond_25

    .line 669
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 668
    add-int/lit8 v2, v2, 0x1

    goto :goto_a9
.end method

.method private getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;
    .registers 2

    .prologue
    .line 155
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ClipboardService;->getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    .line 160
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    .line 161
    .local v0, "puc":Lcom/android/server/ClipboardService$PerUserClipboard;
    if-nez v0, :cond_17

    .line 162
    new-instance v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    .end local v0    # "puc":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {v0, p0, p1}, Lcom/android/server/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/ClipboardService;I)V

    .line 163
    .restart local v0    # "puc":Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    :cond_17
    monitor-exit v2

    return-object v0

    .line 166
    .end local v0    # "puc":Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .registers 4

    .prologue
    .line 682
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 684
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_11

    .line 685
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 687
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V
    .registers 5
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 542
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    .line 544
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 545
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 546
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    .line 548
    :cond_20
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 532
    .local v6, "ident":J
    :try_start_4
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_1b
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 536
    :goto_12
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 538
    return-void

    .line 536
    :catchall_16
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 534
    :catch_1b
    move-exception v0

    goto :goto_12
.end method

.method private removeClipboard(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    .line 171
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 172
    monitor-exit v1

    .line 173
    return-void

    .line 172
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .registers 4
    .param p1, "item"    # Landroid/content/ClipData$Item;

    .prologue
    .line 610
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 611
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 613
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 614
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 615
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 617
    :cond_20
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 598
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 600
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_15
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 605
    :goto_c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 607
    return-void

    .line 605
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 603
    :catch_15
    move-exception v2

    goto :goto_c
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .registers 3
    .param p1, "format"    # I

    .prologue
    .line 675
    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-eq v0, p1, :cond_6

    .line 676
    iput p1, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    .line 678
    :cond_6
    return-void
.end method

.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .registers 6
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 426
    monitor-enter p0

    .line 427
    :try_start_1
    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v0, :cond_19

    .line 428
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 434
    :goto_17
    monitor-exit p0

    .line 435
    return-void

    .line 431
    :cond_19
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    goto :goto_17

    .line 434
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 299
    monitor-enter p0

    .line 301
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 302
    .local v0, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v0, :cond_28

    .line 303
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_28

    .line 304
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 305
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 306
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 307
    monitor-exit p0

    .line 340
    :goto_27
    return-object v1

    .line 314
    :cond_28
    if-eqz v0, :cond_39

    .line 315
    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 316
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 324
    :cond_39
    :goto_39
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5b

    .line 326
    monitor-exit p0

    goto :goto_27

    .line 342
    .end local v0    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_49
    move-exception v1

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_2 .. :try_end_4b} :catchall_49

    throw v1

    .line 318
    .restart local v0    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_4c
    :try_start_4c
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 319
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_39

    .line 328
    :cond_5b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 330
    if-eqz v0, :cond_80

    .line 331
    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v1

    if-nez v1, :cond_80

    .line 332
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_27

    .line 337
    :cond_80
    iget v1, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v1, :cond_8c

    .line 338
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_27

    .line 340
    :cond_8c
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    monitor-exit p0
    :try_end_93
    .catchall {:try_start_4c .. :try_end_93} :catchall_49

    goto :goto_27
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 346
    monitor-enter p0

    .line 347
    :try_start_2
    iget-object v4, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_12

    .line 349
    monitor-exit p0

    .line 383
    :goto_11
    return-object v3

    .line 351
    :cond_12
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 354
    .local v0, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 355
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_6f

    .line 356
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_33

    .line 357
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 358
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 359
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 360
    monitor-exit p0

    goto :goto_11

    .line 385
    .end local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_30
    move-exception v3

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_30

    throw v3

    .line 363
    .restart local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 364
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 370
    :goto_3e
    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-nez v4, :cond_6f

    .line 371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 372
    .local v2, "uid":I
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5d

    .line 373
    monitor-exit p0

    goto :goto_11

    .line 366
    .end local v2    # "uid":I
    :cond_56
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 367
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_3e

    .line 375
    .restart local v2    # "uid":I
    :cond_5d
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    monitor-exit p0

    goto :goto_11

    .line 380
    .end local v2    # "uid":I
    :cond_6f
    iget v4, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v4, :cond_7f

    .line 381
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_7d

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    :cond_7d
    monitor-exit p0

    goto :goto_11

    .line 383
    :cond_7f
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v4, :cond_89

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    :cond_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_33 .. :try_end_8a} :catchall_30

    goto :goto_11
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 448
    monitor-enter p0

    .line 449
    :try_start_3
    iget-object v4, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v4, v7, v8, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_14

    .line 451
    monitor-exit p0

    move v4, v5

    .line 494
    :goto_13
    return v4

    .line 453
    :cond_14
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 456
    .local v0, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 457
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_33

    .line 458
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_33

    .line 459
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 460
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 461
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 462
    monitor-exit p0

    move v4, v5

    goto :goto_13

    .line 466
    :cond_33
    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 467
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 473
    :goto_40
    if-eqz v1, :cond_87

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-nez v4, :cond_87

    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 475
    .local v3, "uid":I
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_84

    .line 476
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 477
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_82

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_82

    move v4, v6

    :goto_76
    monitor-exit p0

    goto :goto_13

    .line 495
    .end local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "uid":I
    :catchall_78
    move-exception v4

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_78

    throw v4

    .line 469
    .restart local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_7b
    const/4 v4, 0x0

    :try_start_7c
    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 470
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_40

    .restart local v2    # "text":Ljava/lang/CharSequence;
    .restart local v3    # "uid":I
    :cond_82
    move v4, v5

    .line 477
    goto :goto_76

    .line 479
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_84
    monitor-exit p0

    move v4, v5

    goto :goto_13

    .line 483
    .end local v3    # "uid":I
    :cond_87
    iget v4, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v4, :cond_a8

    .line 484
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_c5

    .line 485
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 486
    .restart local v2    # "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_a6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_a6

    move v4, v6

    :goto_a3
    monitor-exit p0

    goto/16 :goto_13

    :cond_a6
    move v4, v5

    goto :goto_a3

    .line 489
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_a8
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v4, :cond_c5

    .line 490
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 491
    .restart local v2    # "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_c3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_c3

    move v4, v6

    :goto_c0
    monitor-exit p0

    goto/16 :goto_13

    :cond_c3
    move v4, v5

    goto :goto_c0

    .line 494
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_c5
    monitor-exit p0
    :try_end_c6
    .catchall {:try_start_7c .. :try_end_c6} :catchall_78

    move v4, v5

    goto/16 :goto_13
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 389
    monitor-enter p0

    .line 391
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 392
    .local v0, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 393
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_21

    .line 394
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_21

    .line 395
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 396
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 397
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 398
    monitor-exit p0

    .line 419
    :goto_20
    return v2

    .line 402
    :cond_21
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 403
    :cond_29
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 411
    iget-object v4, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5a

    .line 413
    monitor-exit p0

    goto :goto_20

    .line 421
    .end local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_3e
    move-exception v2

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v2

    .line 405
    .restart local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_41
    const/4 v4, 0x0

    :try_start_42
    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 406
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 407
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_58

    move v2, v3

    :cond_58
    monitor-exit p0

    goto :goto_20

    .line 416
    :cond_5a
    iget v4, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v4, :cond_69

    .line 417
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_67

    move v2, v3

    :cond_67
    monitor-exit p0

    goto :goto_20

    .line 419
    :cond_69
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v4, :cond_72

    move v2, v3

    :cond_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_42 .. :try_end_73} :catchall_3e

    goto :goto_20
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 145
    :catch_5
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 147
    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_11
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;

    .prologue
    .line 438
    monitor-enter p0

    .line 439
    :try_start_1
    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v0, :cond_10

    .line 440
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 444
    :goto_e
    monitor-exit p0

    .line 445
    return-void

    .line 442
    :cond_10
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_e

    .line 444
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .registers 18
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 176
    monitor-enter p0

    .line 177
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    .line 180
    .local v2, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    .line 181
    .local v10, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v10, :cond_1f

    .line 182
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v11

    if-nez v11, :cond_1f

    .line 183
    const/4 v11, 0x0

    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 184
    const/4 v11, 0x0

    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 185
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 186
    monitor-exit p0

    .line 296
    :goto_1e
    return-void

    .line 192
    :cond_1f
    if-eqz v10, :cond_27

    invoke-virtual {v10}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 193
    :cond_27
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 200
    :goto_2c
    if-eqz p1, :cond_46

    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    if-gtz v11, :cond_46

    .line 201
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "No items"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 295
    .end local v2    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v10    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_3c
    move-exception v11

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw v11

    .line 195
    .restart local v2    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v10    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_3f
    const/4 v11, 0x0

    :try_start_40
    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 196
    const/4 v11, 0x0

    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_2c

    .line 203
    :cond_46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 204
    .local v1, "callingUid":I
    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1e

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v1, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_58

    .line 206
    monitor-exit p0

    goto :goto_1e

    .line 208
    :cond_58
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    .line 209
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->clearActiveOwnersLocked()V

    .line 215
    if-eqz v10, :cond_93

    invoke-virtual {v10}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v11

    if-nez v11, :cond_93

    .line 216
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    .line 219
    .local v9, "ret":Landroid/content/ClipData;
    if-eqz v9, :cond_91

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/ClipData;->checkEquals(Landroid/content/ClipData;)Z

    move-result v11

    if-eqz v11, :cond_91

    .line 220
    iget-object v11, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    const v12, 0x1040b26

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 223
    :cond_91
    monitor-exit p0

    goto :goto_1e

    .line 225
    .end local v9    # "ret":Landroid/content/ClipData;
    :cond_93
    iget v11, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v11, :cond_d4

    .line 226
    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 227
    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 233
    :goto_9f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 234
    .local v5, "ident":J
    iget v11, p0, Lcom/android/server/ClipboardService;->mContainerID:I
    :try_end_a5
    .catchall {:try_start_40 .. :try_end_a5} :catchall_3c

    if-nez v11, :cond_115

    .line 236
    :try_start_a7
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_106

    move-result v8

    .line 237
    .local v8, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ae
    if-ge v4, v8, :cond_d9

    .line 239
    :try_start_b0
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ClipboardService$ListenerInfo;

    .line 241
    .local v7, "li":Lcom/android/server/ClipboardService$ListenerInfo;
    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1d

    iget v13, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    iget-object v14, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_d1

    .line 243
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v11}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_d1} :catch_169
    .catchall {:try_start_b0 .. :try_end_d1} :catchall_106

    .line 237
    .end local v7    # "li":Lcom/android/server/ClipboardService$ListenerInfo;
    :cond_d1
    :goto_d1
    add-int/lit8 v4, v4, 0x1

    goto :goto_ae

    .line 229
    .end local v4    # "i":I
    .end local v5    # "ident":J
    .end local v8    # "n":I
    :cond_d4
    :try_start_d4
    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_3c

    goto :goto_9f

    .line 252
    .restart local v4    # "i":I
    .restart local v5    # "ident":J
    .restart local v8    # "n":I
    :cond_d9
    :try_start_d9
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_de
    .catchall {:try_start_d9 .. :try_end_de} :catchall_106

    move-result v3

    .line 253
    .local v3, "count":I
    const/4 v4, 0x0

    :goto_e0
    if-ge v4, v3, :cond_14c

    .line 255
    :try_start_e2
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ClipboardService$ListenerInfo;

    .line 257
    .restart local v7    # "li":Lcom/android/server/ClipboardService$ListenerInfo;
    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1d

    iget v13, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    iget-object v14, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_103

    .line 259
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v11}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_103} :catch_167
    .catchall {:try_start_e2 .. :try_end_103} :catchall_106

    .line 253
    .end local v7    # "li":Lcom/android/server/ClipboardService$ListenerInfo;
    :cond_103
    :goto_103
    add-int/lit8 v4, v4, 0x1

    goto :goto_e0

    .line 269
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v8    # "n":I
    :catchall_106
    move-exception v11

    :try_start_107
    iget-object v12, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 270
    iget-object v12, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 271
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    throw v11

    .line 274
    :cond_115
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_11a
    .catchall {:try_start_107 .. :try_end_11a} :catchall_3c

    move-result v8

    .line 276
    .restart local v8    # "n":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_11c
    if-ge v4, v8, :cond_15c

    .line 278
    :try_start_11e
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ClipboardService$ListenerInfo;

    .line 280
    .restart local v7    # "li":Lcom/android/server/ClipboardService$ListenerInfo;
    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1d

    iget v13, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    iget-object v14, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_13f

    .line 282
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v11}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_13f
    .catch Landroid/os/RemoteException; {:try_start_11e .. :try_end_13f} :catch_165
    .catchall {:try_start_11e .. :try_end_13f} :catchall_142

    .line 276
    .end local v7    # "li":Lcom/android/server/ClipboardService$ListenerInfo;
    :cond_13f
    :goto_13f
    add-int/lit8 v4, v4, 0x1

    goto :goto_11c

    .line 291
    :catchall_142
    move-exception v11

    :try_start_143
    iget-object v12, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 292
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    throw v11

    .line 269
    .restart local v3    # "count":I
    :cond_14c
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 270
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 271
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 295
    .end local v3    # "count":I
    :goto_159
    monitor-exit p0

    goto/16 :goto_1e

    .line 291
    :cond_15c
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 292
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_164
    .catchall {:try_start_143 .. :try_end_164} :catchall_3c

    goto :goto_159

    .line 285
    :catch_165
    move-exception v11

    goto :goto_13f

    .line 262
    .restart local v3    # "count":I
    :catch_167
    move-exception v11

    goto :goto_103

    .line 246
    .end local v3    # "count":I
    :catch_169
    move-exception v11

    goto/16 :goto_d1
.end method
