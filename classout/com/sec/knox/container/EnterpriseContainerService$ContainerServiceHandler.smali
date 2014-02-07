.class Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
.super Landroid/os/Handler;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerServiceHandler"
.end annotation


# static fields
.field public static final ENTERPRISE_CONTAINER_ALL_PACKAGES_INSTALLED:I = 0x2

.field public static final ENTERPRISE_CONTAINER_ALL_PACKAGES_UNINSTALLED:I = 0x4

.field public static final ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION:I = 0x6

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK:I = 0x9

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_CONTAINEROBJ:Ljava/lang/String; = "containerObj"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_ECRYPTFS_KEY:Ljava/lang/String; = "ecryptfskey"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_ERROR:Ljava/lang/String; = "errorCode"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_PASSWORD:Ljava/lang/String; = "password"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_PRIMARY:Ljava/lang/String; = "primary"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_RID:Ljava/lang/String; = "requestId"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_STATE:Ljava/lang/String; = "state"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_STATUS:Ljava/lang/String; = "status"

.field public static final ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER:I = 0x5

.field public static final ENTERPRISE_CONTAINER_ERROR_CODE:Ljava/lang/String; = "errCode"

.field public static final ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT:I = 0xe

.field public static final ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE:I = 0x7

.field public static final ENTERPRISE_CONTAINER_HANDLE_PASSWORD_TIMEOUT:I = 0x8

.field public static final ENTERPRISE_CONTAINER_LOCK_TIMEOUT:I = 0xf

.field public static final ENTERPRISE_CONTAINER_PACKAGE_INSTALLED:I = 0x1

.field public static final ENTERPRISE_CONTAINER_PACKAGE_UNINSTALLED:I = 0x3

.field public static final ENTERPRISE_CONTAINER_REMOUNT_FAILURE:I = 0xb

.field public static final ENTERPRISE_CONTAINER_REMOUNT_FAILURE_DATA_RID:Ljava/lang/String; = "rid"

.field public static final ENTERPRISE_CONTAINER_REMOUNT_SUCCESS:I = 0xd

.field public static final ENTERPRISE_CONTAINER_REMOUNT_SUCCESS_DATA_RID:Ljava/lang/String; = "rid"

.field public static final ENTERPRISE_CONTAINER_SETUP_FAILURE:I = 0xa

.field public static final ENTERPRISE_CONTAINER_SETUP_SUCCESS:I = 0xc

.field public static final ENTERPRISE_CONTAINER_UNMOUNT_TIMEOUT:I = 0x10


# instance fields
.field private mParent:Lcom/sec/knox/container/EnterpriseContainerService;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Looper;Lcom/sec/knox/container/EnterpriseContainerService;)V
    .registers 5
    .param p2, "loop"    # Landroid/os/Looper;
    .param p3, "service"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 1382
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 1383
    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 1384
    return-void
.end method


# virtual methods
.method public addContainer(IZIILcom/sec/knox/container/EnterpriseContainerObjectParam;Ljava/lang/String;)Z
    .registers 26
    .param p1, "state"    # I
    .param p2, "status"    # Z
    .param p3, "errorCode"    # I
    .param p4, "containerId"    # I
    .param p5, "containerObj"    # Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 2178
    const/16 v18, 0x0

    .line 2179
    .local v18, "returnCode":Z
    if-nez p1, :cond_ef

    .line 2181
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2183
    .local v11, "apkList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p5

    move/from16 v1, p4

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    invoke-static {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5400(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 2185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    move-object/from16 v0, p5

    move/from16 v1, p4

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->addContainerToCache(Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V
    invoke-static {v2, v0, v1, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5500(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V

    .line 2187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    move/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storeUserCredentials(ILjava/lang/String;)V

    .line 2189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, p4

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->removeUntrustedContainerApps(I)V
    invoke-static {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 2193
    :try_start_40
    new-instance v14, Ljava/io/File;

    const-string v2, "/system/containers"

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2194
    .local v14, "apkFolder":Ljava/io/File;
    if-eqz v14, :cond_77

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 2195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 2197
    .local v15, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_77

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_77

    .line 2198
    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_77} :catch_f0

    .line 2205
    .end local v14    # "apkFolder":Ljava/io/File;
    .end local v15    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_77
    :goto_77
    :try_start_77
    invoke-virtual/range {p5 .. p5}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getApkInstallPath()Ljava/lang/String;

    move-result-object v17

    .line 2206
    .local v17, "installApkPath":Ljava/lang/String;
    if-eqz v17, :cond_ba

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 2207
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2208
    .restart local v14    # "apkFolder":Ljava/io/File;
    if-eqz v14, :cond_ba

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 2209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 2211
    .restart local v15    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_ba

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ba

    .line 2212
    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_ba} :catch_10f

    .line 2220
    .end local v14    # "apkFolder":Ljava/io/File;
    .end local v15    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "installApkPath":Ljava/lang/String;
    :cond_ba
    :goto_ba
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2221
    .local v6, "data":Landroid/os/Bundle;
    const-string v2, "apksCount"

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x1

    const/16 v5, 0x3f3

    const/4 v7, 0x0

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 2226
    new-instance v7, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    move/from16 v9, p4

    invoke-direct/range {v7 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;ZI)V

    .line 2228
    .local v7, "installer":Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;
    invoke-virtual {v7}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->start()V

    .line 2229
    const/16 v18, 0x1

    .line 2241
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "installer":Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;
    .end local v11    # "apkList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ef
    :goto_ef
    return v18

    .line 2201
    .restart local v11    # "apkList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_f0
    move-exception v16

    .line 2202
    .local v16, "ex":Ljava/lang/Exception;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContainer() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 2216
    .end local v16    # "ex":Ljava/lang/Exception;
    :catch_10f
    move-exception v16

    .line 2217
    .restart local v16    # "ex":Ljava/lang/Exception;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContainer() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    .line 2236
    .end local v16    # "ex":Ljava/lang/Exception;
    :cond_12d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v2, v0, v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    .line 2238
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Failed after mount cannot add to DB"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ef
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 71
    .param p1, "param"    # Landroid/os/Message;

    .prologue
    .line 1449
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Message received "

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->toString(I)V

    .line 1454
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    if-nez v2, :cond_29

    .line 1455
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Cache object is null returning from handleMessage()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    :cond_28
    :goto_28
    return-void

    .line 1458
    :cond_29
    const/16 v35, 0x0

    .line 1459
    .local v35, "cid":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1460
    .local v26, "bundle":Landroid/os/Bundle;
    const/16 v60, 0x0

    .line 1461
    .local v60, "pkgName":Ljava/lang/String;
    const/16 v67, 0x0

    .line 1462
    .local v67, "uid":I
    const/16 v50, 0x0

    .line 1463
    .local v50, "installSource":I
    const/16 v58, 0x0

    .line 1465
    .local v58, "origSignatures":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1070

    :cond_42
    :pswitch_42
    move/from16 v24, v35

    .end local v35    # "cid":I
    .local v24, "cid":I
    goto :goto_28

    .line 1467
    .end local v24    # "cid":I
    .restart local v35    # "cid":I
    :pswitch_45
    const-string v2, "EnterpriseContainerService"

    const-string v3, "ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE called. Starting everything from here."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/knox/container/manager/StateManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$902(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)Lcom/sec/knox/container/manager/StateManager;

    .line 1472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v2, v3}, Lcom/sec/knox/container/manager/StateManager;->registerClientCallback(Lcom/sec/knox/container/manager/IStateManagerCallback;)I

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    invoke-direct {v3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;-><init>()V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2202(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/contentprovider/ContainerDatabase;)Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    .line 1474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v3, v7}, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$102(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 1475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    const/4 v7, 0x1

    sget-object v8, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_INSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntArrayValues()[I

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/container/util/StringUtil;->getRegisteringKey(I[I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;-><init>([Ljava/lang/String;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2302(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;)Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v3, v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v3, v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2502(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v3, v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v3, v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2702(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v10

    invoke-direct {v3, v7, v8, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;-><init>(Landroid/content/Context;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2802(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerPasswordService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    .line 1487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->initializeDPMActiveAdminList()V
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->registerReciever()V
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3102(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/dirEncryption/DirEncryptionManager;)Landroid/dirEncryption/DirEncryptionManager;

    .line 1490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    const-string v7, "power"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3202(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/PowerManager;

    move-result-object v2

    const/4 v3, 0x1

    const-string v7, "EnterpriseContainerService"

    invoke-virtual {v2, v3, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3302(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 1492
    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3300()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->bindRedexService()V
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$300(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Landroid/app/enterprise/IEnterpriseVpnPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3500(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v3

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Landroid/app/enterprise/IEnterpriseVpnPolicy;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3402(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/app/enterprise/IEnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnPolicy;

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1400(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    move-result-object v2

    if-nez v2, :cond_184

    .line 1496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v3, v7}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    .line 1498
    :cond_184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->initialiseContainer()V
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3600(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/knox/container/manager/StateManager;->getContainers()Ljava/util/List;

    move-result-object v53

    .line 1502
    .local v53, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "List of objects:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    if-eqz v53, :cond_1f3

    .line 1504
    const-string v2, "EnterpriseContainerService"

    const-string v3, "List of objects not null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .local v48, "i$":Ljava/util/Iterator;
    :goto_1be
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1fa

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 1506
    .local v56, "object":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    const-string v2, "EnterpriseContainerService"

    const-string v3, "At least one container is there"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    invoke-virtual/range {v56 .. v56}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v7

    invoke-virtual/range {v56 .. v56}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v7

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_REBOOT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, v3, v7, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    goto :goto_1be

    .line 1512
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v56    # "object":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_1f3
    const-string v2, "EnterpriseContainerService"

    const-string v3, "List is null, nothing to set"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x1

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z
    invoke-static {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3702(Lcom/sec/knox/container/EnterpriseContainerService;Z)Z

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2, v3}, Lcom/sec/knox/container/manager/StateManager;->getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;

    move-result-object v62

    .line 1523
    .local v62, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "List of objects:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    if-eqz v62, :cond_254

    .line 1525
    const-string v2, "EnterpriseContainerService"

    const-string v3, "removeList of objects not null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    invoke-interface/range {v62 .. v62}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .restart local v48    # "i$":Ljava/util/Iterator;
    :goto_237
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_250

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 1527
    .restart local v56    # "object":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual/range {v56 .. v56}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v3

    const/4 v7, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v2, v3, v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3800(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto :goto_237

    .end local v56    # "object":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_250
    move/from16 v24, v35

    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1530
    .end local v24    # "cid":I
    .end local v48    # "i$":Ljava/util/Iterator;
    .restart local v35    # "cid":I
    :cond_254
    const-string v2, "EnterpriseContainerService"

    const-string v3, "createInprogresslist is null, nothing to set"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v24, v35

    .line 1532
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1535
    .end local v24    # "cid":I
    .end local v53    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v62    # "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v35    # "cid":I
    :pswitch_25f
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1536
    .local v9, "containerId":I
    const-string v2, "rid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1537
    .local v4, "requestId":I
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container remount successfully: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_302

    .line 1548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, v9, v3, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v66

    .line 1551
    .local v66, "transitState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v66 .. v66}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_36a

    .line 1552
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container remount successfully: New state is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :goto_2e6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z
    invoke-static {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3900(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    .line 1559
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1560
    .local v6, "data":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x4

    const/16 v5, 0x3f6

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1565
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v66    # "transitState":Lcom/sec/knox/container/constants/CSState;
    :cond_302
    new-instance v63, Landroid/content/Intent;

    const-string v2, "enterprise.container.remount.success"

    move-object/from16 v0, v63

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1566
    .local v63, "success":Landroid/content/Intent;
    const-string v2, "containerid"

    move-object/from16 v0, v63

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v63

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    if-eq v2, v3, :cond_35f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    if-eq v2, v3, :cond_35f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    if-eq v2, v3, :cond_35f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    if-ne v2, v3, :cond_42

    .line 1573
    :cond_35f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V
    invoke-static {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v24, v35

    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1555
    .end local v24    # "cid":I
    .end local v63    # "success":Landroid/content/Intent;
    .restart local v35    # "cid":I
    .restart local v66    # "transitState":Lcom/sec/knox/container/constants/CSState;
    :cond_36a
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Container remount successfully: transitState failed. State still invalid"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e6

    .line 1578
    .end local v4    # "requestId":I
    .end local v9    # "containerId":I
    .end local v66    # "transitState":Lcom/sec/knox/container/constants/CSState;
    :pswitch_373
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1580
    .restart local v9    # "containerId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V
    invoke-static {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4100(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V
    invoke-static {v2, v3, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2000(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->startContainerEventsRelayManager()V
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4200(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1590
    new-instance v40, Landroid/content/Intent;

    const-string v2, "enterprise.container.setup.success"

    move-object/from16 v0, v40

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1591
    .local v40, "containerSuccess":Landroid/content/Intent;
    const-string v2, "containerid"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v24, v35

    .line 1593
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1598
    .end local v9    # "containerId":I
    .end local v24    # "cid":I
    .end local v40    # "containerSuccess":Landroid/content/Intent;
    .restart local v35    # "cid":I
    :pswitch_3c4
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1599
    .restart local v9    # "containerId":I
    const-string v2, "rid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1600
    .restart local v4    # "requestId":I
    const-string v2, "errCode"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1601
    .local v5, "errorCode":I
    if-nez v5, :cond_3e0

    .line 1602
    const/16 v5, 0x3f7

    .line 1604
    :cond_3e0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x2

    const/4 v7, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v2, v9, v3, v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    .line 1605
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> Container remount failed: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " <<<<"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_42f

    .line 1607
    const-string v2, "EnterpriseContainerService"

    const-string v3, "    Calling callback container remount failure"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1609
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x4

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1613
    .end local v6    # "data":Landroid/os/Bundle;
    :cond_42f
    new-instance v43, Landroid/content/Intent;

    const-string v2, "enterprise.container.remount.failed"

    move-object/from16 v0, v43

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1614
    .local v43, "failure":Landroid/content/Intent;
    const-string v2, "containerid"

    move-object/from16 v0, v43

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1618
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1619
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v7, v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v55

    .line 1622
    .local v55, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v2

    move-object/from16 v0, v55

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move/from16 v24, v35

    .line 1623
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1626
    .end local v4    # "requestId":I
    .end local v5    # "errorCode":I
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v9    # "containerId":I
    .end local v24    # "cid":I
    .end local v43    # "failure":Landroid/content/Intent;
    .end local v55    # "msg":Landroid/os/Message;
    .restart local v35    # "cid":I
    :pswitch_477
    const-string v2, "containerid"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1627
    .restart local v9    # "containerId":I
    const-string v2, "errCode"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1628
    .restart local v5    # "errorCode":I
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> Container create failed: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " <<<<"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    const-string v2, "EnterpriseContainerService"

    const-string v3, "    Calling callback container set up failure"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    if-nez v5, :cond_4b1

    .line 1631
    const/16 v5, 0x3ea

    .line 1634
    :cond_4b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_FAILURE:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, v9, v3, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1637
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1638
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v8, 0x1

    const/4 v12, 0x1

    move v10, v5

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1642
    new-instance v43, Landroid/content/Intent;

    const-string v2, "enterprise.container.setup.failure"

    move-object/from16 v0, v43

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1643
    .restart local v43    # "failure":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v24, v35

    .line 1644
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1647
    .end local v5    # "errorCode":I
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v9    # "containerId":I
    .end local v24    # "cid":I
    .end local v43    # "failure":Landroid/content/Intent;
    .restart local v35    # "cid":I
    :pswitch_4f9
    const-string v2, "state"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 1648
    .local v17, "state":I
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1649
    .restart local v9    # "containerId":I
    const-string v2, "requestId"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1650
    .restart local v4    # "requestId":I
    const-string v2, "errorCode"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1652
    .restart local v5    # "errorCode":I
    const-string v2, "primary"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v51

    .line 1654
    .local v51, "isPrimary":Z
    const-string v2, "status"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 1656
    .local v18, "status":Z
    const-string v2, "password"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1658
    .local v14, "password":Ljava/lang/String;
    const-string v2, "ecryptfskey"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1660
    .local v15, "ecryptfsKey":Ljava/lang/String;
    const-string v2, "containerObj"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 1663
    .local v21, "containerObj":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    new-instance v54, Landroid/os/Bundle;

    invoke-direct/range {v54 .. v54}, Landroid/os/Bundle;-><init>()V

    .line 1664
    .local v54, "message":Landroid/os/Bundle;
    if-eqz v17, :cond_54f

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_719

    .line 1665
    :cond_54f
    const/4 v2, 0x1

    move/from16 v0, v51

    if-ne v0, v2, :cond_619

    .line 1666
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_5a7

    .line 1668
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1669
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string v2, "primaryMountStatus"

    const-string v3, "success"

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v8, 0x1

    const/16 v10, 0x3f2

    const/4 v12, 0x0

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move-object/from16 v10, p0

    move/from16 v11, v17

    move v12, v4

    move v13, v9

    .line 1674
    invoke-virtual/range {v10 .. v15}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mountSecondStorage(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_593

    .line 1676
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_597

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V
    invoke-static {v2, v9, v4, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4400(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    const/4 v7, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v2, v9, v3, v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    :cond_593
    :goto_593
    move/from16 v24, v35

    .line 1685
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1681
    .end local v24    # "cid":I
    .restart local v35    # "cid":I
    :cond_597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v2, v9, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto :goto_593

    .line 1686
    .end local v6    # "data":Landroid/os/Bundle;
    :cond_5a7
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed for mounting primary partition: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_606

    .line 1691
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container remount failed: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V
    invoke-static {v2, v9, v4, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4400(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    move/from16 v24, v35

    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1694
    .end local v24    # "cid":I
    .restart local v35    # "cid":I
    :cond_606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v2, v9, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v24, v35

    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1700
    .end local v24    # "cid":I
    .restart local v35    # "cid":I
    :cond_619
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_6d4

    .line 1704
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1705
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string v2, "secondaryMountStatus"

    const-string v3, "success"

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v8, 0x1

    const/16 v10, 0x3f2

    const/4 v12, 0x0

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 1713
    .local v37, "containerData":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    move-object/from16 v21, v37

    .line 1717
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_6b6

    .line 1720
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remount success for : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const-string v2, "containerid"

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1722
    const-string v2, "rid"

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v2

    const/16 v3, 0xd

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v54

    invoke-static {v2, v3, v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v55

    .line 1726
    .restart local v55    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v2

    move-object/from16 v0, v55

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v55    # "msg":Landroid/os/Message;
    :cond_6b2
    :goto_6b2
    move/from16 v24, v35

    .line 1735
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .end local v24    # "cid":I
    .restart local v35    # "cid":I
    :cond_6b6
    move-object/from16 v16, p0

    move/from16 v19, v5

    move/from16 v20, v9

    move-object/from16 v22, v14

    .line 1729
    invoke-virtual/range {v16 .. v22}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->addContainer(IZIILcom/sec/knox/container/EnterpriseContainerObjectParam;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6b2

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v2, v9, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto :goto_6b2

    .line 1737
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v37    # "containerData":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    :cond_6d4
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed for mounting secondary partition: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    const/4 v7, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v2, v9, v3, v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    .line 1740
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_706

    .line 1741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V
    invoke-static {v2, v9, v4, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4400(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    move/from16 v24, v35

    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1743
    .end local v24    # "cid":I
    .restart local v35    # "cid":I
    :cond_706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v2, v9, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v24, v35

    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1748
    .end local v24    # "cid":I
    .restart local v35    # "cid":I
    :cond_719
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_794

    .line 1749
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_75d

    .line 1752
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unmount is success "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v24, v35

    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1754
    .end local v24    # "cid":I
    .restart local v35    # "cid":I
    :cond_75d
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1755
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v8, 0x2

    const/16 v10, 0x3ed

    const/4 v12, 0x1

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1759
    new-instance v68, Landroid/content/Intent;

    const-string v2, "enterprise.container.unmountfailure"

    move-object/from16 v0, v68

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v68, "unmountFailed":Landroid/content/Intent;
    const-string v2, "containerid"

    move-object/from16 v0, v68

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v68

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v24, v35

    .line 1766
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1767
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v24    # "cid":I
    .end local v68    # "unmountFailed":Landroid/content/Intent;
    .restart local v35    # "cid":I
    :cond_794
    const/4 v2, 0x4

    move/from16 v0, v17

    if-ne v0, v2, :cond_864

    .line 1768
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContainerEncryptionCallbackENCRYPTION_STATE_PRIMARY_UNMOUNT:updateStatus"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_82d

    .line 1771
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unmount is success "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v39

    .line 1773
    .local v39, "containerState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v39 .. v39}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_7f8

    invoke-virtual/range {v39 .. v39}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-ne v2, v3, :cond_829

    .line 1775
    :cond_7f8
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Deleting the .container_1 forcibly "

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    const-string v2, "ctl.start"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containersetup:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    const-string v2, "EnterpriseContainerService"

    const-string v3, "After Deleting the .container_1 forcibly "

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_829
    move/from16 v24, v35

    .line 1780
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1781
    .end local v24    # "cid":I
    .end local v39    # "containerState":Lcom/sec/knox/container/constants/CSState;
    .restart local v35    # "cid":I
    :cond_82d
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1782
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v8, 0x2

    const/16 v10, 0x3ed

    const/4 v12, 0x1

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1786
    new-instance v68, Landroid/content/Intent;

    const-string v2, "enterprise.container.unmountfailure"

    move-object/from16 v0, v68

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1791
    .restart local v68    # "unmountFailed":Landroid/content/Intent;
    const-string v2, "containerid"

    move-object/from16 v0, v68

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v68

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v24, v35

    .line 1793
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1794
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v24    # "cid":I
    .end local v68    # "unmountFailed":Landroid/content/Intent;
    .restart local v35    # "cid":I
    :cond_864
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_42

    .line 1795
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Change Password callback"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_952

    .line 1797
    const-string v2, "EnterpriseContainerService"

    const-string v3, "changePassword success"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Change Password storing the new password"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    invoke-virtual {v2, v9, v14}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->updatePassword(ILjava/lang/String;)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->onChangePasswordSuccess(I)V

    .line 1801
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1802
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const/16 v25, 0x3f4

    const/16 v27, 0x1

    move/from16 v24, v4

    move-object/from16 v26, v6

    invoke-virtual/range {v22 .. v27}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1809
    .end local v26    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, v9, v3, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v64

    .line 1812
    .local v64, "tempState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v64 .. v64}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_94e

    .line 1813
    const-string v2, "EnterpriseContainerService"

    const-string v3, "ContainerEncryptionCallback.updateStatus(): restarting password expiry timeout"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .restart local v48    # "i$":Ljava/util/Iterator;
    :goto_8ef
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_909

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/ComponentName;

    .line 1816
    .local v36, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v9, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->updatePasswordExpirationTimeout(ILandroid/content/ComponentName;)V

    goto :goto_8ef

    .line 1819
    .end local v36    # "componentName":Landroid/content/ComponentName;
    :cond_909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V
    invoke-static {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4100(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V
    invoke-static {v2, v3, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2000(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    .line 1823
    const-string v2, "EnterpriseContainerService"

    const-string v3, "ContainerEncryptionCallback.updateStatus(): firing intent: com.samsung.redex.proxy.activity.close_dialog"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    new-instance v61, Landroid/content/Intent;

    const-string v2, "com.samsung.redex.proxy.activity.close_dialog"

    move-object/from16 v0, v61

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1827
    .local v61, "redexclosedialog":Landroid/content/Intent;
    const-string v2, "containerid"

    move-object/from16 v0, v61

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v61

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v61    # "redexclosedialog":Landroid/content/Intent;
    :cond_94e
    move/from16 v24, v35

    .line 1830
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1831
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v24    # "cid":I
    .end local v64    # "tempState":Lcom/sec/knox/container/constants/CSState;
    .restart local v26    # "bundle":Landroid/os/Bundle;
    .restart local v35    # "cid":I
    :cond_952
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Change Password failed cannot update the cache error code:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1835
    .restart local v6    # "data":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const/16 v25, 0x3f5

    const/16 v27, 0x1

    move/from16 v24, v4

    move-object/from16 v26, v6

    invoke-virtual/range {v22 .. v27}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .end local v26    # "bundle":Landroid/os/Bundle;
    move/from16 v24, v35

    .line 1839
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    goto/16 :goto_28

    .line 1844
    .end local v4    # "requestId":I
    .end local v5    # "errorCode":I
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v9    # "containerId":I
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "ecryptfsKey":Ljava/lang/String;
    .end local v17    # "state":I
    .end local v18    # "status":Z
    .end local v21    # "containerObj":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v24    # "cid":I
    .end local v51    # "isPrimary":Z
    .end local v54    # "message":Landroid/os/Bundle;
    .restart local v26    # "bundle":Landroid/os/Bundle;
    .restart local v35    # "cid":I
    :pswitch_98b
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Binder UID :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string v2, "package_install_name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 1846
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 1847
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    const-string v2, "package_install_uid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v67

    .line 1848
    const-string v2, "package_install_source"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v50

    .line 1849
    const-string v2, "package_original_signature"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v58

    .line 1850
    const-string v57, "NA"

    .line 1855
    .local v57, "origSignatureAsString":Ljava/lang/String;
    if-eqz v58, :cond_9db

    .line 1856
    const-string v2, ","

    move-object/from16 v0, v58

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    .line 1859
    :cond_9db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v2, v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b70

    .line 1860
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 1861
    .local v41, "contentval":Landroid/content/ContentValues;
    const-string v2, "containerid"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1862
    const-string v2, "packages"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    const-string v2, "original_signature"

    move-object/from16 v0, v41

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    const-string v2, "installation_source"

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1866
    const-string v2, "app_uid"

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    sget-object v7, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v41

    invoke-virtual {v2, v3, v0, v7}, Lcom/sec/knox/container/manager/StateManager;->insert(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z

    .line 1869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v6

    .line 1871
    .local v6, "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v6, :cond_28

    .line 1875
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v33

    .line 1876
    .local v33, "adminId":I
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setApplicationUninstallationDisabledBySystem to true :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_abd

    .line 1879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1881
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApplicationUninstallationEnabled  :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v7

    move-object/from16 v0, v60

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    :cond_abd
    new-instance v49, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct/range {v49 .. v49}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    .line 1888
    .local v49, "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    move-object/from16 v0, v49

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    .line 1889
    move-object/from16 v0, v49

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    .line 1890
    move-object/from16 v0, v49

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setSignature(Ljava/lang/String;)V

    .line 1891
    invoke-virtual/range {v49 .. v50}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setInstallationSource(I)V

    .line 1892
    move-object/from16 v0, v49

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setUid(I)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/manager/StateManager;->updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z

    .line 1898
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " INSTALLED SUCCESSFULLY in container: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    .end local v6    # "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v33    # "adminId":I
    .end local v41    # "contentval":Landroid/content/ContentValues;
    .end local v49    # "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :goto_b14
    new-instance v42, Landroid/os/Bundle;

    invoke-direct/range {v42 .. v42}, Landroid/os/Bundle;-><init>()V

    .line 1915
    .local v42, "eventData":Landroid/os/Bundle;
    const-string v2, "containerid"

    move-object/from16 v0, v42

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1916
    const-string v2, "package"

    move-object/from16 v0, v42

    move-object/from16 v1, v60

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v3, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_INSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v3

    move/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v2, v0, v3, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->updateEventToListners(IILandroid/os/Bundle;)V

    .line 1924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v24

    move-object/from16 v1, v60

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5000(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 1925
    .local v65, "transformedPackageName":Ljava/lang/String;
    if-eqz v65, :cond_28

    .line 1926
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1927
    .local v6, "data":Landroid/os/Bundle;
    const-string v2, "packageName"

    move-object/from16 v0, v65

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    const-string v2, "packageInstallStatus"

    const-string v3, "success"

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v25, 0x3f3

    const/16 v27, 0x0

    move-object/from16 v26, v6

    invoke-virtual/range {v22 .. v27}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_28

    .line 1901
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v42    # "eventData":Landroid/os/Bundle;
    .end local v65    # "transformedPackageName":Ljava/lang/String;
    :cond_b70
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " UPDATED SUCCESSFULLY in container: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b14

    .line 1938
    .end local v24    # "cid":I
    .end local v57    # "origSignatureAsString":Ljava/lang/String;
    .restart local v35    # "cid":I
    :pswitch_b98
    new-instance v54, Landroid/os/Bundle;

    invoke-direct/range {v54 .. v54}, Landroid/os/Bundle;-><init>()V

    .line 1939
    .restart local v54    # "message":Landroid/os/Bundle;
    const/16 v55, 0x0

    .line 1940
    .restart local v55    # "msg":Landroid/os/Message;
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 1941
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    const-string v2, "package_install_name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1942
    .local v45, "frameworkPackageList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1200(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/knox/container/manager/StateManager;->isContainerCanceled(I)Z

    move-result v2

    if-eqz v2, :cond_bf5

    .line 1943
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Cancel Container: All packages will be uninstalled"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v24

    invoke-virtual {v2, v0, v3, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    move/from16 v0, v24

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v2, v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3800(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_28

    .line 1951
    :cond_bf5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v6

    .line 1952
    .local v6, "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v6, :cond_28

    .line 1956
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v33

    .line 1957
    .restart local v33    # "adminId":I
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setApplicationUninstallationDisabledBySystem to true :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    if-nez v45, :cond_c61

    const/16 v46, 0x0

    .line 1962
    .local v46, "frameworkPackages":[Ljava/lang/String;
    :goto_c27
    if-eqz v46, :cond_c6a

    .line 1963
    move-object/from16 v34, v46

    .local v34, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v52, v0

    .local v52, "len$":I
    const/16 v48, 0x0

    .local v48, "i$":I
    :goto_c32
    move/from16 v0, v48

    move/from16 v1, v52

    if-ge v0, v1, :cond_c6a

    aget-object v47, v34, v48

    .line 1964
    .local v47, "frameworkPkg":Ljava/lang/String;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c5e

    .line 1965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_c5e

    .line 1966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1963
    :cond_c5e
    add-int/lit8 v48, v48, 0x1

    goto :goto_c32

    .line 1960
    .end local v34    # "arr$":[Ljava/lang/String;
    .end local v46    # "frameworkPackages":[Ljava/lang/String;
    .end local v47    # "frameworkPkg":Ljava/lang/String;
    .end local v48    # "i$":I
    .end local v52    # "len$":I
    :cond_c61
    const-string v2, ";"

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v46

    goto :goto_c27

    .line 1973
    .restart local v46    # "frameworkPackages":[Ljava/lang/String;
    :cond_c6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "framework.pkgName.key"

    move-object/from16 v0, v45

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v24

    invoke-virtual {v2, v0, v3, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v17

    .line 1980
    .local v17, "state":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v17 .. v17}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-ne v2, v3, :cond_ce3

    .line 1981
    const-string v2, "containerid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1200(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v3

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v54

    invoke-static {v2, v3, v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v55

    .line 1986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v2

    move-object/from16 v0, v55

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_28

    .line 1989
    :cond_ce3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/manager/StateManager;->getFeatureFlagForContainer(I)I

    move-result v44

    .line 1990
    .local v44, "flag":I
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container flag value "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v25, 0x3e9

    const/16 v27, 0x1

    invoke-virtual/range {v22 .. v27}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1994
    and-int/lit8 v2, v44, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d31

    .line 1995
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Container activation flow is enabled......"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v24

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerCreationIntent(I)V
    invoke-static {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5100(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto/16 :goto_28

    .line 1998
    :cond_d31
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Container activation flow is disabled......"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->activateContainer(I)Z

    goto/16 :goto_28

    .line 2006
    .end local v6    # "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v17    # "state":Lcom/sec/knox/container/constants/CSState;
    .end local v24    # "cid":I
    .end local v33    # "adminId":I
    .end local v44    # "flag":I
    .end local v45    # "frameworkPackageList":Ljava/lang/String;
    .end local v46    # "frameworkPackages":[Ljava/lang/String;
    .end local v54    # "message":Landroid/os/Bundle;
    .end local v55    # "msg":Landroid/os/Message;
    .restart local v35    # "cid":I
    :pswitch_d43
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Binder UID :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    const-string v2, "package_install_name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 2008
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 2009
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    sget-object v7, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v60

    move/from16 v1, v24

    invoke-virtual {v2, v3, v0, v1, v7}, Lcom/sec/knox/container/manager/StateManager;->delete(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Z

    .line 2011
    new-instance v49, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct/range {v49 .. v49}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    .line 2012
    .restart local v49    # "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    move-object/from16 v0, v49

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    .line 2013
    move-object/from16 v0, v49

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/manager/StateManager;->updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z

    .line 2017
    new-instance v42, Landroid/os/Bundle;

    invoke-direct/range {v42 .. v42}, Landroid/os/Bundle;-><init>()V

    .line 2018
    .restart local v42    # "eventData":Landroid/os/Bundle;
    const-string v2, "containerid"

    move-object/from16 v0, v42

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2019
    const-string v2, "package"

    move-object/from16 v0, v42

    move-object/from16 v1, v60

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v3, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_UNINSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v3

    move/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v2, v0, v3, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->updateEventToListners(IILandroid/os/Bundle;)V

    .line 2027
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " UNINSTALLED SUCCESSFULLY in container: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 2032
    .end local v24    # "cid":I
    .end local v42    # "eventData":Landroid/os/Bundle;
    .end local v49    # "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    .restart local v35    # "cid":I
    :pswitch_df8
    const-string v2, "EnterpriseContainerService"

    const-string v3, "handleMessage() All Packages Uninstalled Part of Remove Container"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 2035
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2036
    .local v6, "data":Landroid/os/Bundle;
    const/16 v38, 0x0

    .line 2037
    .local v38, "containerRemoved":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/manager/StateManager;->isContainerCanceled(I)Z

    move-result v2

    if-eqz v2, :cond_ec8

    .line 2038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v4

    .line 2039
    .restart local v4    # "requestId":I
    const-string v2, "containerid"

    move/from16 v0, v24

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2040
    const-string v2, "requestid"

    invoke-virtual {v6, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    const/16 v30, 0x3f8

    const/16 v32, 0x1

    move/from16 v29, v24

    move-object/from16 v31, v6

    invoke-virtual/range {v27 .. v32}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 2044
    new-instance v38, Landroid/content/Intent;

    .end local v38    # "containerRemoved":Landroid/content/Intent;
    const-string v2, "enterprise.container.cancelled"

    move-object/from16 v0, v38

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2045
    .restart local v38    # "containerRemoved":Landroid/content/Intent;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container Cancelled intent Container id: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    const-string v2, "containerid"

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2047
    const-string v2, "requestid"

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2058
    .end local v4    # "requestId":I
    :goto_e80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v24

    invoke-virtual {v2, v0, v3, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 2061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v24

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 2064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "framework.pkgName.key"

    const-string v7, ""

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_28

    .line 2049
    :cond_ec8
    const-string v2, "containerid"

    move/from16 v0, v24

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    const/16 v30, 0x3eb

    const/16 v32, 0x1

    move/from16 v29, v24

    move-object/from16 v31, v6

    invoke-virtual/range {v27 .. v32}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 2053
    new-instance v38, Landroid/content/Intent;

    .end local v38    # "containerRemoved":Landroid/content/Intent;
    const-string v2, "enterprise.container.uninstalled"

    move-object/from16 v0, v38

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2054
    .restart local v38    # "containerRemoved":Landroid/content/Intent;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container removed intent Container id: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    const-string v2, "containerid"

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_e80

    .line 2070
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v24    # "cid":I
    .end local v38    # "containerRemoved":Landroid/content/Intent;
    .restart local v35    # "cid":I
    :pswitch_f10
    const-string v2, "EnterpriseContainerService"

    const-string v3, "handleMessage() ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 2072
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    const-string v2, "package_install_name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 2073
    .restart local v45    # "frameworkPackageList":Ljava/lang/String;
    if-eqz v45, :cond_f3c

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "framework.pkgName.key"

    move-object/from16 v0, v45

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2077
    :cond_f3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    move/from16 v0, v24

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v2, v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    .line 2079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v24

    invoke-virtual {v2, v0, v3, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 2081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    move/from16 v0, v24

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v2, v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3800(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_28

    .line 2089
    .end local v24    # "cid":I
    .end local v45    # "frameworkPackageList":Ljava/lang/String;
    .restart local v35    # "cid":I
    :pswitch_f6f
    const-string v2, "EnterpriseContainerService"

    const-string v3, "handleMessage() ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 2092
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v24

    invoke-virtual {v2, v0, v3, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 2094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    move/from16 v0, v24

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v2, v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3800(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_28

    .line 2098
    .end local v24    # "cid":I
    .restart local v35    # "cid":I
    :pswitch_fa7
    const-string v2, "EnterpriseContainerService"

    const-string v3, "handleMessage() ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 2102
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v24

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z
    invoke-static {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3900(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v2

    if-eqz v2, :cond_fea

    .line 2103
    new-instance v59, Landroid/content/Intent;

    const-string v2, "com.samsung.redex.proxy.activity.show_dialog"

    move-object/from16 v0, v59

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2104
    .local v59, "passwordExpired":Landroid/content/Intent;
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Password is expired. Fire a change password intent"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    const-string v2, "containerid"

    move-object/from16 v0, v59

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v59

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_28

    .line 2108
    .end local v59    # "passwordExpired":Landroid/content/Intent;
    :cond_fea
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    goto/16 :goto_28

    .line 2113
    .end local v24    # "cid":I
    .restart local v35    # "cid":I
    :pswitch_ff9
    const-string v2, "EnterpriseContainerService"

    const-string v3, "handleMessage() ENTERPRISE_CONTAINER_UNMOUNT_TIMEOUT"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 2116
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_HIBERNATE_UNMOUNT_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v24

    invoke-virtual {v2, v0, v3, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v66

    .line 2118
    .restart local v66    # "transitState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v66 .. v66}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_28

    .line 2119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    .line 2120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v24

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->killUnmountTimer(I)V
    invoke-static {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5200(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 2121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x2

    const/4 v7, 0x1

    move/from16 v0, v24

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v2, v0, v3, v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    goto/16 :goto_28

    .line 2126
    .end local v24    # "cid":I
    .end local v66    # "transitState":Lcom/sec/knox/container/constants/CSState;
    .restart local v35    # "cid":I
    :pswitch_1051
    const-string v2, "EnterpriseContainerService"

    const-string v3, "handleMessage() ENTERPRISE_CONTAINER_LOCK_TIMEOUT"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    const-string v2, "containerid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 2128
    .end local v35    # "cid":I
    .restart local v24    # "cid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->executeTimeout(I)V

    goto/16 :goto_28

    .line 1465
    nop

    :pswitch_data_1070
    .packed-switch 0x1
        :pswitch_98b
        :pswitch_b98
        :pswitch_d43
        :pswitch_df8
        :pswitch_f10
        :pswitch_f6f
        :pswitch_45
        :pswitch_42
        :pswitch_4f9
        :pswitch_477
        :pswitch_3c4
        :pswitch_373
        :pswitch_25f
        :pswitch_fa7
        :pswitch_1051
        :pswitch_ff9
    .end packed-switch
.end method

.method public mountSecondStorage(IIILjava/lang/String;Ljava/lang/String;)Z
    .registers 20
    .param p1, "state"    # I
    .param p2, "requestId"    # I
    .param p3, "containerId"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "ecryptfsKey"    # Ljava/lang/String;

    .prologue
    .line 2138
    const-string v2, "EnterpriseContainerService"

    const-string v3, "mountSecondStorage()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, p3

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPartition(I)Z
    invoke-static {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5300(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2141
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Error create container: sdcard directory"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const/4 v2, 0x0

    .line 2172
    :goto_19
    return v2

    .line 2145
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/storage/container/.sdcontainer_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2146
    .local v12, "sdSrcPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt_1/sdcard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2147
    .local v11, "sdMountPath":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2149
    .local v13, "srcSDPathFile":Ljava/io/File;
    if-eqz p5, :cond_86

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_86

    .line 2150
    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v7, 0x0

    move v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 2152
    .local v1, "callback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    .line 2153
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x2

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v5, p5

    move/from16 v8, p3

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_ba

    .line 2155
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Error create container: DirEncryptionManager secondary mount failed"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    const/4 v2, 0x0

    goto :goto_19

    .line 2161
    .end local v1    # "callback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    :cond_86
    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v6, 0x0

    move v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    .line 2163
    .restart local v1    # "callback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    .line 2164
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x2

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v5, p4

    move/from16 v8, p3

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_ba

    .line 2166
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Error create container: DirEncryptionManager secondary mount failed"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    const/4 v2, 0x0

    goto/16 :goto_19

    .line 2172
    :cond_ba
    const/4 v2, 0x1

    goto/16 :goto_19
.end method

.method public toString(I)V
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 1387
    packed-switch p1, :pswitch_data_9c

    .line 1442
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message parameter : Unknown return - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    :goto_1b
    return-void

    .line 1389
    :pswitch_1c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_PACKAGE_INSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1392
    :pswitch_24
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ALL_PACKAGES_INSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1396
    :pswitch_2c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_PACKAGE_UNINSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1399
    :pswitch_34
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ALL_PACKAGES_UNINSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1403
    :pswitch_3c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1407
    :pswitch_44
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1411
    :pswitch_4c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1414
    :pswitch_54
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_HANDLE_PASSWORD_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1418
    :pswitch_5c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_SETUP_FAILURE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1421
    :pswitch_64
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_REMOUNT_FAILURE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1424
    :pswitch_6c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_SETUP_SUCCESS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1427
    :pswitch_74
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_REMOUNT_SUCCESS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1430
    :pswitch_7c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1433
    :pswitch_84
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1436
    :pswitch_8c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_LOCK_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1439
    :pswitch_94
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_UNMOUNT_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1387
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_24
        :pswitch_2c
        :pswitch_34
        :pswitch_3c
        :pswitch_44
        :pswitch_4c
        :pswitch_54
        :pswitch_7c
        :pswitch_5c
        :pswitch_64
        :pswitch_6c
        :pswitch_74
        :pswitch_84
        :pswitch_8c
        :pswitch_94
    .end packed-switch
.end method
