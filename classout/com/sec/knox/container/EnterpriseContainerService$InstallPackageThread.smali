.class Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;
.super Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallPackageThread"
.end annotation


# instance fields
.field private mApkFilePath:Ljava/lang/String;

.field private mInstallSource:I

.field private mInstallType:I

.field private mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)V
    .registers 8
    .param p2, "cid"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "packagePath"    # Ljava/lang/String;
    .param p5, "statusCb"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .param p6, "installType"    # I
    .param p7, "installSource"    # I

    .prologue
    .line 3714
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 3715
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;)V

    .line 3716
    iput-object p4, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mApkFilePath:Ljava/lang/String;

    .line 3717
    iput-object p5, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 3718
    iput p6, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallType:I

    .line 3719
    iput p7, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallSource:I

    .line 3720
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 3724
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InstallPackageThread run(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    const/4 v3, 0x0

    .line 3726
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x0

    .line 3727
    .local v4, "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    const/16 v7, -0x6e

    .line 3729
    .local v7, "result":I
    :try_start_21
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5900(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 3730
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3732
    .local v8, "sourceApkFile":Ljava/io/File;
    iget v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallType:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_190
    .catchall {:try_start_21 .. :try_end_2f} :catchall_18e

    packed-switch v9, :pswitch_data_196

    .line 3849
    :goto_32
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    .end local v8    # "sourceApkFile":Ljava/io/File;
    :goto_34
    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 3852
    :try_start_37
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    if-eqz v9, :cond_185

    .line 3854
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3855
    .local v6, "packageInstallState":Landroid/os/Bundle;
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package: name  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3856
    const-string v9, "packageName"

    iget-object v10, v4, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3859
    if-ne v7, v13, :cond_140

    .line 3860
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v10, 0x3ee

    invoke-interface {v9, v10, v6}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    .line 3863
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package Name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " INSTALL SUCCESS."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_8a} :catch_179

    .line 3881
    .end local v6    # "packageInstallState":Landroid/os/Bundle;
    :goto_8a
    return-void

    .line 3788
    .restart local v8    # "sourceApkFile":Ljava/io/File;
    :pswitch_8b
    :try_start_8b
    const-string v9, "EnterpriseContainerService"

    const-string v10, "Apk install process has started....."

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3790
    const/16 v2, 0x92

    .line 3793
    .local v2, "installFlags":I
    new-instance v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    invoke-direct {v5, v9, v10}, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9d} :catch_190
    .catchall {:try_start_8b .. :try_end_9d} :catchall_18e

    .line 3799
    .end local v4    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .local v5, "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    :try_start_9d
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    const-string v11, "com.sec.knox.containeragent"

    invoke-virtual {v9, v10, v5, v2, v11}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 3802
    monitor-enter v5
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b1} :catch_c1
    .catchall {:try_start_9d .. :try_end_b1} :catchall_138

    .line 3803
    :goto_b1
    :try_start_b1
    iget-boolean v9, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z
    :try_end_b3
    .catchall {:try_start_b1 .. :try_end_b3} :catchall_be

    if-nez v9, :cond_d0

    .line 3805
    :try_start_b5
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_b8
    .catch Ljava/lang/InterruptedException; {:try_start_b5 .. :try_end_b8} :catch_b9
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_be

    goto :goto_b1

    .line 3806
    :catch_b9
    move-exception v1

    .line 3807
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_ba
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_b1

    .line 3811
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_be
    move-exception v9

    monitor-exit v5
    :try_end_c0
    .catchall {:try_start_ba .. :try_end_c0} :catchall_be

    :try_start_c0
    throw v9
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c1} :catch_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_138

    .line 3846
    :catch_c1
    move-exception v1

    move-object v4, v5

    .line 3847
    .end local v2    # "installFlags":I
    .end local v5    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .end local v8    # "sourceApkFile":Ljava/io/File;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    :goto_c3
    :try_start_c3
    const-string v9, "EnterpriseContainerService"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_c3 .. :try_end_cc} :catchall_18e

    .line 3849
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    goto/16 :goto_34

    .line 3810
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .restart local v2    # "installFlags":I
    .restart local v5    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .restart local v8    # "sourceApkFile":Ljava/io/File;
    :cond_d0
    :try_start_d0
    iget v7, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    .line 3811
    monitor-exit v5
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_be

    .line 3812
    :try_start_d3
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget-object v10, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->checkInstalledPackageSignature(Ljava/lang/String;)Z
    invoke-static {v9, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6300(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;)Z

    move-result v9

    if-eq v9, v13, :cond_130

    .line 3813
    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkInstalledPackageSignature() == false"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3814
    const/4 v7, -0x2

    .line 3815
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 3820
    :goto_f6
    if-ne v7, v13, :cond_193

    .line 3821
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3822
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v9, "containerid"

    iget v10, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->containerId:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3823
    const-string v9, "package_install_name"

    iget-object v10, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3824
    const-string v9, "package_install_uid"

    iget v10, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3825
    const-string v9, "package_install_source"

    iget v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallSource:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3826
    const-string v9, "package_original_signature"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3829
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3832
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object v4, v5

    .line 3834
    .end local v5    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .restart local v4    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    goto/16 :goto_32

    .line 3817
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .restart local v5    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    :cond_130
    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkInstalledPackageSignature() == true"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_137} :catch_c1
    .catchall {:try_start_d3 .. :try_end_137} :catchall_138

    goto :goto_f6

    .line 3849
    :catchall_138
    move-exception v9

    move-object v4, v5

    .end local v2    # "installFlags":I
    .end local v5    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .end local v8    # "sourceApkFile":Ljava/io/File;
    .restart local v4    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    :goto_13a
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    throw v9

    .line 3866
    .restart local v6    # "packageInstallState":Landroid/os/Bundle;
    :cond_140
    :try_start_140
    const-string v9, "pmerrorcode"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3868
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v10, 0x3ef

    invoke-interface {v9, v10, v6}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    .line 3871
    const-string v9, "EnterpriseContainerService"

    const-string v10, "Callback Object updateStatus invoked"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3872
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package Name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " INSTALL FAILED. ErrorCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_177} :catch_179

    goto/16 :goto_8a

    .line 3878
    .end local v6    # "packageInstallState":Landroid/os/Bundle;
    :catch_179
    move-exception v1

    .line 3879
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseContainerService"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 3876
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_185
    :try_start_185
    const-string v9, "EnterpriseContainerService"

    const-string v10, "Call Back not found for install package"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_18c} :catch_179

    goto/16 :goto_8a

    .line 3849
    :catchall_18e
    move-exception v9

    goto :goto_13a

    .line 3846
    :catch_190
    move-exception v1

    goto/16 :goto_c3

    .end local v4    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .restart local v2    # "installFlags":I
    .restart local v5    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .restart local v8    # "sourceApkFile":Ljava/io/File;
    :cond_193
    move-object v4, v5

    .end local v5    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .restart local v4    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    goto/16 :goto_32

    .line 3732
    :pswitch_data_196
    .packed-switch 0x1f5
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
    .end packed-switch
.end method
