.class public Lcom/android/server/RCPManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .registers 2

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 870
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PackageReceiver onReceive()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 875
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "addedPackage":Ljava/lang/String;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App Installed with packageNAme = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    if-nez v0, :cond_3a

    .line 933
    .end local v0    # "addedPackage":Ljava/lang/String;
    :cond_39
    :goto_39
    return-void

    .line 883
    .restart local v0    # "addedPackage":Ljava/lang/String;
    :cond_3a
    const/4 v1, 0x0

    .line 884
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    .line 885
    .local v3, "bundle":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 886
    .local v6, "proxyName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 887
    .local v7, "proxyService":Ljava/lang/String;
    const/4 v2, -0x1

    .line 890
    .local v2, "appUid":I
    :try_start_3f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 892
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 893
    const-string v9, "proxyName"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 894
    const-string v9, "proxyService"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 895
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_59} :catch_117
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_59} :catch_137

    .line 906
    :goto_59
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " PackageReceiver onReceive() bundle "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    if-eqz v3, :cond_39

    .line 910
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " PackageReceiver onReceive() proxyName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " proxyService "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    if-eqz v6, :cond_39

    if-eqz v7, :cond_39

    const-string v9, "RCPProxy"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 916
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " PackageReceiver onReceive() appUid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    if-ltz v2, :cond_39

    .line 920
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 921
    .local v8, "userId":I
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Going to try and start bridge service as user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v9, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v10, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v10, v10, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RCPProxyForUser"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    # setter for: Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;
    invoke-static {v9, v10}, Lcom/android/server/RCPManagerService;->access$802(Lcom/android/server/RCPManagerService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 926
    iget-object v9, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;
    invoke-static {v9}, Lcom/android/server/RCPManagerService;->access$800(Lcom/android/server/RCPManagerService;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 927
    .local v5, "prefEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 928
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 930
    iget-object v9, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v9, v8, v0, v7}, Lcom/android/server/RCPManagerService;->bindToRCPProxy(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_39

    .line 896
    .end local v5    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "userId":I
    :catch_117
    move-exception v4

    .line 897
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception trying to get applicationInfo for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_59

    .line 900
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_137
    move-exception v4

    .line 901
    .local v4, "e":Ljava/lang/NullPointerException;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " PackageReceiver onReceive() Failed to load meta-data, NullPointer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59
.end method
