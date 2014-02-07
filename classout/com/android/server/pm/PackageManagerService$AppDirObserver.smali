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
.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V
    .registers 5
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I
    .param p4, "isrom"    # Z

    .prologue
    .line 7730
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7731
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 7732
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 7733
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 7734
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 27
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 7737
    const/16 v23, 0x0

    .line 7738
    .local v23, "removedPackage":Ljava/lang/String;
    const/16 v22, -0x1

    .line 7739
    .local v22, "removedAppId":I
    const/4 v9, 0x0

    .line 7740
    .local v9, "removedUsers":[I
    const/4 v11, 0x0

    .line 7741
    .local v11, "addedPackage":Ljava/lang/String;
    const/16 v16, -0x1

    .line 7742
    .local v16, "addedAppId":I
    const/4 v15, 0x0

    .line 7745
    .local v15, "addedUsers":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v10

    .line 7746
    const/16 v18, 0x0

    .line 7747
    .local v18, "fullPathStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 7748
    .local v3, "fullPath":Ljava/io/File;
    if-eqz p2, :cond_28

    .line 7749
    :try_start_15
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_38

    .line 7750
    .end local v3    # "fullPath":Ljava/io/File;
    .local v17, "fullPath":Ljava/io/File;
    :try_start_22
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1af

    move-result-object v18

    move-object/from16 v3, v17

    .line 7756
    .end local v17    # "fullPath":Ljava/io/File;
    .restart local v3    # "fullPath":Ljava/io/File;
    :cond_28
    :try_start_28
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 7759
    monitor-exit v10

    .line 7860
    :cond_2f
    :goto_2f
    return-void

    .line 7764
    :cond_30
    # invokes: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/PackageManagerService;->access$1400(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 7765
    monitor-exit v10

    goto :goto_2f

    .line 7845
    :catchall_38
    move-exception v2

    :goto_39
    monitor-exit v10
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_38

    throw v2

    .line 7767
    :cond_3b
    const/16 v19, 0x0

    .line 7768
    .local v19, "p":Landroid/content/pm/PackageParser$Package;
    const/16 v20, 0x0

    .line 7770
    .local v20, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_38

    .line 7771
    :try_start_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object/from16 v19, v0

    .line 7772
    if-eqz v19, :cond_7f

    .line 7773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v20, v0

    .line 7774
    if-eqz v20, :cond_d3

    .line 7775
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v9

    .line 7780
    :cond_7f
    :goto_7f
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v15

    .line 7781
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_46 .. :try_end_86} :catchall_da

    .line 7782
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x248

    if-eqz v2, :cond_a4

    .line 7783
    if-eqz v20, :cond_a4

    .line 7785
    :try_start_8e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Lcom/android/server/pm/PackageSetting;Z)V

    .line 7786
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 7787
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v22, v0

    .line 7791
    :cond_a4
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x88

    if-eqz v2, :cond_155

    .line 7792
    if-nez v19, :cond_155

    .line 7796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->isAppBlockedByDPM(Ljava/io/File;Ljava/lang/String;ZI)Z
    invoke-static {v2, v3, v4, v5, v7}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 7800
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 7802
    monitor-exit v10
    :try_end_d1
    .catchall {:try_start_8e .. :try_end_d1} :catchall_38

    goto/16 :goto_2f

    .line 7777
    :cond_d3
    :try_start_d3
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v9

    goto :goto_7f

    .line 7781
    :catchall_da
    move-exception v2

    monitor-exit v4
    :try_end_dc
    .catchall {:try_start_d3 .. :try_end_dc} :catchall_da

    :try_start_dc
    throw v2

    .line 7806
    :cond_dd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v4, :cond_19e

    const/16 v4, 0x41

    :goto_e9
    or-int/lit8 v4, v4, 0x2

    or-int/lit8 v4, v4, 0x4

    const/16 v5, 0x61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 7813
    if-eqz v19, :cond_155

    .line 7820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_102
    .catchall {:try_start_dc .. :try_end_102} :catchall_38

    .line 7821
    :try_start_102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a1

    const/4 v2, 0x1

    :goto_115
    move-object/from16 v0, v19

    # invokes: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V
    invoke-static {v5, v7, v0, v2}, Lcom/android/server/pm/PackageManagerService;->access$1700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V

    .line 7823
    monitor-exit v4
    :try_end_11b
    .catchall {:try_start_102 .. :try_end_11b} :catchall_1a4

    .line 7824
    :try_start_11b
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7825
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_12a
    .catchall {:try_start_11b .. :try_end_12a} :catchall_38

    move-result v16

    .line 7828
    :try_start_12b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 7831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_155

    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1900()Landroid/content/IHarmonyEAS;

    move-result-object v2

    if-eqz v2, :cond_155

    .line 7832
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1900()Landroid/content/IHarmonyEAS;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-interface {v2, v11, v4, v5}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_12b .. :try_end_155} :catch_1a7
    .catchall {:try_start_12b .. :try_end_155} :catchall_38

    .line 7842
    :cond_155
    :goto_155
    :try_start_155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_15c
    .catchall {:try_start_155 .. :try_end_15c} :catchall_38

    .line 7843
    :try_start_15c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 7844
    monitor-exit v4
    :try_end_166
    .catchall {:try_start_15c .. :try_end_166} :catchall_1ac

    .line 7845
    :try_start_166
    monitor-exit v10
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_38

    .line 7847
    if-eqz v23, :cond_185

    .line 7848
    new-instance v6, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 7849
    .local v6, "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v22

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7850
    const-string v2, "android.intent.extra.DATA_REMOVED"

    const/4 v4, 0x0

    invoke-virtual {v6, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7851
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, v23

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 7854
    .end local v6    # "extras":Landroid/os/Bundle;
    :cond_185
    if-eqz v11, :cond_2f

    .line 7855
    new-instance v6, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 7856
    .restart local v6    # "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v16

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7857
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v12, v6

    invoke-static/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto/16 :goto_2f

    .line 7806
    .end local v6    # "extras":Landroid/os/Bundle;
    :cond_19e
    const/4 v4, 0x0

    goto/16 :goto_e9

    .line 7821
    :cond_1a1
    const/4 v2, 0x0

    goto/16 :goto_115

    .line 7823
    :catchall_1a4
    move-exception v2

    :try_start_1a5
    monitor-exit v4
    :try_end_1a6
    .catchall {:try_start_1a5 .. :try_end_1a6} :catchall_1a4

    :try_start_1a6
    throw v2

    .line 7833
    :catch_1a7
    move-exception v21

    .line 7834
    .local v21, "rE":Landroid/os/RemoteException;
    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1ab
    .catchall {:try_start_1a6 .. :try_end_1ab} :catchall_38

    goto :goto_155

    .line 7844
    .end local v21    # "rE":Landroid/os/RemoteException;
    :catchall_1ac
    move-exception v2

    :try_start_1ad
    monitor-exit v4
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_1ac

    :try_start_1ae
    throw v2
    :try_end_1af
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_38

    .line 7845
    .end local v3    # "fullPath":Ljava/io/File;
    .end local v19    # "p":Landroid/content/pm/PackageParser$Package;
    .end local v20    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "fullPath":Ljava/io/File;
    :catchall_1af
    move-exception v2

    move-object/from16 v3, v17

    .end local v17    # "fullPath":Ljava/io/File;
    .restart local v3    # "fullPath":Ljava/io/File;
    goto/16 :goto_39
.end method
