.class Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;
.super Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UninstallPackageThread"
.end annotation


# instance fields
.field private mApkFilePath:Ljava/lang/String;

.field private mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .registers 6
    .param p2, "cid"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "packagePath"    # Ljava/lang/String;
    .param p5, "statusCb"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 3731
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 3732
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;)V

    .line 3733
    iput-object p4, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    .line 3734
    iput-object p5, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 3735
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 3739
    const-string v8, "EnterpriseContainerService"

    const-string v9, "UninstallPackageThread run()"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3740
    const/4 v4, 0x0

    .line 3741
    .local v4, "msg":Landroid/os/Message;
    const/4 v7, -0x1

    .line 3743
    .local v7, "result":I
    :try_start_a
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5700(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 3744
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5900(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    .line 3745
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v8

    iget v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mContainerId:I

    invoke-virtual {v8, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_6f
    .catchall {:try_start_a .. :try_end_24} :catchall_f9

    move-result-object v2

    .line 3747
    .local v2, "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-nez v2, :cond_2d

    .line 3785
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5800(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 3818
    .end local v2    # "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :goto_2c
    return-void

    .line 3751
    .restart local v2    # "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v0

    .line 3752
    .local v0, "adminId":I
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v8

    if-eqz v8, :cond_45

    .line 3753
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 3756
    :cond_45
    new-instance v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mContainerId:I

    invoke-direct {v5, v8, v9}, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 3759
    .local v5, "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v5, v10}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 3761
    monitor-enter v5
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5f} :catch_6f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_f9

    .line 3762
    :goto_5f
    :try_start_5f
    iget-boolean v8, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->finished:Z
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_6c

    if-nez v8, :cond_cc

    .line 3764
    :try_start_63
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_67
    .catchall {:try_start_63 .. :try_end_66} :catchall_6c

    goto :goto_5f

    .line 3765
    :catch_67
    move-exception v3

    .line 3766
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_68
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_5f

    .line 3770
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_6c
    move-exception v8

    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v8
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6f} :catch_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_f9

    .line 3782
    .end local v0    # "adminId":I
    .end local v2    # "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v5    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
    :catch_6f
    move-exception v3

    .line 3783
    .local v3, "e":Ljava/lang/Exception;
    :try_start_70
    const-string v8, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_f9

    .line 3785
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_7b
    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5800(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 3788
    :try_start_7e
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    if-eqz v8, :cond_139

    .line 3790
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3791
    .local v6, "packageUnInstallState":Landroid/os/Bundle;
    const-string v8, "packageName"

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3793
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package: after mApkFilePath  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " UNINSTALL Successed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3796
    if-ne v7, v12, :cond_100

    .line 3797
    const-string v8, "EnterpriseContainerService"

    const-string v9, "Calling callback for package Uninstall success"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3798
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v9, 0x3f0

    invoke-interface {v8, v9, v6}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_be} :catch_c0

    goto/16 :goto_2c

    .line 3815
    .end local v6    # "packageUnInstallState":Landroid/os/Bundle;
    :catch_c0
    move-exception v3

    .line 3816
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 3769
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "adminId":I
    .restart local v2    # "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .restart local v5    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
    :cond_cc
    :try_start_cc
    iget v7, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->result:I

    .line 3770
    monitor-exit v5
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_6c

    .line 3772
    if-ne v7, v12, :cond_f6

    :try_start_d1
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mParentHandler:Landroid/os/Handler;

    if-eqz v8, :cond_f6

    .line 3773
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3774
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v8, "containerid"

    iget v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mContainerId:I

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3775
    const-string v8, "package_install_name"

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3776
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mParentHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3779
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_f6} :catch_6f
    .catchall {:try_start_d1 .. :try_end_f6} :catchall_f9

    .line 3785
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_f6
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    goto :goto_7b

    .end local v0    # "adminId":I
    .end local v2    # "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v5    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
    :catchall_f9
    move-exception v8

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5800(Lcom/sec/knox/container/EnterpriseContainerService;)V

    throw v8

    .line 3803
    .restart local v6    # "packageUnInstallState":Landroid/os/Bundle;
    :cond_100
    :try_start_100
    const-string v8, "pmerrorcode"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3805
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v9, 0x3f1

    invoke-interface {v8, v9, v6}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    .line 3808
    const-string v8, "EnterpriseContainerService"

    const-string v9, "Callback Object updateStatus invoked"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " UNINSTALL FAILED. ErrorCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 3813
    .end local v6    # "packageUnInstallState":Landroid/os/Bundle;
    :cond_139
    const-string v8, "EnterpriseContainerService"

    const-string v9, "Call Back not found for uninstall package"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_140} :catch_c0

    goto/16 :goto_2c
.end method
