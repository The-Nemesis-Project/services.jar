.class Lcom/android/server/WifiOffloadService$12;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->getDataUsageforPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field appLaunchCount:I

.field dataUsageThreshold:I

.field statsService:Landroid/net/INetworkStatsService;

.field statsSession:Landroid/net/INetworkStatsSession;

.field template:Landroid/net/NetworkTemplate;

.field final synthetic this$0:Lcom/android/server/WifiOffloadService;

.field totalDataUsage:J

.field uid:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1888
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iput-object p2, p0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1890
    iput-object v2, p0, Lcom/android/server/WifiOffloadService$12;->statsSession:Landroid/net/INetworkStatsSession;

    .line 1891
    iput-object v2, p0, Lcom/android/server/WifiOffloadService$12;->template:Landroid/net/NetworkTemplate;

    .line 1892
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService$12;->totalDataUsage:J

    .line 1893
    iput v3, p0, Lcom/android/server/WifiOffloadService$12;->appLaunchCount:I

    .line 1894
    iput-object v2, p0, Lcom/android/server/WifiOffloadService$12;->statsService:Landroid/net/INetworkStatsService;

    .line 1895
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService$12;->uid:I

    .line 1896
    iput v3, p0, Lcom/android/server/WifiOffloadService$12;->dataUsageThreshold:I

    return-void
.end method

.method private calculateDataUsageforInterface(Landroid/net/NetworkTemplate;)J
    .registers 12
    .param p1, "interfaceTemplate"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1924
    iget v7, p0, Lcom/android/server/WifiOffloadService$12;->uid:I

    iget-object v8, p0, Lcom/android/server/WifiOffloadService$12;->statsSession:Landroid/net/INetworkStatsSession;

    invoke-direct {p0, v7, v8, p1}, Lcom/android/server/WifiOffloadService$12;->getDataUsageForUid(ILandroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    .line 1926
    .local v2, "dataUsage":J
    iget-object v7, p0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/wifi_offload/ExceptionalAppList;->getListOfDependentPackageNamesForDataUsage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1927
    .local v6, "listOfPackagesForDataUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1931
    .local v0, "currentPackage":Ljava/lang/String;
    :try_start_1e
    iget-object v7, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/server/WifiOffloadService;->access$1600(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1932
    .local v1, "currentPackageUid":I
    iget-object v7, p0, Lcom/android/server/WifiOffloadService$12;->statsSession:Landroid/net/INetworkStatsSession;

    invoke-direct {p0, v1, v7, p1}, Lcom/android/server/WifiOffloadService$12;->getDataUsageForUid(ILandroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;)J
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_31} :catch_34

    move-result-wide v7

    add-long/2addr v2, v7

    goto :goto_12

    .line 1934
    .end local v1    # "currentPackageUid":I
    :catch_34
    move-exception v4

    .line 1935
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "WifiOffloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Tried to check data usage for dependencies but failed to find package. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1939
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_54
    return-wide v2
.end method

.method private getDataUsageForUid(ILandroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;)J
    .registers 17
    .param p1, "appUid"    # I
    .param p2, "statsSession"    # Landroid/net/INetworkStatsSession;
    .param p3, "statsTemplate"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1899
    const-wide/16 v6, 0x0

    .line 1900
    .local v6, "dataUsage":J
    const/4 v10, 0x0

    .line 1903
    .local v10, "history":Landroid/net/NetworkStatsHistory;
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p2

    move-object/from16 v1, p3

    move v2, p1

    :try_start_a
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_d} :catch_80
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_a2

    move-result-object v0

    .line 1909
    .end local v10    # "history":Landroid/net/NetworkStatsHistory;
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    :goto_e
    if-eqz v0, :cond_7f

    .line 1910
    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v9

    .line 1912
    .local v9, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v9, :cond_7f

    .line 1913
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received bytes  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1914
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transferred bytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1915
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataUsage for app with uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1916
    iget-wide v1, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v6, v1, v3

    .line 1919
    .end local v9    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_7f
    return-wide v6

    .line 1904
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v10    # "history":Landroid/net/NetworkStatsHistory;
    :catch_80
    move-exception v8

    .line 1905
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Lcom/android/server/WifiOffloadService;->DBG:Z
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_9f

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError in getting UID history "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    move-object v0, v10

    .line 1908
    .end local v10    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v0    # "history":Landroid/net/NetworkStatsHistory;
    goto/16 :goto_e

    .line 1906
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v10    # "history":Landroid/net/NetworkStatsHistory;
    :catch_a2
    move-exception v8

    .line 1907
    .local v8, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/WifiOffloadService;->DBG:Z
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_c5

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get history for uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    move-object v0, v10

    .end local v10    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v0    # "history":Landroid/net/NetworkStatsHistory;
    goto/16 :goto_e
.end method

.method private updateAppLaunchCount()V
    .registers 7

    .prologue
    .line 2067
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2068
    .local v2, "cv":Landroid/content/ContentValues;
    iget v0, p0, Lcom/android/server/WifiOffloadService$12;->appLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService$12;->appLaunchCount:I

    .line 2069
    const-string v0, "launchcount"

    iget v1, p0, Lcom/android/server/WifiOffloadService$12;->appLaunchCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2070
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v0, v0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v1, v1, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiOffloadService$12;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "data_usage"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 1945
    const/4 v7, 0x0

    .line 1947
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v0, v10}, Lcom/android/server/WifiOffloadService;->access$1702(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1951
    :try_start_7
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1600(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1952
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/WifiOffloadService$12;->uid:I

    .line 1953
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP UID == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService$12;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_11b

    .line 1955
    const/4 v8, 0x0

    .line 1957
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_34
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v0, v0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v1, v1, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiOffloadService$12;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "data_usage"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1958
    if-eqz v8, :cond_cb

    .line 1959
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1960
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_99

    .line 1961
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget v1, p0, Lcom/android/server/WifiOffloadService$12;->uid:I

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/WifiOffloadService;->insertDataUsage(ILjava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;ILjava/lang/String;)Z

    .line 1963
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "App lauched for the first time, so dont offload but insert the UID to DB"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1964
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # invokes: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_93} :catch_fc
    .catchall {:try_start_34 .. :try_end_93} :catchall_135

    .line 1980
    if-eqz v8, :cond_98

    .line 1981
    :try_start_95
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_11b

    .line 2064
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_98
    :goto_98
    return-void

    .line 1967
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_99
    :try_start_99
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_cb

    .line 1969
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 1970
    const-string v0, "launchcount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService$12;->appLaunchCount:I

    .line 1971
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch count in DB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService$12;->appLaunchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_cb} :catch_fc
    .catchall {:try_start_99 .. :try_end_cb} :catchall_135

    .line 1980
    :cond_cb
    if-eqz v8, :cond_d0

    .line 1981
    :try_start_cd
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_11b

    .line 1991
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_d0
    :goto_d0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_ec

    :cond_e4
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v0}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 1992
    :cond_ec
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "WiFi is OFF or already connected; dont offload but increase app launch count"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1993
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService$12;->updateAppLaunchCount()V

    .line 1994
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # invokes: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V

    goto :goto_98

    .line 1977
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_fc
    move-exception v9

    .line 1978
    .local v9, "e":Ljava/lang/Exception;
    :try_start_fd
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getDataUsageforPackage for dbHelper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catchall {:try_start_fd .. :try_end_115} :catchall_135

    .line 1980
    if-eqz v8, :cond_d0

    .line 1981
    :try_start_117
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11a} :catch_11b

    goto :goto_d0

    .line 1986
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_11b
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ex in getting uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 1980
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_135
    move-exception v0

    if-eqz v8, :cond_13b

    .line 1981
    :try_start_138
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1980
    :cond_13b
    throw v0
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13c} :catch_11b

    .line 2000
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_13c
    :try_start_13c
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    .line 2001
    const/high16 v0, 0x100000

    const-string v1, "persist.offload.datausage.limit"

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget v2, v2, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WifiOffloadService$12;->dataUsageThreshold:I

    .line 2002
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DATA_USAGE_THRESHOLD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService$12;->dataUsageThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2004
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService$12;->statsService:Landroid/net/INetworkStatsService;

    .line 2005
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->statsService:Landroid/net/INetworkStatsService;
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_178} :catch_1fd

    if-eqz v0, :cond_182

    .line 2007
    :try_start_17a
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->statsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService$12;->statsSession:Landroid/net/INetworkStatsSession;
    :try_end_182
    .catch Landroid/os/RemoteException; {:try_start_17a .. :try_end_182} :catch_249
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_182} :catch_1fd

    .line 2015
    :cond_182
    :goto_182
    :try_start_182
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->statsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_1e2

    .line 2018
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService$12;->calculateDataUsageforInterface(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService$12;->totalDataUsage:J

    .line 2020
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Usage for Wi-fi Interface :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$12;->totalDataUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2021
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Usage per launch count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$12;->totalDataUsage:J

    iget v4, p0, Lcom/android/server/WifiOffloadService$12;->appLaunchCount:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2023
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService$12;->totalDataUsage:J

    iget v2, p0, Lcom/android/server/WifiOffloadService$12;->appLaunchCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/WifiOffloadService$12;->dataUsageThreshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_26a

    .line 2024
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "App\'s datausage exceeds the threshold so Offload"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2025
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiOffloadService;->access$1702(Lcom/android/server/WifiOffloadService;Z)Z

    .line 2043
    :cond_1e2
    :goto_1e2
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService$12;->updateAppLaunchCount()V

    .line 2046
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1700(Lcom/android/server/WifiOffloadService;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 2047
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # invokes: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V

    .line 2048
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->statsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_98

    .line 2049
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->statsSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_1fb} :catch_1fd

    goto/16 :goto_98

    .line 2053
    :catch_1fd
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ex in reading stats "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v0, v10}, Lcom/android/server/WifiOffloadService;->access$1702(Lcom/android/server/WifiOffloadService;Z)Z

    .line 2055
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_21b
    :try_start_21b
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->statsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_224

    .line 2056
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->statsSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_224} :catch_2dc

    .line 2059
    :cond_224
    :goto_224
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify here. canOffload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$1700(Lcom/android/server/WifiOffloadService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2062
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # invokes: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)V

    goto/16 :goto_98

    .line 2008
    :catch_249
    move-exception v9

    .line 2011
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_24a
    # getter for: Lcom/android/server/WifiOffloadService;->DBG:Z
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_182

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runtime ex in opening netstats session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_182

    .line 2028
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_26a
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "Data Usage does not reach threshold yet"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2031
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService$12;->totalDataUsage:J

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$2000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/WifiOffloadService$12;->calculateDataUsageforInterface(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService$12;->totalDataUsage:J

    .line 2033
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Usage for Wi-Fi + Mobile Interface :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$12;->totalDataUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2034
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Usage per launch count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$12;->totalDataUsage:J

    iget v4, p0, Lcom/android/server/WifiOffloadService$12;->appLaunchCount:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2036
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService$12;->totalDataUsage:J

    iget v2, p0, Lcom/android/server/WifiOffloadService$12;->appLaunchCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/WifiOffloadService$12;->dataUsageThreshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1e2

    .line 2037
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "canAppOffload exceeds the threshold so Offload, break the loop"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2038
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiOffloadService;->access$1702(Lcom/android/server/WifiOffloadService;Z)Z
    :try_end_2da
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_2da} :catch_1fd

    goto/16 :goto_1e2

    .line 2057
    :catch_2dc
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ex in closing statsSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_224
.end method
