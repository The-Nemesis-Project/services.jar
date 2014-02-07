.class Lcom/android/server/AlarmManagerService$SyncScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    }
.end annotation


# instance fields
.field private final SYNC_COPRIME_VALUE:J

.field private final SYNC_MAX_VALUE:J

.field private final SYNC_MIN_VALUE:J

.field private WHITELIST:Z

.field private WHITELIST_PLUS_AUTO_ADD:Z

.field private gIntervalGcd:Ljava/math/BigInteger;

.field private final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mCscPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmailAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailIdForNextSync:J

.field private mEmailNextSyncTime:J

.field private final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
    .registers 16
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v11, 0xdbba00

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1602
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1585
    iput-boolean v10, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST:Z

    .line 1586
    iput-boolean v10, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    .line 1587
    const-wide/32 v7, 0xea60

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_COPRIME_VALUE:J

    .line 1588
    const-wide/32 v7, 0x493e0

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_MIN_VALUE:J

    .line 1589
    iput-wide v11, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_MAX_VALUE:J

    .line 1591
    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1592
    const-wide v7, 0x7fffffffffffffffL

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    .line 1593
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    .line 1595
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1596
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    .line 1597
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    .line 1598
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    .line 1599
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    .line 1603
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_ParamAppSync"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1605
    .local v1, "cscAppSyncList":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1608
    .local v4, "listApps":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1609
    aget-object v7, v4, v9

    const-string v8, "whitelist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 1611
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6e
    array-length v7, v4

    if-ge v2, v7, :cond_dd

    .line 1612
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 1617
    .end local v2    # "i":I
    :cond_7b
    aget-object v7, v4, v9

    const-string v8, "blacklist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 1618
    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST:Z

    .line 1619
    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    .line 1622
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_8a
    array-length v7, v4

    if-ge v2, v7, :cond_dd

    .line 1623
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 1628
    .end local v2    # "i":I
    :cond_97
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.sec.spp.push"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1629
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.sec.chaton"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.facebook.katana"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.twitter.android"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.facebook.orca"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1633
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.kakao.talk"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.google.android.apps.plus"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1635
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.mobilesrepublic.appygeek"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "mnn.Android"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.google.android.apps.maps"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    :cond_dd
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1643
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_e8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1644
    .local v6, "pC":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    .line 1647
    .end local v6    # "pC":Ljava/lang/String;
    :cond_fa
    const/4 v5, 0x0

    .local v5, "nm":I
    :goto_fb
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_130

    .line 1648
    const-string v8, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<TargetPackages> "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    add-int/lit8 v5, v5, 0x1

    goto :goto_fb

    .line 1651
    :cond_130
    const-string v7, "account"

    invoke-virtual {p2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 1652
    .local v0, "am":Landroid/accounts/AccountManager;
    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p0, v8, v10}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1653
    return-void
.end method

.method private adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V
    .registers 25
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "inputDistance"    # J

    .prologue
    .line 1801
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_12e

    :cond_16
    const/4 v12, 0x1

    .line 1803
    .local v12, "isRtc":Z
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sub-long v8, v17, v19

    .line 1804
    .local v8, "curTimeSkew":J
    if-eqz v12, :cond_131

    const-wide/16 v15, 0x0

    .line 1805
    .local v15, "skew":J
    :goto_25
    const-wide v13, 0x7fffffffffffffffL

    .line 1806
    .local v13, "nextAlarmWhen":J
    move-wide/from16 v10, p2

    .line 1809
    .local v10, "distance":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-eqz v17, :cond_94

    .line 1810
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->timeToNextRepeatingAlarmLocked(J)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v3

    .line 1811
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v3, :cond_94

    .line 1812
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v19, v0

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_66

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_134

    :cond_66
    const-wide/16 v17, 0x0

    :goto_68
    add-long v13, v19, v17

    .line 1815
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_90

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v19

    rem-long v17, v17, v19

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_138

    .line 1817
    :cond_90
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1828
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_94
    :goto_94
    const-wide v17, 0x7fffffffffffffffL

    cmp-long v17, v13, v17

    if-nez v17, :cond_cb

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->timeToNextRepeatingAlarmLocked(J)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v3

    .line 1830
    .restart local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v3, :cond_cb

    .line 1831
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v19, v0

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c7

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_156

    :cond_c7
    const-wide/16 v17, 0x0

    :goto_c9
    add-long v13, v19, v17

    .line 1835
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_cb
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v17

    if-eqz v17, :cond_105

    const-string v17, "AlarmManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " next: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", RTC: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", SKEW: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_105
    const-wide v17, 0x7fffffffffffffffL

    cmp-long v17, v13, v17

    if-eqz v17, :cond_173

    .line 1839
    sub-long/2addr v13, v15

    .line 1844
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    cmp-long v17, v13, v17

    if-gtz v17, :cond_15a

    .line 1845
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    sub-long v17, v17, v13

    div-long v6, v17, v10

    .line 1846
    .local v6, "count":J
    mul-long v17, v10, v6

    add-long v17, v17, v13

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1859
    .end local v6    # "count":J
    :goto_12d
    return-void

    .line 1801
    .end local v8    # "curTimeSkew":J
    .end local v10    # "distance":J
    .end local v12    # "isRtc":Z
    .end local v13    # "nextAlarmWhen":J
    .end local v15    # "skew":J
    :cond_12e
    const/4 v12, 0x0

    goto/16 :goto_17

    .restart local v8    # "curTimeSkew":J
    .restart local v12    # "isRtc":Z
    :cond_131
    move-wide v15, v8

    .line 1804
    goto/16 :goto_25

    .restart local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v10    # "distance":J
    .restart local v13    # "nextAlarmWhen":J
    .restart local v15    # "skew":J
    :cond_134
    move-wide/from16 v17, v8

    .line 1812
    goto/16 :goto_68

    .line 1821
    :cond_138
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 1822
    .local v5, "bigTemp":Ljava/math/BigInteger;
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1823
    .local v4, "bigGcd":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    goto/16 :goto_94

    .end local v4    # "bigGcd":Ljava/math/BigInteger;
    .end local v5    # "bigTemp":Ljava/math/BigInteger;
    :cond_156
    move-wide/from16 v17, v8

    .line 1831
    goto/16 :goto_c9

    .line 1851
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_15a
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    sub-long v17, v13, v17

    div-long v6, v17, v10

    .line 1852
    .restart local v6    # "count":J
    const-wide/16 v17, 0x1

    add-long v6, v6, v17

    .line 1853
    mul-long v17, v10, v6

    sub-long v17, v13, v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_12d

    .line 1857
    .end local v6    # "count":J
    :cond_173
    const-string v17, "AlarmManager"

    const-string v18, " next == Long.MAX_VALUE"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d
.end method

.method private calculateGcdOfRepeatIntervals(JJ)J
    .registers 13
    .param p1, "interval_old"    # J
    .param p3, "interval_new"    # J

    .prologue
    .line 1760
    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 1761
    .local v1, "newRepeatInterval":Ljava/math/BigInteger;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 1762
    .local v2, "oldIntervalGcd":Ljava/math/BigInteger;
    move-object v0, v2

    .line 1763
    .local v0, "newIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1767
    .local v3, "tempIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_27

    .line 1768
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    .line 1769
    move-object v0, v3

    .line 1773
    :cond_27
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private lookForNonAdjustableAlarmLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;J)Z
    .registers 12
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .param p3, "triggerAtTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Landroid/app/PendingIntent;",
            "J)Z"
        }
    .end annotation

    .prologue
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v2, 0x0

    .line 1926
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_8

    .line 1941
    :cond_7
    :goto_7
    return v2

    .line 1931
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1933
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1934
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1935
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x14

    cmp-long v3, v3, v5

    if-gez v3, :cond_c

    .line 1938
    const/4 v2, 0x1

    goto :goto_7
.end method

.method private lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 11
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "targetPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1946
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_9

    .line 1967
    :cond_8
    :goto_8
    return v3

    .line 1951
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1953
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1954
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1956
    .local v2, "targetPackage":Ljava/lang/String;
    :try_start_19
    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_1c
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_19 .. :try_end_1c} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1c} :catch_48

    move-result v5

    if-ne v5, v4, :cond_d

    move v3, v4

    .line 1957
    goto :goto_8

    .line 1959
    :catch_21
    move-exception v0

    .line 1960
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PatternSyntaxException raised. packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetPackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    goto :goto_d

    .line 1962
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_48
    move-exception v0

    .line 1963
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException raised. packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetPackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_d
.end method

.method private queryAccounts()V
    .registers 14

    .prologue
    .line 1989
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "account"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 1990
    .local v1, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 1992
    .local v0, "ads":[Landroid/accounts/AuthenticatorDescription;
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1993
    :try_start_19
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1994
    move-object v2, v0

    .local v2, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_21
    if-ge v4, v5, :cond_3a

    aget-object v3, v2, v4

    .line 1995
    .local v3, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_37

    .line 1996
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 2001
    .end local v3    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_3a
    iget-boolean v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    if-eqz v9, :cond_a1

    .line 2002
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2003
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2004
    .local v7, "pC":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 2018
    .end local v2    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "len$":I
    .end local v7    # "pC":Ljava/lang/String;
    :catchall_5b
    move-exception v9

    monitor-exit v10
    :try_end_5d
    .catchall {:try_start_19 .. :try_end_5d} :catchall_5b

    throw v9

    .line 2006
    .restart local v2    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "len$":I
    :cond_5e
    :try_start_5e
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2007
    .local v6, "pA":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 2009
    .end local v6    # "pA":Ljava/lang/String;
    :cond_76
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2010
    .local v8, "pT":Ljava/lang/String;
    const-string v9, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<TargetPackages> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 2014
    .end local v8    # "pT":Ljava/lang/String;
    .local v4, "i$":I
    :cond_a1
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_a7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2015
    .restart local v6    # "pA":Ljava/lang/String;
    const-string v9, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<AccPackages> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 2018
    .end local v6    # "pA":Ljava/lang/String;
    :cond_cc
    monitor-exit v10
    :try_end_cd
    .catchall {:try_start_5e .. :try_end_cd} :catchall_5b

    .line 2019
    return-void
.end method

.method private recalculateGcdOfRepeatIntervalsLocked()V
    .registers 22

    .prologue
    .line 1777
    const-wide/32 v11, 0xdbba00

    .line 1778
    .local v11, "newIntervalGcd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1780
    .local v4, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_95

    .line 1781
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1782
    .local v5, "almListSize":I
    if-lez v5, :cond_5d

    .line 1783
    const/4 v8, 0x0

    .line 1784
    .local v8, "i":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1785
    .local v13, "nowRtc":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sub-long v6, v17, v19

    .local v6, "curTimeSkew":J
    move v9, v8

    .line 1786
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_1f
    if-ge v9, v5, :cond_5d

    .line 1787
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1788
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3b

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_58

    :cond_3b
    const/4 v10, 0x1

    .line 1789
    .local v10, "isRtc":Z
    :goto_3c
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v19, v0

    if-eqz v10, :cond_5a

    const-wide/16 v17, 0x0

    :goto_44
    add-long v15, v19, v17

    .line 1790
    .local v15, "when":J
    cmp-long v17, v13, v15

    if-gez v17, :cond_56

    .line 1791
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v11

    :cond_56
    move v9, v8

    .line 1793
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_1f

    .line 1788
    .end local v9    # "i":I
    .end local v10    # "isRtc":Z
    .end local v15    # "when":J
    .restart local v8    # "i":I
    :cond_58
    const/4 v10, 0x0

    goto :goto_3c

    .restart local v10    # "isRtc":Z
    :cond_5a
    move-wide/from16 v17, v6

    .line 1789
    goto :goto_44

    .line 1795
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v6    # "curTimeSkew":J
    .end local v8    # "i":I
    .end local v10    # "isRtc":Z
    .end local v13    # "nowRtc":J
    :cond_5d
    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1796
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v17

    if-eqz v17, :cond_95

    const-string v17, "AlarmManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " GCD_NEW("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "):"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    .end local v5    # "almListSize":I
    :cond_95
    return-void
.end method


# virtual methods
.method public getActiveEmailAccountsCount()J
    .registers 8

    .prologue
    .line 2100
    const/4 v2, 0x0

    .line 2101
    .local v2, "numEmailAccount":I
    const/4 v0, 0x0

    .line 2102
    .local v0, "index":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_20

    .line 2103
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    iget-wide v3, v3, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_22

    .line 2104
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_2

    .line 2107
    :cond_20
    int-to-long v3, v2

    return-wide v3

    .end local v0    # "index":I
    .restart local v1    # "index":I
    :cond_22
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_2
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 3
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 2022
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2023
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->queryAccounts()V

    .line 2025
    :cond_9
    return-void
.end method

.method public removeRepeatingAlarmLocked(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$3300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1974
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 1975
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1977
    :cond_18
    return-void
.end method

.method public removeRepeatingAlarmLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$3300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1983
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$3500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1984
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1986
    :cond_14
    return-void
.end method

.method public schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 32
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService$SyncScheduler;->lookForNonAdjustableAlarmLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;J)Z

    move-result v20

    .line 1661
    .local v20, "isNonAdjustableAlarm":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 1663
    if-nez v20, :cond_373

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST:Z

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_373

    .line 1666
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x493e0

    cmp-long v26, v26, v28

    if-ltz v26, :cond_192

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0xdbba00

    cmp-long v26, v26, v28

    if-gtz v26, :cond_192

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1676
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v28

    rem-long v26, v26, v28

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_181

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1738
    :cond_cb
    :goto_cb
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v26

    if-eqz v26, :cond_373

    .line 1739
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1740
    .local v8, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v8, :cond_373

    .line 1741
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1742
    .local v9, "almListSize":I
    if-lez v9, :cond_373

    .line 1743
    const/16 v18, 0x0

    .line 1744
    .local v18, "i":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    sub-long v10, v26, v28

    .local v10, "curTimeSkew":J
    move/from16 v19, v18

    .line 1745
    .end local v18    # "i":I
    .local v19, "i":I
    :goto_eb
    move/from16 v0, v19

    if-ge v0, v9, :cond_347

    .line 1746
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "i":I
    .restart local v18    # "i":I
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1747
    .local v7, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v24, Landroid/text/format/Time;

    invoke-direct/range {v24 .. v24}, Landroid/text/format/Time;-><init>()V

    .line 1748
    .local v24, "time":Landroid/text/format/Time;
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_343

    move-wide/from16 v26, v10

    :goto_110
    add-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1749
    invoke-virtual/range {v24 .. v24}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v25

    .line 1750
    .local v25, "timeStr":Ljava/lang/String;
    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v28, v18, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " (T:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "): "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", INT:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v18

    .line 1751
    .end local v18    # "i":I
    .restart local v19    # "i":I
    goto/16 :goto_eb

    .line 1684
    .end local v7    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9    # "almListSize":I
    .end local v10    # "curTimeSkew":J
    .end local v19    # "i":I
    .end local v24    # "time":Landroid/text/format/Time;
    .end local v25    # "timeStr":Ljava/lang/String;
    :cond_181
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    goto/16 :goto_cb

    .line 1687
    :cond_192
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_cb

    .line 1690
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_299

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1692
    .local v22, "now":J
    :goto_1b0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v26, v0

    sub-long v14, v26, v22

    .line 1693
    .local v14, "distanceToAlarm":J
    const-wide/32 v26, 0x325aa0

    cmp-long v26, v14, v26

    if-ltz v26, :cond_29f

    const-wide/32 v5, 0xea60

    .line 1694
    .local v5, "SYNC_TOLERANCE_VALUE":J
    :goto_1c2
    long-to-double v0, v14

    move-wide/from16 v26, v0

    long-to-double v0, v5

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    mul-long v16, v26, v5

    .line 1697
    .local v16, "distanceToAlarmRounded":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.android.email"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_30e

    .line 1698
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->getActiveEmailAccountsCount()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    cmp-long v26, v26, v28

    if-nez v26, :cond_2a3

    .line 1699
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v26

    if-eqz v26, :cond_1f9

    const-string v26, "AlarmManager"

    const-string v27, " Email : 1 active account"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_1f9
    :goto_1f9
    const-wide/32 v26, 0xdbba00

    cmp-long v26, v16, v26

    if-gtz v26, :cond_cb

    const-wide/32 v26, 0x493e0

    cmp-long v26, v16, v26

    if-ltz v26, :cond_cb

    const-wide/32 v26, 0x493e0

    rem-long v26, v16, v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_cb

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1727
    new-instance v21, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    .line 1728
    .local v21, "newAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 1729
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1730
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    .line 1731
    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1732
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1735
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto/16 :goto_cb

    .line 1690
    .end local v5    # "SYNC_TOLERANCE_VALUE":J
    .end local v14    # "distanceToAlarm":J
    .end local v16    # "distanceToAlarmRounded":J
    .end local v21    # "newAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v22    # "now":J
    :cond_299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    goto/16 :goto_1b0

    .line 1693
    .restart local v14    # "distanceToAlarm":J
    .restart local v22    # "now":J
    :cond_29f
    const-wide/16 v5, 0x2710

    goto/16 :goto_1c2

    .line 1701
    .restart local v5    # "SYNC_TOLERANCE_VALUE":J
    .restart local v16    # "distanceToAlarmRounded":J
    :cond_2a3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v26, v26, v28

    if-eqz v26, :cond_373

    .line 1702
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    .line 1703
    .local v12, "differenceBwAlarmsOfEmail":J
    const-wide/16 v26, 0x1388

    cmp-long v26, v12, v26

    if-gtz v26, :cond_1f9

    .line 1704
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v26

    if-eqz v26, :cond_2f1

    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " Email : Detected ID("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_2f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->getRepeatInterval()J

    move-result-wide v16

    goto/16 :goto_1f9

    .line 1712
    .end local v12    # "differenceBwAlarmsOfEmail":J
    :cond_30e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.google.android.gsf"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f9

    .line 1714
    const-wide/32 v26, 0x124f80

    cmp-long v26, v16, v26

    if-lez v26, :cond_1f9

    .line 1715
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x41224f8000000000L

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x927c0

    mul-long v16, v26, v28

    goto/16 :goto_1f9

    .line 1748
    .end local v5    # "SYNC_TOLERANCE_VALUE":J
    .end local v14    # "distanceToAlarm":J
    .end local v16    # "distanceToAlarmRounded":J
    .end local v22    # "now":J
    .restart local v7    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v8    # "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v9    # "almListSize":I
    .restart local v10    # "curTimeSkew":J
    .restart local v18    # "i":I
    .restart local v24    # "time":Landroid/text/format/Time;
    :cond_343
    const-wide/16 v26, 0x0

    goto/16 :goto_110

    .line 1752
    .end local v7    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v18    # "i":I
    .end local v24    # "time":Landroid/text/format/Time;
    .restart local v19    # "i":I
    :cond_347
    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " GCD("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "):"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    .end local v8    # "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9    # "almListSize":I
    .end local v10    # "curTimeSkew":J
    .end local v19    # "i":I
    :cond_373
    return-void
.end method

.method public timeToNextRepeatingAlarmLocked(J)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 28
    .param p1, "interval"    # J

    .prologue
    .line 1862
    const-wide v13, 0x7fffffffffffffffL

    .line 1863
    .local v13, "nextAlarm":J
    const-wide v15, 0x7fffffffffffffffL

    .line 1864
    .local v15, "nextAlarmWithSameInterval":J
    const/4 v4, 0x0

    .line 1865
    .local v4, "alarmResult":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v5, 0x0

    .line 1867
    .local v5, "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1868
    .local v3, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v3, :cond_dd

    .line 1869
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1870
    .local v6, "almListSize":I
    if-lez v6, :cond_dd

    .line 1871
    const/4 v11, 0x0

    .line 1872
    .local v11, "j":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1873
    .local v17, "nowRtc":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    sub-long v7, v21, v23

    .line 1874
    .local v7, "curTimeSkew":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v21

    cmp-long v21, p1, v21

    if-nez v21, :cond_79

    const/4 v9, 0x1

    .local v9, "isIntSameAsGcd":Z
    :goto_36
    move v12, v11

    .line 1876
    .end local v11    # "j":I
    .local v12, "j":I
    :goto_37
    if-ge v12, v6, :cond_dd

    .line 1877
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1878
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_53

    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v21, v0

    if-nez v21, :cond_7b

    :cond_53
    const/4 v10, 0x1

    .line 1879
    .local v10, "isRtc":Z
    :goto_54
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v23, v0

    if-eqz v10, :cond_7d

    const-wide/16 v21, 0x0

    :goto_5c
    add-long v19, v23, v21

    .line 1880
    .local v19, "when":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v21

    add-long v21, v21, v19

    cmp-long v21, v17, v21

    if-gez v21, :cond_ca

    .line 1882
    if-eqz v9, :cond_80

    .line 1883
    cmp-long v21, v19, v13

    if-gez v21, :cond_77

    .line 1884
    move-wide/from16 v13, v19

    .line 1885
    move-object v4, v2

    :cond_77
    :goto_77
    move v12, v11

    .line 1914
    .end local v11    # "j":I
    .restart local v12    # "j":I
    goto :goto_37

    .line 1874
    .end local v2    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "isIntSameAsGcd":Z
    .end local v10    # "isRtc":Z
    .end local v12    # "j":I
    .end local v19    # "when":J
    .restart local v11    # "j":I
    :cond_79
    const/4 v9, 0x0

    goto :goto_36

    .line 1878
    .restart local v2    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v9    # "isIntSameAsGcd":Z
    :cond_7b
    const/4 v10, 0x0

    goto :goto_54

    .restart local v10    # "isRtc":Z
    :cond_7d
    move-wide/from16 v21, v7

    .line 1879
    goto :goto_5c

    .line 1890
    .restart local v19    # "when":J
    :cond_80
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_77

    .line 1891
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, p1

    if-nez v21, :cond_9a

    .line 1892
    cmp-long v21, v19, v15

    if-gez v21, :cond_77

    .line 1893
    move-wide/from16 v15, v19

    .line 1894
    move-object v5, v2

    goto :goto_77

    .line 1897
    :cond_9a
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, p1

    if-lez v21, :cond_ae

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    rem-long v21, v21, p1

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_c2

    :cond_ae
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, p1

    if-gez v21, :cond_77

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    rem-long v21, p1, v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_77

    .line 1899
    :cond_c2
    cmp-long v21, v19, v13

    if-gez v21, :cond_77

    .line 1900
    move-wide/from16 v13, v19

    .line 1901
    move-object v4, v2

    goto :goto_77

    .line 1909
    :cond_ca
    const-wide/32 v21, 0x2932e00

    add-long v21, v21, v19

    cmp-long v21, v21, v17

    if-gez v21, :cond_77

    .line 1910
    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1911
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_77

    .line 1919
    .end local v2    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v6    # "almListSize":I
    .end local v7    # "curTimeSkew":J
    .end local v9    # "isIntSameAsGcd":Z
    .end local v10    # "isRtc":Z
    .end local v11    # "j":I
    .end local v17    # "nowRtc":J
    .end local v19    # "when":J
    :cond_dd
    if-eqz v5, :cond_e0

    move-object v4, v5

    .line 1921
    :cond_e0
    return-object v4
.end method

.method public updateEmailSyncStatusLocked(JJ[J)V
    .registers 29
    .param p1, "curAccountd"    # J
    .param p3, "alarmTriggerTime"    # J
    .param p5, "emailAccountInfos"    # [J

    .prologue
    .line 2111
    const/4 v11, 0x0

    .line 2112
    .local v11, "accountInfoIndex":I
    move-object/from16 v0, p5

    array-length v13, v0

    .line 2113
    .local v13, "accountInfoLimit":I
    const/4 v10, 0x2

    .line 2116
    .local v10, "ACCOUNT_INFO_UNIT_LENGTH":I
    const/4 v11, 0x0

    .line 2117
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_42

    .line 2118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "accountInfoIndex":I
    .local v12, "accountInfoIndex":I
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    .line 2119
    .local v2, "eai":Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    const-wide/16 v21, -0x1

    cmp-long v3, v8, v21

    if-eqz v3, :cond_40

    .line 2120
    const/16 v18, 0x0

    .line 2121
    .local v18, "found":Z
    const/4 v14, 0x0

    .line 2122
    .local v14, "aii":I
    :goto_27
    div-int/lit8 v3, v13, 0x2

    if-ge v14, v3, :cond_3b

    .line 2123
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "aii":I
    .local v15, "aii":I
    mul-int/lit8 v3, v14, 0x2

    aget-wide v4, p5, v3

    .line 2124
    .local v4, "accountId":J
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_39

    const/16 v18, 0x1

    :cond_39
    move v14, v15

    .line 2125
    .end local v15    # "aii":I
    .restart local v14    # "aii":I
    goto :goto_27

    .line 2126
    .end local v4    # "accountId":J
    :cond_3b
    if-nez v18, :cond_40

    # invokes: Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->clear()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->access$3600(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;)V

    .end local v14    # "aii":I
    .end local v18    # "found":Z
    :cond_40
    move v11, v12

    .line 2128
    .end local v12    # "accountInfoIndex":I
    .restart local v11    # "accountInfoIndex":I
    goto :goto_6

    .line 2130
    .end local v2    # "eai":Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    :cond_42
    const/4 v11, 0x0

    .line 2131
    const-wide v8, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move v12, v11

    .line 2132
    .end local v11    # "accountInfoIndex":I
    .restart local v12    # "accountInfoIndex":I
    :cond_4d
    :goto_4d
    if-ge v12, v13, :cond_1fa

    .line 2133
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "accountInfoIndex":I
    .restart local v11    # "accountInfoIndex":I
    aget-wide v4, p5, v12

    .line 2134
    .restart local v4    # "accountId":J
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "accountInfoIndex":I
    .restart local v12    # "accountInfoIndex":I
    aget-wide v6, p5, v11

    .line 2138
    .local v6, "prevSync":J
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-ltz v3, :cond_4d

    .line 2140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v4, v8

    if-ltz v3, :cond_1e9

    .line 2142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    long-to-int v8, v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2143
    :goto_75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    long-to-int v8, v8

    if-ge v3, v8, :cond_92

    .line 2144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;-><init>(Lcom/android/server/AlarmManagerService$SyncScheduler;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 2146
    :cond_92
    new-instance v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;-><init>(Lcom/android/server/AlarmManagerService$SyncScheduler;JJJ)V

    .line 2147
    .restart local v2    # "eai":Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    long-to-int v8, v4

    invoke-virtual {v3, v8, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2154
    :goto_a3
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_ac

    .line 2155
    # invokes: Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->setId(J)V
    invoke-static {v2, v4, v5}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->access$3700(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;J)V

    .line 2160
    :cond_ac
    const-wide/16 v19, 0x0

    .line 2161
    .local v19, "newInterval":J
    cmp-long v3, p1, v4

    if-nez v3, :cond_1f6

    .line 2162
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    const-wide/16 v21, 0x1

    add-long v8, v8, v21

    iput-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    .line 2164
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    const-wide/16 v21, 0x1

    cmp-long v3, v8, v21

    if-ltz v3, :cond_15a

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    const-wide/16 v21, 0x2

    cmp-long v3, v8, v21

    if-ltz v3, :cond_15a

    .line 2165
    sub-long v8, p3, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 2166
    .local v16, "distance":J
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v3

    if-eqz v3, :cond_fa

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(Email ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") interval: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    :cond_fa
    move-wide/from16 v0, v16

    long-to-double v8, v0

    const-wide v21, 0x40c7700000000000L

    div-double v8, v8, v21

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    const-wide/16 v21, 0x2ee0

    mul-long v16, v8, v21

    .line 2170
    const-wide/32 v8, 0x493e0

    cmp-long v3, v16, v8

    if-ltz v3, :cond_15a

    const-wide/32 v8, 0x493e0

    rem-long v8, v16, v8

    const-wide/16 v21, 0x0

    cmp-long v3, v8, v21

    if-nez v3, :cond_15a

    .line 2172
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v3

    if-eqz v3, :cond_158

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(Email ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") interval: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :cond_158
    move-wide/from16 v19, v16

    .line 2182
    .end local v16    # "distance":J
    :cond_15a
    :goto_15a
    move-wide/from16 v0, v19

    # invokes: Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->update(JJ)V
    invoke-static {v2, v6, v7, v0, v1}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->access$3800(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;JJ)V

    .line 2185
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    const-wide/16 v21, 0x0

    cmp-long v3, v8, v21

    if-lez v3, :cond_1bd

    .line 2186
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move-wide/from16 v21, v0

    cmp-long v3, v8, v21

    if-gez v3, :cond_1bd

    .line 2187
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_1bd

    .line 2188
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    .line 2189
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    .line 2190
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v3

    if-eqz v3, :cond_1bd

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mEmailIdForNextSync: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mEmailNextSyncTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    :cond_1bd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    long-to-int v8, v4

    invoke-virtual {v3, v8, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2197
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v3

    if-eqz v3, :cond_4d

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 2150
    .end local v2    # "eai":Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    .end local v19    # "newInterval":J
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    long-to-int v8, v4

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    .restart local v2    # "eai":Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    goto/16 :goto_a3

    .line 2178
    .restart local v19    # "newInterval":J
    :cond_1f6
    const-wide/16 v19, 0x0

    goto/16 :goto_15a

    .line 2199
    .end local v2    # "eai":Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    .end local v4    # "accountId":J
    .end local v6    # "prevSync":J
    .end local v19    # "newInterval":J
    :cond_1fa
    return-void
.end method
