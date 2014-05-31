.class final Lcom/android/server/pm/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsPrivileged:Z

.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZ)V
    .registers 6
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I
    .param p4, "isrom"    # Z
    .param p5, "isPrivileged"    # Z

    .prologue
    .line 8602
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8603
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 8604
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 8605
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 8606
    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsPrivileged:Z

    .line 8607
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 28
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 8610
    const/16 v24, 0x0

    .line 8611
    .local v24, "removedPackage":Ljava/lang/String;
    const/16 v23, -0x1

    .line 8612
    .local v23, "removedAppId":I
    const/4 v10, 0x0

    .line 8613
    .local v10, "removedUsers":[I
    const/4 v12, 0x0

    .line 8614
    .local v12, "addedPackage":Ljava/lang/String;
    const/16 v17, -0x1

    .line 8615
    .local v17, "addedAppId":I
    const/16 v16, 0x0

    .line 8618
    .local v16, "addedUsers":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9

    .line 8619
    const/16 v19, 0x0

    .line 8620
    .local v19, "fullPathStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 8621
    .local v3, "fullPath":Ljava/io/File;
    if-eqz p2, :cond_29

    .line 8622
    :try_start_16
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_39

    .line 8623
    .end local v3    # "fullPath":Ljava/io/File;
    .local v18, "fullPath":Ljava/io/File;
    :try_start_23
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_18c

    move-result-object v19

    move-object/from16 v3, v18

    .line 8629
    .end local v18    # "fullPath":Ljava/io/File;
    .restart local v3    # "fullPath":Ljava/io/File;
    :cond_29
    :try_start_29
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 8632
    monitor-exit v9

    .line 8725
    :cond_30
    :goto_30
    return-void

    .line 8637
    :cond_31
    # invokes: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$2100(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 8638
    monitor-exit v9

    goto :goto_30

    .line 8710
    :catchall_39
    move-exception v2

    :goto_3a
    monitor-exit v9
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_39

    throw v2

    .line 8640
    :cond_3c
    const/16 v20, 0x0

    .line 8641
    .local v20, "p":Landroid/content/pm/PackageParser$Package;
    const/16 v21, 0x0

    .line 8643
    .local v21, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_39

    .line 8644
    :try_start_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    .line 8645
    if-eqz v20, :cond_80

    .line 8646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v21, v0

    .line 8647
    if-eqz v21, :cond_173

    .line 8648
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v10

    .line 8653
    :cond_80
    :goto_80
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v16

    .line 8654
    monitor-exit v5
    :try_end_87
    .catchall {:try_start_47 .. :try_end_87} :catchall_17b

    .line 8655
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x248

    if-eqz v2, :cond_a5

    .line 8656
    if-eqz v21, :cond_a5

    .line 8658
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Lcom/android/server/pm/PackageSetting;Z)V

    .line 8659
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 8660
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v23, v0

    .line 8664
    :cond_a5
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x88

    if-eqz v2, :cond_12a

    .line 8665
    if-nez v20, :cond_12a

    .line 8667
    const/4 v4, 0x6

    .line 8668
    .local v4, "flags":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v2, :cond_be

    .line 8669
    or-int/lit8 v4, v4, 0x41

    .line 8671
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsPrivileged:Z

    if-eqz v2, :cond_be

    .line 8672
    or-int/lit16 v4, v4, 0x80

    .line 8675
    :cond_be
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v5, 0x65

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$2200(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 8678
    if-eqz v20, :cond_12a

    .line 8685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_d7
    .catchall {:try_start_8f .. :try_end_d7} :catchall_39

    .line 8686
    :try_start_d7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v20

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17e

    const/4 v2, 0x1

    :goto_ea
    move-object/from16 v0, v20

    # invokes: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V
    invoke-static {v6, v8, v0, v2}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V

    .line 8688
    monitor-exit v5
    :try_end_f0
    .catchall {:try_start_d7 .. :try_end_f0} :catchall_181

    .line 8689
    :try_start_f0
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 8690
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_ff
    .catchall {:try_start_f0 .. :try_end_ff} :catchall_39

    move-result v17

    .line 8693
    :try_start_100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 8696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2500()Landroid/content/IHarmonyEAS;

    move-result-object v2

    if-eqz v2, :cond_12a

    .line 8697
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2500()Landroid/content/IHarmonyEAS;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-interface {v2, v12, v5, v6}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V
    :try_end_12a
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_12a} :catch_184
    .catchall {:try_start_100 .. :try_end_12a} :catchall_39

    .line 8707
    .end local v4    # "flags":I
    :cond_12a
    :goto_12a
    :try_start_12a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_131
    .catchall {:try_start_12a .. :try_end_131} :catchall_39

    .line 8708
    :try_start_131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 8709
    monitor-exit v5
    :try_end_13b
    .catchall {:try_start_131 .. :try_end_13b} :catchall_189

    .line 8710
    :try_start_13b
    monitor-exit v9
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_39

    .line 8712
    if-eqz v24, :cond_15a

    .line 8713
    new-instance v7, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 8714
    .local v7, "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v23

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8715
    const-string v2, "android.intent.extra.DATA_REMOVED"

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8716
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, v24

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 8719
    .end local v7    # "extras":Landroid/os/Bundle;
    :cond_15a
    if-eqz v12, :cond_30

    .line 8720
    new-instance v7, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 8721
    .restart local v7    # "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v17

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8722
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v7

    invoke-static/range {v11 .. v16}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto/16 :goto_30

    .line 8650
    .end local v7    # "extras":Landroid/os/Bundle;
    :cond_173
    :try_start_173
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    goto/16 :goto_80

    .line 8654
    :catchall_17b
    move-exception v2

    monitor-exit v5
    :try_end_17d
    .catchall {:try_start_173 .. :try_end_17d} :catchall_17b

    :try_start_17d
    throw v2
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_39

    .line 8686
    .restart local v4    # "flags":I
    :cond_17e
    const/4 v2, 0x0

    goto/16 :goto_ea

    .line 8688
    :catchall_181
    move-exception v2

    :try_start_182
    monitor-exit v5
    :try_end_183
    .catchall {:try_start_182 .. :try_end_183} :catchall_181

    :try_start_183
    throw v2

    .line 8698
    :catch_184
    move-exception v22

    .line 8699
    .local v22, "rE":Landroid/os/RemoteException;
    invoke-virtual/range {v22 .. v22}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_188
    .catchall {:try_start_183 .. :try_end_188} :catchall_39

    goto :goto_12a

    .line 8709
    .end local v4    # "flags":I
    .end local v22    # "rE":Landroid/os/RemoteException;
    :catchall_189
    move-exception v2

    :try_start_18a
    monitor-exit v5
    :try_end_18b
    .catchall {:try_start_18a .. :try_end_18b} :catchall_189

    :try_start_18b
    throw v2
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_39

    .line 8710
    .end local v3    # "fullPath":Ljava/io/File;
    .end local v20    # "p":Landroid/content/pm/PackageParser$Package;
    .end local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "fullPath":Ljava/io/File;
    :catchall_18c
    move-exception v2

    move-object/from16 v3, v18

    .end local v18    # "fullPath":Ljava/io/File;
    .restart local v3    # "fullPath":Ljava/io/File;
    goto/16 :goto_3a
.end method
