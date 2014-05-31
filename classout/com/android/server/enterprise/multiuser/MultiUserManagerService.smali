.class public Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
.super Landroid/app/enterprise/multiuser/IMultiUserManager$Stub;
.source "MultiUserManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiUserManagerService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/enterprise/multiuser/IMultiUserManager$Stub;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 71
    iput-object p1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 73
    return-void
.end method

.method private enforceMultiUserManagementPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_MULTI_USER_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_MULTI_USER_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 80
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public allowMultipleUsers(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 131
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v17

    if-nez v17, :cond_d

    .line 132
    const/16 v17, -0x1

    .line 166
    :goto_c
    return v17

    .line 134
    :cond_d
    const/4 v11, 0x1

    .line 135
    .local v11, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    const-string v19, "MULTI_USER_MGMT"

    const-string v20, "multiUserAllowed"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    and-int v11, v11, v17

    .line 138
    if-eqz v11, :cond_d3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v17

    if-nez v17, :cond_d3

    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 140
    .local v14, "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "user"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    .line 141
    .local v16, "um":Landroid/os/UserManager;
    if-eqz v16, :cond_58

    .line 142
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/os/UserManager;->setGuestEnabled(Z)V

    .line 144
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "activity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 146
    .local v5, "am":Landroid/app/ActivityManager;
    const/16 v17, 0xc

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v10

    .line 148
    .local v10, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v12, "com.android.settings"

    .line 149
    .local v12, "settingsPkg":Ljava/lang/String;
    if-nez p2, :cond_d0

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_d0

    .line 150
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_84
    :goto_84
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 151
    .local v13, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v8, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 152
    .local v8, "origInt":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 153
    .local v6, "cmp":Landroid/content/ComponentName;
    if-eqz v6, :cond_84

    .line 154
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "packageName":Ljava/lang/String;
    const-string v17, "MultiUserManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "packageName "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-eqz v9, :cond_84

    const-string v17, "com.android.settings"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_84

    .line 158
    iget v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/app/ActivityManager;->removeTask(II)Z

    goto :goto_84

    .line 164
    .end local v6    # "cmp":Landroid/content/ComponentName;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "origInt":Landroid/content/Intent;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v13    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_d0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    .end local v5    # "am":Landroid/app/ActivityManager;
    .end local v10    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v12    # "settingsPkg":Ljava/lang/String;
    .end local v14    # "token":J
    .end local v16    # "um":Landroid/os/UserManager;
    :cond_d3
    if-eqz v11, :cond_d9

    const/16 v17, 0x1

    goto/16 :goto_c

    :cond_d9
    const/16 v17, 0x0

    goto/16 :goto_c
.end method

.method public allowUserCreation(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "ret":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 277
    iget-object v1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "MULTI_USER_MGMT"

    const-string v4, "multiUserCreationAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 281
    :cond_19
    return v0
.end method

.method public allowUserRemoval(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "ret":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 313
    iget-object v1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "MULTI_USER_MGMT"

    const-string v4, "multiUserRemovalAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 317
    :cond_19
    return v0
.end method

.method public createUser(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 190
    const/4 v3, -0x1

    .line 192
    .local v3, "userId":I
    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v5

    if-ne v5, v7, :cond_5c

    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 195
    .local v0, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 196
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_59

    .line 198
    invoke-virtual {v2}, Landroid/os/UserManager;->getUserCount()I

    move-result v5

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v6

    if-lt v5, v6, :cond_30

    .line 199
    const/4 v5, -0x1

    .line 221
    .end local v0    # "token":J
    .end local v2    # "um":Landroid/os/UserManager;
    :goto_2f
    return v5

    .line 203
    .restart local v0    # "token":J
    .restart local v2    # "um":Landroid/os/UserManager;
    :cond_30
    if-eqz p2, :cond_5e

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 205
    :goto_36
    const/4 v5, 0x4

    invoke-virtual {v2, p2, v5}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 206
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_59

    .line 207
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 210
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_59

    .line 212
    iget-object v5, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const v6, 0x10402d9

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-virtual {v2, v3, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 218
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "token":J
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_5c
    move v5, v3

    .line 221
    goto :goto_2f

    .line 203
    .restart local v0    # "token":J
    .restart local v2    # "um":Landroid/os/UserManager;
    :cond_5e
    const-string p2, ""

    goto :goto_36
.end method

.method public getUsers(Landroid/app/enterprise/ContextInfo;)[I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceMultiUserManagementPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 250
    const/4 v4, 0x0

    .line 252
    .local v4, "users":[I
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3b

    .line 253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 254
    .local v1, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 255
    .local v3, "um":Landroid/os/UserManager;
    if-eqz v3, :cond_38

    .line 256
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 257
    .local v6, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 258
    .local v5, "usersCount":I
    new-array v4, v5, [I

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    if-ge v0, v5, :cond_38

    .line 260
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    aput v7, v4, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 264
    .end local v0    # "i":I
    .end local v5    # "usersCount":I
    .end local v6    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    .end local v1    # "token":J
    .end local v3    # "um":Landroid/os/UserManager;
    :cond_3b
    return-object v4
.end method

.method public isUserCreationAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 287
    const/4 v0, 0x1

    .line 288
    .local v0, "ret":Z
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v4

    if-ne v4, v2, :cond_2b

    .line 289
    iget-object v4, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MULTI_USER_MGMT"

    const-string v6, "multiUserCreationAllowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 292
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    move v0, v2

    .line 299
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_1e
    if-eqz p2, :cond_28

    if-nez v0, :cond_28

    .line 300
    const v2, 0x10402d7

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 303
    :cond_28
    return v0

    .restart local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_29
    move v0, v3

    .line 292
    goto :goto_1e

    .line 295
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_2b
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isUserRemovalAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 323
    const/4 v0, 0x1

    .line 324
    .local v0, "ret":Z
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v4

    if-ne v4, v2, :cond_2b

    .line 325
    iget-object v4, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MULTI_USER_MGMT"

    const-string v6, "multiUserRemovalAllowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 328
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    move v0, v2

    .line 335
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_1e
    if-eqz p2, :cond_28

    if-nez v0, :cond_28

    .line 336
    const v2, 0x10402d8

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 339
    :cond_28
    return v0

    .restart local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_29
    move v0, v3

    .line 328
    goto :goto_1e

    .line 331
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_2b
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    if-nez v4, :cond_a

    .line 114
    const/4 v2, -0x1

    .line 125
    :cond_9
    :goto_9
    return v2

    .line 116
    :cond_a
    iget-object v4, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MULTI_USER_MGMT"

    const-string v6, "multiUserAllowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 119
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    move v0, v2

    .line 120
    .local v0, "ret":Z
    :goto_1f
    if-eqz p2, :cond_29

    if-nez v0, :cond_29

    .line 121
    const v4, 0x10402d6

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 125
    :cond_29
    if-nez v0, :cond_9

    move v2, v3

    goto :goto_9

    .end local v0    # "ret":Z
    :cond_2d
    move v0, v3

    .line 119
    goto :goto_1f
.end method

.method public multipleUsersSupported(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 107
    :goto_4
    return v1

    .line 105
    :catch_5
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Error;
    const-string v1, "MultiUserManagerService"

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 183
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 179
    return-void
.end method

.method public removeUser(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "ret":Z
    if-ltz p2, :cond_2d

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 235
    .local v1, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 236
    .local v3, "um":Landroid/os/UserManager;
    if-eqz v3, :cond_2a

    .line 237
    invoke-virtual {v3, p2}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v0

    .line 239
    :cond_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    .end local v1    # "token":J
    .end local v3    # "um":Landroid/os/UserManager;
    :cond_2d
    return v0
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method
