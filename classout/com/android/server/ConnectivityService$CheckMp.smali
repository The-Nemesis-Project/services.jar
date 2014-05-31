.class Lcom/android/server/ConnectivityService$CheckMp;
.super Landroid/os/AsyncTask;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckMp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$CheckMp$CallBack;,
        Lcom/android/server/ConnectivityService$CheckMp$CheckMpHostnameVerifier;,
        Lcom/android/server/ConnectivityService$CheckMp$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/ConnectivityService$CheckMp$Params;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECKMP_TAG:Ljava/lang/String; = "CheckMp"

.field private static final MAX_LOOPS:I = 0x4

.field public static final MAX_TIMEOUT_MS:I = 0xea60

.field private static final NET_ERROR_SLEEP_SEC:I = 0x3

.field private static final NET_ROUTE_ESTABLISHMENT_SLEEP_SEC:I = 0x3

.field private static final POLLING_SLEEP_SEC:I = 0x1

.field private static final SOCKET_TIMEOUT_MS:I = 0x1388

.field private static mTestingFailures:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCs:Lcom/android/server/ConnectivityService;

.field private mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cs"    # Lcom/android/server/ConnectivityService;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6616
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6617
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_26

    .line 6618
    const-string v2, "persist.checkmp.testfailures"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_24

    :goto_11
    sput-boolean v0, Lcom/android/server/ConnectivityService$CheckMp;->mTestingFailures:Z

    .line 6624
    :goto_13
    iput-object p1, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    .line 6625
    iput-object p2, p0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    .line 6628
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    .line 6630
    return-void

    :cond_24
    move v0, v1

    .line 6618
    goto :goto_11

    .line 6621
    :cond_26
    sput-boolean v1, Lcom/android/server/ConnectivityService$CheckMp;->mTestingFailures:Z

    goto :goto_13
.end method

.method static synthetic access$5200(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 6532
    invoke-static {p0}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    return-void
.end method

.method private inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 9
    .param p1, "addresses"    # [Ljava/net/InetAddress;

    .prologue
    .line 6936
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 6937
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 6938
    .local v2, "firstTime":Z
    move-object v1, p1

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v4, :cond_1c

    aget-object v0, v1, v3

    .line 6939
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v2, :cond_16

    .line 6940
    const/4 v2, 0x0

    .line 6944
    :goto_10
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 6938
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 6942
    :cond_16
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 6946
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_1c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private declared-synchronized isMobileOk(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .registers 42
    .param p1, "params"    # Lcom/android/server/ConnectivityService$CheckMp$Params;

    .prologue
    .line 6651
    monitor-enter p0

    const/16 v35, 0x0

    :try_start_3
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 6652
    .local v29, "result":Ljava/lang/Integer;
    # getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$5300(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 6653
    .local v26, "orgUri":Landroid/net/Uri;
    new-instance v27, Ljava/util/Random;

    invoke-direct/range {v27 .. v27}, Ljava/util/Random;-><init>()V

    .line 6654
    .local v27, "rand":Ljava/util/Random;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    .line 6656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v35

    if-nez v35, :cond_4c

    .line 6657
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 6658
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X not mobile capable result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_1fa

    move-object/from16 v35, v29

    .line 6919
    :goto_4a
    monitor-exit p0

    return-object v35

    .line 6664
    :cond_4c
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v35

    const/16 v36, 0x0

    aget-object v23, v35, v36

    check-cast v23, Landroid/net/MobileDataStateTracker;

    .line 6666
    .local v23, "mdstDefault":Landroid/net/MobileDataStateTracker;
    invoke-virtual/range {v23 .. v23}, Landroid/net/MobileDataStateTracker;->isProvisioningNetwork()Z

    move-result v16

    .line 6667
    .local v16, "isDefaultProvisioning":Z
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: isDefaultProvisioning="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v35

    const/16 v36, 0x5

    aget-object v24, v35, v36

    check-cast v24, Landroid/net/MobileDataStateTracker;

    .line 6671
    .local v24, "mdstHipri":Landroid/net/MobileDataStateTracker;
    invoke-virtual/range {v24 .. v24}, Landroid/net/MobileDataStateTracker;->isProvisioningNetwork()Z

    move-result v17

    .line 6672
    .local v17, "isHipriProvisioning":Z
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: isHipriProvisioning="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6674
    if-nez v16, :cond_ac

    if-eqz v17, :cond_d0

    .line 6675
    :cond_ac
    const/16 v35, 0x5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 6676
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X default || hipri is provisioning result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_4c .. :try_end_cc} :catchall_1fa

    move-object/from16 v35, v29

    .line 6677
    goto/16 :goto_4a

    .line 6682
    :cond_d0
    :try_start_d0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    # getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mTimeOutMs:J
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$5400(Lcom/android/server/ConnectivityService$CheckMp$Params;)J

    move-result-wide v37

    add-long v11, v35, v37

    .line 6684
    .local v11, "endTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    # invokes: Lcom/android/server/ConnectivityService;->isMobileDataStateTrackerReady()Z
    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;)Z

    move-result v35

    if-nez v35, :cond_10f

    .line 6686
    const-string v35, "isMobileOk: mdst is not ready"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6687
    :goto_eb
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_10f

    .line 6688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    # invokes: Lcom/android/server/ConnectivityService;->isMobileDataStateTrackerReady()Z
    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;)Z

    move-result v35

    if-eqz v35, :cond_1a7

    .line 6691
    const-string v35, "isMobileOk: mdst ready, enable fail fast of mobile data"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;I)V

    .line 6699
    :cond_10f
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: start hipri url="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    # getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$5300(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6702
    new-instance v9, Landroid/os/Binder;

    invoke-direct {v9}, Landroid/os/Binder;-><init>()V

    .line 6703
    .local v9, "binder":Landroid/os/Binder;
    :goto_12e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_159

    .line 6704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "enableHIPRI"

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/ConnectivityService;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v30

    .line 6706
    .local v30, "ret":I
    if-eqz v30, :cond_154

    const/16 v35, 0x1

    move/from16 v0, v30

    move/from16 v1, v35

    if-ne v0, v1, :cond_1fd

    .line 6708
    :cond_154
    const-string v35, "isMobileOk: hipri started"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6717
    .end local v30    # "ret":I
    :cond_159
    :goto_159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_15c
    .catchall {:try_start_d0 .. :try_end_15c} :catchall_1ae

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_704

    .line 6722
    :try_start_161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    .line 6724
    .local v32, "state":Landroid/net/NetworkInfo$State;
    sget-object v35, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_20a

    .line 6726
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: not connected ni="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v36, v0

    const/16 v37, 0x5

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6729
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    .line 6730
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_1a5} :catch_49c
    .catchall {:try_start_161 .. :try_end_1a5} :catchall_1ae

    move-result-object v29

    goto :goto_159

    .line 6695
    .end local v9    # "binder":Landroid/os/Binder;
    .end local v32    # "state":Landroid/net/NetworkInfo$State;
    :cond_1a7
    const/16 v35, 0x1

    :try_start_1a9
    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_1ac
    .catchall {:try_start_1a9 .. :try_end_1ac} :catchall_1ae

    goto/16 :goto_eb

    .line 6896
    .end local v11    # "endTime":J
    :catchall_1ae
    move-exception v35

    :try_start_1af
    const-string v36, "isMobileOk: F stop hipri"

    invoke-static/range {v36 .. v36}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v36 .. v37}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;I)V

    .line 6898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string v38, "enableHIPRI"

    invoke-virtual/range {v36 .. v38}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    const-wide/16 v38, 0x1388

    add-long v11, v36, v38

    .line 6904
    .restart local v11    # "endTime":J
    :cond_1d4
    :goto_1d4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    cmp-long v36, v36, v11

    if-gez v36, :cond_754

    .line 6905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v36, v0

    const/16 v37, 0x5

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    .line 6907
    .restart local v32    # "state":Landroid/net/NetworkInfo$State;
    sget-object v36, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_1d4

    .line 6912
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_1f9
    .catchall {:try_start_1af .. :try_end_1f9} :catchall_1fa

    goto :goto_1d4

    .line 6651
    .end local v11    # "endTime":J
    .end local v16    # "isDefaultProvisioning":Z
    .end local v17    # "isHipriProvisioning":Z
    .end local v23    # "mdstDefault":Landroid/net/MobileDataStateTracker;
    .end local v24    # "mdstHipri":Landroid/net/MobileDataStateTracker;
    .end local v26    # "orgUri":Landroid/net/Uri;
    .end local v27    # "rand":Ljava/util/Random;
    .end local v29    # "result":Ljava/lang/Integer;
    .end local v32    # "state":Landroid/net/NetworkInfo$State;
    :catchall_1fa
    move-exception v35

    monitor-exit p0

    throw v35

    .line 6712
    .restart local v9    # "binder":Landroid/os/Binder;
    .restart local v11    # "endTime":J
    .restart local v16    # "isDefaultProvisioning":Z
    .restart local v17    # "isHipriProvisioning":Z
    .restart local v23    # "mdstDefault":Landroid/net/MobileDataStateTracker;
    .restart local v24    # "mdstHipri":Landroid/net/MobileDataStateTracker;
    .restart local v26    # "orgUri":Landroid/net/Uri;
    .restart local v27    # "rand":Ljava/util/Random;
    .restart local v29    # "result":Ljava/lang/Integer;
    .restart local v30    # "ret":I
    :cond_1fd
    const/16 v35, 0x0

    :try_start_1ff
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 6713
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_208
    .catchall {:try_start_1ff .. :try_end_208} :catchall_1ae

    goto/16 :goto_12e

    .line 6735
    .end local v30    # "ret":I
    .restart local v32    # "state":Landroid/net/NetworkInfo$State;
    :cond_20a
    :try_start_20a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v35

    const/16 v36, 0x5

    aget-object v22, v35, v36

    check-cast v22, Landroid/net/MobileDataStateTracker;

    .line 6737
    .local v22, "mdst":Landroid/net/MobileDataStateTracker;
    invoke-virtual/range {v22 .. v22}, Landroid/net/MobileDataStateTracker;->isProvisioningNetwork()Z

    move-result v35

    if-eqz v35, :cond_2a9

    .line 6738
    const/16 v35, 0x5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 6739
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X isProvisioningNetwork result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_240
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_240} :catch_49c
    .catchall {:try_start_20a .. :try_end_240} :catchall_1ae

    .line 6896
    :try_start_240
    const-string v35, "isMobileOk: F stop hipri"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;I)V

    .line 6898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "enableHIPRI"

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    const-wide/16 v37, 0x1388

    add-long v11, v35, v37

    .line 6904
    :cond_265
    :goto_265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_28b

    .line 6905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    .line 6907
    sget-object v35, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_265

    .line 6912
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    goto :goto_265

    .line 6917
    :cond_28b
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_2a5
    .catchall {:try_start_240 .. :try_end_2a5} :catchall_1fa

    move-object/from16 v35, v29

    .line 6740
    goto/16 :goto_4a

    .line 6742
    :cond_2a9
    :try_start_2a9
    const-string v35, "isMobileOk: isProvisioningNetwork is false, continue"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_2a9 .. :try_end_2ae} :catch_49c
    .catchall {:try_start_2a9 .. :try_end_2ae} :catchall_1ae

    .line 6752
    :try_start_2ae
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_2b5
    .catch Ljava/net/UnknownHostException; {:try_start_2ae .. :try_end_2b5} :catch_339
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2b5} :catch_49c
    .catchall {:try_start_2ae .. :try_end_2b5} :catchall_1ae

    move-result-object v7

    .line 6758
    .local v7, "addresses":[Ljava/net/InetAddress;
    :try_start_2b6
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: addresses="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v21

    .line 6763
    .local v21, "lp":Landroid/net/LinkProperties;
    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v19

    .line 6764
    .local v19, "linkHasIpv4":Z
    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->hasIPv6Address()Z

    move-result v20

    .line 6765
    .local v20, "linkHasIpv6":Z
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: linkHasIpv4="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " linkHasIpv6="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6768
    new-instance v34, Ljava/util/ArrayList;

    array-length v0, v7

    move/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Ljava/util/ArrayList;-><init>(I)V

    .line 6771
    .local v34, "validAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    move-object v8, v7

    .local v8, "arr$":[Ljava/net/InetAddress;
    array-length v0, v8

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_31b
    move/from16 v0, v18

    if-ge v15, v0, :cond_3c3

    aget-object v4, v8, v15

    .line 6772
    .local v4, "addr":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v35, v0

    if-eqz v35, :cond_329

    if-nez v19, :cond_331

    :cond_329
    instance-of v0, v4, Ljava/net/Inet6Address;

    move/from16 v35, v0

    if-eqz v35, :cond_336

    if-eqz v20, :cond_336

    .line 6774
    :cond_331
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6771
    :cond_336
    add-int/lit8 v15, v15, 0x1

    goto :goto_31b

    .line 6753
    .end local v4    # "addr":Ljava/net/InetAddress;
    .end local v7    # "addresses":[Ljava/net/InetAddress;
    .end local v8    # "arr$":[Ljava/net/InetAddress;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "linkHasIpv4":Z
    .end local v20    # "linkHasIpv6":Z
    .end local v21    # "lp":Landroid/net/LinkProperties;
    .end local v34    # "validAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :catch_339
    move-exception v10

    .line 6754
    .local v10, "e":Ljava/net/UnknownHostException;
    const/16 v35, 0x2

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 6755
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X UnknownHostException result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_35a
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_35a} :catch_49c
    .catchall {:try_start_2b6 .. :try_end_35a} :catchall_1ae

    .line 6896
    :try_start_35a
    const-string v35, "isMobileOk: F stop hipri"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;I)V

    .line 6898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "enableHIPRI"

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    const-wide/16 v37, 0x1388

    add-long v11, v35, v37

    .line 6904
    :cond_37f
    :goto_37f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_3a5

    .line 6905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    .line 6907
    sget-object v35, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_37f

    .line 6912
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    goto :goto_37f

    .line 6917
    :cond_3a5
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_3bf
    .catchall {:try_start_35a .. :try_end_3bf} :catchall_1fa

    move-object/from16 v35, v29

    .line 6756
    goto/16 :goto_4a

    .line 6778
    .end local v10    # "e":Ljava/net/UnknownHostException;
    .restart local v7    # "addresses":[Ljava/net/InetAddress;
    .restart local v8    # "arr$":[Ljava/net/InetAddress;
    .restart local v15    # "i$":I
    .restart local v18    # "len$":I
    .restart local v19    # "linkHasIpv4":Z
    .restart local v20    # "linkHasIpv6":Z
    .restart local v21    # "lp":Landroid/net/LinkProperties;
    .restart local v34    # "validAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_3c3
    :try_start_3c3
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v35

    if-nez v35, :cond_41a

    .line 6779
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3ce
    .catch Ljava/lang/Exception; {:try_start_3c3 .. :try_end_3ce} :catch_49c
    .catchall {:try_start_3c3 .. :try_end_3ce} :catchall_1ae

    move-result-object v35

    .line 6896
    :try_start_3cf
    const-string v36, "isMobileOk: F stop hipri"

    invoke-static/range {v36 .. v36}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v36 .. v37}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;I)V

    .line 6898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string v38, "enableHIPRI"

    invoke-virtual/range {v36 .. v38}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    const-wide/16 v38, 0x1388

    add-long v11, v36, v38

    .line 6904
    :cond_3f4
    :goto_3f4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    cmp-long v36, v36, v11

    if-gez v36, :cond_78d

    .line 6905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v36, v0

    const/16 v37, 0x5

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    .line 6907
    sget-object v36, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_3f4

    .line 6912
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_419
    .catchall {:try_start_3cf .. :try_end_419} :catchall_1fa

    goto :goto_3f4

    .line 6782
    :cond_41a
    const/4 v5, 0x0

    .local v5, "addrTried":I
    move v6, v5

    .line 6786
    .end local v5    # "addrTried":I
    .local v6, "addrTried":I
    :goto_41c
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "addrTried":I
    .restart local v5    # "addrTried":I
    const/16 v35, 0x4

    move/from16 v0, v35

    if-lt v6, v0, :cond_48e

    .line 6787
    :try_start_424
    const-string v35, "isMobileOk: too many loops tried - giving up"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6887
    :goto_429
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X loops|timed out result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_443
    .catch Ljava/lang/Exception; {:try_start_424 .. :try_end_443} :catch_49c
    .catchall {:try_start_424 .. :try_end_443} :catchall_1ae

    .line 6896
    :try_start_443
    const-string v35, "isMobileOk: F stop hipri"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;I)V

    .line 6898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "enableHIPRI"

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    const-wide/16 v37, 0x1388

    add-long v11, v35, v37

    .line 6904
    :cond_468
    :goto_468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_6e6

    .line 6905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    .line 6907
    sget-object v35, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_468

    .line 6912
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_48d
    .catchall {:try_start_443 .. :try_end_48d} :catchall_1fa

    goto :goto_468

    .line 6790
    :cond_48e
    :try_start_48e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-ltz v35, :cond_4b7

    .line 6791
    const-string v35, "isMobileOk: spend too much time - giving up"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_49b
    .catch Ljava/lang/Exception; {:try_start_48e .. :try_end_49b} :catch_49c
    .catchall {:try_start_48e .. :try_end_49b} :catchall_1ae

    goto :goto_429

    .line 6889
    .end local v5    # "addrTried":I
    .end local v7    # "addresses":[Ljava/net/InetAddress;
    .end local v8    # "arr$":[Ljava/net/InetAddress;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "linkHasIpv4":Z
    .end local v20    # "linkHasIpv6":Z
    .end local v21    # "lp":Landroid/net/LinkProperties;
    .end local v22    # "mdst":Landroid/net/MobileDataStateTracker;
    .end local v32    # "state":Landroid/net/NetworkInfo$State;
    .end local v34    # "validAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :catch_49c
    move-exception v10

    .line 6890
    .local v10, "e":Ljava/lang/Exception;
    :try_start_49d
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: Exception e="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_4b5
    .catchall {:try_start_49d .. :try_end_4b5} :catchall_1ae

    goto/16 :goto_159

    .line 6795
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "addrTried":I
    .restart local v7    # "addresses":[Ljava/net/InetAddress;
    .restart local v8    # "arr$":[Ljava/net/InetAddress;
    .restart local v15    # "i$":I
    .restart local v18    # "len$":I
    .restart local v19    # "linkHasIpv4":Z
    .restart local v20    # "linkHasIpv6":Z
    .restart local v21    # "lp":Landroid/net/LinkProperties;
    .restart local v22    # "mdst":Landroid/net/MobileDataStateTracker;
    .restart local v32    # "state":Landroid/net/NetworkInfo$State;
    .restart local v34    # "validAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_4b7
    :try_start_4b7
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v35

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/net/InetAddress;

    .line 6799
    .local v14, "hostAddr":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual {v14}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v37

    const/16 v38, 0x0

    invoke-virtual/range {v35 .. v38}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[BLjava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5d2

    .line 6802
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: wait to establish route to hostAddr="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6804
    const/16 v35, 0x3

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    .line 6821
    const/16 v35, 0x2

    move/from16 v0, v35

    if-gt v5, v0, :cond_5f2

    const-string v31, "https"

    .line 6822
    .local v31, "scheme":Ljava/lang/String;
    :goto_502
    new-instance v25, Ljava/net/URL;

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6824
    .local v25, "newUrl":Ljava/net/URL;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: newUrl="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_531
    .catch Ljava/lang/Exception; {:try_start_4b7 .. :try_end_531} :catch_49c
    .catchall {:try_start_4b7 .. :try_end_531} :catchall_1ae

    .line 6826
    const/16 v33, 0x0

    .line 6829
    .local v33, "urlConn":Ljava/net/HttpURLConnection;
    :try_start_533
    sget-object v35, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v35

    move-object/from16 v0, v35

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v33, v0

    .line 6831
    const-string v35, "https"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_561

    .line 6832
    move-object/from16 v0, v33

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v35, v0

    new-instance v36, Lcom/android/server/ConnectivityService$CheckMp$CheckMpHostnameVerifier;

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp$CheckMpHostnameVerifier;-><init>(Landroid/net/Uri;)V

    invoke-virtual/range {v35 .. v36}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 6835
    :cond_561
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 6836
    const/16 v35, 0x1388

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6837
    const/16 v35, 0x1388

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 6838
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 6839
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 6842
    const-string v35, "Connection"

    const-string v36, "close"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6843
    invoke-virtual/range {v33 .. v33}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v28

    .line 6846
    .local v28, "responseCode":I
    invoke-virtual/range {v33 .. v33}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .line 6847
    .local v13, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: headers="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6850
    invoke-virtual/range {v33 .. v33}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 6851
    const/16 v33, 0x0

    .line 6853
    sget-boolean v35, Lcom/android/server/ConnectivityService$CheckMp;->mTestingFailures:Z

    if-eqz v35, :cond_5f6

    .line 6855
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 6856
    const-string v35, "isMobileOk: TESTING_FAILURES, pretend no connction"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_5cf
    .catch Ljava/lang/Exception; {:try_start_533 .. :try_end_5cf} :catch_6b8
    .catchall {:try_start_533 .. :try_end_5cf} :catchall_1ae

    move v6, v5

    .line 6857
    .end local v5    # "addrTried":I
    .restart local v6    # "addrTried":I
    goto/16 :goto_41c

    .line 6806
    .end local v6    # "addrTried":I
    .end local v13    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v25    # "newUrl":Ljava/net/URL;
    .end local v28    # "responseCode":I
    .end local v31    # "scheme":Ljava/lang/String;
    .end local v33    # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v5    # "addrTried":I
    :cond_5d2
    :try_start_5d2
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: could not establish route to hostAddr="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6809
    const/16 v35, 0x3

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    move v6, v5

    .line 6810
    .end local v5    # "addrTried":I
    .restart local v6    # "addrTried":I
    goto/16 :goto_41c

    .line 6821
    .end local v6    # "addrTried":I
    .restart local v5    # "addrTried":I
    :cond_5f2
    const-string v31, "http"
    :try_end_5f4
    .catch Ljava/lang/Exception; {:try_start_5d2 .. :try_end_5f4} :catch_49c
    .catchall {:try_start_5d2 .. :try_end_5f4} :catchall_1ae

    goto/16 :goto_502

    .line 6860
    .restart local v13    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v25    # "newUrl":Ljava/net/URL;
    .restart local v28    # "responseCode":I
    .restart local v31    # "scheme":Ljava/lang/String;
    .restart local v33    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_5f6
    const/16 v35, 0xcc

    move/from16 v0, v28

    move/from16 v1, v35

    if-ne v0, v1, :cond_695

    .line 6862
    const/16 v35, 0x1

    :try_start_600
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 6863
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X got expected responseCode="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_62c
    .catch Ljava/lang/Exception; {:try_start_600 .. :try_end_62c} :catch_6b8
    .catchall {:try_start_600 .. :try_end_62c} :catchall_1ae

    .line 6896
    :try_start_62c
    const-string v35, "isMobileOk: F stop hipri"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;I)V

    .line 6898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "enableHIPRI"

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    const-wide/16 v37, 0x1388

    add-long v11, v35, v37

    .line 6904
    :cond_651
    :goto_651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_677

    .line 6905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    .line 6907
    sget-object v35, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_651

    .line 6912
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    goto :goto_651

    .line 6917
    :cond_677
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_691
    .catchall {:try_start_62c .. :try_end_691} :catchall_1fa

    move-object/from16 v35, v29

    .line 6865
    goto/16 :goto_4a

    .line 6870
    :cond_695
    :try_start_695
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: not expected responseCode="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6874
    const/16 v35, 0x4

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6b4
    .catch Ljava/lang/Exception; {:try_start_695 .. :try_end_6b4} :catch_6b8
    .catchall {:try_start_695 .. :try_end_6b4} :catchall_1ae

    move-result-object v29

    move v6, v5

    .line 6886
    .end local v5    # "addrTried":I
    .restart local v6    # "addrTried":I
    goto/16 :goto_41c

    .line 6876
    .end local v6    # "addrTried":I
    .end local v13    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v28    # "responseCode":I
    .restart local v5    # "addrTried":I
    :catch_6b8
    move-exception v10

    .line 6877
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_6b9
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: HttpURLConnection Exception"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6878
    const/16 v35, 0x3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 6879
    if-eqz v33, :cond_6de

    .line 6880
    invoke-virtual/range {v33 .. v33}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 6881
    const/16 v33, 0x0

    .line 6883
    :cond_6de
    const/16 v35, 0x3

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_6e3
    .catch Ljava/lang/Exception; {:try_start_6b9 .. :try_end_6e3} :catch_49c
    .catchall {:try_start_6b9 .. :try_end_6e3} :catchall_1ae

    move v6, v5

    .line 6884
    .end local v5    # "addrTried":I
    .restart local v6    # "addrTried":I
    goto/16 :goto_41c

    .line 6917
    .end local v6    # "addrTried":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "hostAddr":Ljava/net/InetAddress;
    .end local v25    # "newUrl":Ljava/net/URL;
    .end local v31    # "scheme":Ljava/lang/String;
    .end local v33    # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v5    # "addrTried":I
    :cond_6e6
    :try_start_6e6
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_700
    .catchall {:try_start_6e6 .. :try_end_700} :catchall_1fa

    move-object/from16 v35, v29

    .line 6888
    goto/16 :goto_4a

    .line 6894
    .end local v5    # "addrTried":I
    .end local v7    # "addresses":[Ljava/net/InetAddress;
    .end local v8    # "arr$":[Ljava/net/InetAddress;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "linkHasIpv4":Z
    .end local v20    # "linkHasIpv6":Z
    .end local v21    # "lp":Landroid/net/LinkProperties;
    .end local v22    # "mdst":Landroid/net/MobileDataStateTracker;
    .end local v32    # "state":Landroid/net/NetworkInfo$State;
    .end local v34    # "validAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_704
    :try_start_704
    const-string v35, "isMobileOk: timed out"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_709
    .catchall {:try_start_704 .. :try_end_709} :catchall_1ae

    .line 6896
    :try_start_709
    const-string v35, "isMobileOk: F stop hipri"

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;I)V

    .line 6898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "enableHIPRI"

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    const-wide/16 v37, 0x1388

    add-long v11, v35, v37

    .line 6904
    :cond_72e
    :goto_72e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_76f

    .line 6905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    .line 6907
    .restart local v32    # "state":Landroid/net/NetworkInfo$State;
    sget-object v35, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_72e

    .line 6912
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    goto :goto_72e

    .line 6917
    .end local v9    # "binder":Landroid/os/Binder;
    .end local v32    # "state":Landroid/net/NetworkInfo$State;
    :cond_754
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "isMobileOk: X result="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6896
    throw v35

    .line 6917
    .restart local v9    # "binder":Landroid/os/Binder;
    :cond_76f
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v35, v29

    .line 6919
    goto/16 :goto_4a

    .line 6917
    .restart local v7    # "addresses":[Ljava/net/InetAddress;
    .restart local v8    # "arr$":[Ljava/net/InetAddress;
    .restart local v15    # "i$":I
    .restart local v18    # "len$":I
    .restart local v19    # "linkHasIpv4":Z
    .restart local v20    # "linkHasIpv6":Z
    .restart local v21    # "lp":Landroid/net/LinkProperties;
    .restart local v22    # "mdst":Landroid/net/MobileDataStateTracker;
    .restart local v32    # "state":Landroid/net/NetworkInfo$State;
    .restart local v34    # "validAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_78d
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "isMobileOk: X result="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_7a7
    .catchall {:try_start_709 .. :try_end_7a7} :catchall_1fa

    goto/16 :goto_4a
.end method

.method private static log(Ljava/lang/String;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 6979
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CheckMp] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6980
    return-void
.end method

.method private printNetworkInfo()V
    .registers 10

    .prologue
    .line 6950
    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    .line 6951
    .local v1, "hasIccCard":Z
    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    .line 6952
    .local v6, "simState":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasIccCard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6955
    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService;->getAllNetworkInfoEx()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 6956
    .local v5, "ni":[Landroid/net/NetworkInfo;
    if-eqz v5, :cond_6f

    .line 6957
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ni.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6958
    move-object v0, v5

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4e
    if-ge v2, v3, :cond_74

    aget-object v4, v0, v2

    .line 6959
    .local v4, "netInfo":Landroid/net/NetworkInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "netInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6958
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 6962
    .end local v0    # "arr$":[Landroid/net/NetworkInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "netInfo":Landroid/net/NetworkInfo;
    :cond_6f
    const-string v7, "no network info ni=null"

    invoke-static {v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6964
    :cond_74
    return-void
.end method

.method private static sleep(I)V
    .registers 4
    .param p0, "seconds"    # I

    .prologue
    .line 6972
    mul-int/lit16 v1, p0, 0x3e8

    int-to-long v1, v1

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    .line 6976
    :goto_6
    return-void

    .line 6973
    :catch_7
    move-exception v0

    .line 6974
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .registers 3
    .param p1, "params"    # [Lcom/android/server/ConnectivityService$CheckMp$Params;

    .prologue
    .line 6924
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$CheckMp;->isMobileOk(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 6532
    check-cast p1, [Lcom/android/server/ConnectivityService$CheckMp$Params;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$CheckMp;->doInBackground([Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6637
    iget-object v1, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "captive_portal_server"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6639
    .local v0, "server":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 6640
    const-string v0, "clients3.google.com"

    .line 6642
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 6929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6930
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    # getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$5700(Lcom/android/server/ConnectivityService$CheckMp$Params;)Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 6931
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    # getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$5700(Lcom/android/server/ConnectivityService$CheckMp$Params;)Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$CheckMp$CallBack;->onComplete(Ljava/lang/Integer;)V

    .line 6933
    :cond_2b
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6532
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$CheckMp;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
