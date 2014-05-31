.class Lcom/android/server/DirEncryptService;
.super Landroid/os/storage/IDirEncryptService$Stub;
.source "DirEncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
    }
.end annotation


# static fields
.field private static final DIR_ENCRYPTION:Z

.field private static final ENCRYPT_TAG:Ljava/lang/String; = "DirEncryptConnector"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final REQUESTER_DM:Ljava/lang/String; = "dm"

.field private static final REQUESTER_USER:Ljava/lang/String; = "user"

.field private static final REQUESTER_USER_ENC_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SDCARD_ENC_STATUS_ACTIVITY:Ljava/lang/String; = "android.app.action.SDCARD_ENCRYPTION_STATUS"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"


# instance fields
.field private final ENCRYPT:I

.field private final PRESCAN_FULL_ERR:I

.field private final RESPONSE_BASE:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHelper:Lcom/android/server/DirEncryptServiceHelper;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReady:Z

.field private mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 89
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    .line 90
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    .line 99
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Landroid/os/storage/IDirEncryptService$Stub;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    .line 106
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 107
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 109
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 110
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 116
    const/16 v0, 0x2a8

    iput v0, p0, Lcom/android/server/DirEncryptService;->RESPONSE_BASE:I

    .line 117
    const/16 v0, 0x2ab

    iput v0, p0, Lcom/android/server/DirEncryptService;->ENCRYPT:I

    .line 118
    const/16 v0, 0x2ae

    iput v0, p0, Lcom/android/server/DirEncryptService;->PRESCAN_FULL_ERR:I

    .line 222
    new-instance v0, Lcom/android/server/DirEncryptService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$2;-><init>(Lcom/android/server/DirEncryptService;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    const-string v0, "ctor DirEncryptService....."

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 187
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-object v0
.end method

.method private authByUid(I)Z
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 252
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 254
    .local v0, "myUID":I
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_e

    .line 255
    const/4 v1, 0x1

    .line 258
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private doCallerAndFeatureAvailablityCheck()I
    .registers 3

    .prologue
    .line 484
    sget-boolean v1, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v1, :cond_7

    .line 485
    const/16 v1, 0xc8

    .line 494
    :goto_6
    return v1

    .line 488
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 489
    .local v0, "requester":I
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 490
    const-string v1, "Invalid requester"

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 491
    const/16 v1, 0xcc

    goto :goto_6

    .line 494
    :cond_19
    const/16 v1, 0xd

    goto :goto_6
.end method

.method private doCheckBeforeEncryption(Ljava/lang/String;)I
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xd

    .line 512
    invoke-direct {p0}, Lcom/android/server/DirEncryptService;->doCallerAndFeatureAvailablityCheck()I

    move-result v0

    .line 513
    .local v0, "result":I
    if-eq v0, v1, :cond_9

    .line 520
    .end local v0    # "result":I
    :goto_8
    return v0

    .line 516
    .restart local v0    # "result":I
    :cond_9
    if-nez p1, :cond_13

    .line 517
    const-string v1, "missing password..."

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 518
    const/16 v0, 0xcb

    goto :goto_8

    :cond_13
    move v0, v1

    .line 520
    goto :goto_8
.end method

.method private findRequester(I)Ljava/lang/String;
    .registers 7
    .param p1, "uidApp"    # I

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 263
    .local v1, "myUID":I
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "callingPackageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name uidApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name myUID  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 268
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_65

    .line 269
    :cond_5e
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    .line 303
    :goto_64
    return-object v3

    .line 273
    :cond_65
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-eqz v3, :cond_75

    .line 274
    const-string v3, "REQUESTER_UNKNOWN..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 275
    const-string v3, ""

    goto :goto_64

    .line 278
    :cond_75
    if-eq v1, p1, :cond_7e

    .line 279
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    .line 280
    goto :goto_64

    .line 283
    :cond_7e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 284
    .local v2, "pid":I
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->getCallingProcessPkg(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 288
    if-nez v0, :cond_bc

    .line 290
    const-string v3, "Calling package name is null..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 291
    const-string v3, ""

    goto :goto_64

    .line 294
    :cond_bc
    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 295
    const-string v3, "REQUESTER_USER..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v3, "user"

    goto :goto_64

    .line 302
    :cond_cd
    const-string v3, "REQUESTER_DM..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 303
    const-string v3, "dm"

    goto :goto_64
.end method

.method private getCallingProcessPkg(I)Ljava/lang/String;
    .registers 8
    .param p1, "pid"    # I

    .prologue
    .line 237
    const/4 v4, 0x0

    .line 238
    .local v4, "result":Ljava/lang/String;
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 240
    .local v0, "am":Lcom/android/server/am/ActivityManagerService;
    if-eqz v0, :cond_26

    .line 241
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 242
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 243
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_13

    .line 244
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_13

    .line 248
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_26
    return-object v4
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 762
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 764
    :cond_10
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .registers 9

    .prologue
    .line 659
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 660
    .local v0, "appUid":I
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 662
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 666
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .line 667
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 668
    .local v2, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v0, :cond_15

    .line 669
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContainerId UID matched"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "UID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 670
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 674
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_49
    if-eqz v3, :cond_62

    .line 676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContainerId packageName --"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 681
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_61
    return-object v3

    .line 679
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_62
    const-string v6, "getContainerId packageName is null"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 681
    const/4 v3, 0x0

    goto :goto_61
.end method

.method public static logD(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_9
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_9
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method


# virtual methods
.method public changeEcryptfsPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;I)I
    .registers 24
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "mountPoint"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    .param p5, "containerId"    # I

    .prologue
    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DirEncryptService;->enforceEnterpriseMountUnmountEcryptfsPermission()I

    .line 717
    const-string v2, "Service: changeEcryptfsPassword"

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 718
    invoke-direct/range {p0 .. p1}, Lcom/android/server/DirEncryptService;->doCheckBeforeEncryption(Ljava/lang/String;)I

    move-result v14

    .line 719
    .local v14, "checkResult":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service: changeEcryptfsPassword with password doCheckBeforeEncryption checkResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 720
    const/16 v2, 0xd

    if-eq v14, v2, :cond_27

    .line 729
    .end local v14    # "checkResult":I
    :goto_26
    return v14

    .line 722
    .restart local v14    # "checkResult":I
    :cond_27
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptService;->doCheckBeforeEncryption(Ljava/lang/String;)I

    move-result v15

    .line 723
    .local v15, "checkResultForNewPassword":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service: changeEcryptfsPassword with password doCheckBeforeEncryption checkResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 724
    const/16 v2, 0xd

    if-eq v15, v2, :cond_4b

    move v14, v15

    goto :goto_26

    .line 726
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    new-instance v2, Lcom/android/server/EcryptfsMountParams;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p1

    move/from16 v9, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p2

    invoke-direct/range {v2 .. v13}, Lcom/android/server/EcryptfsMountParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 729
    const/16 v14, 0xd

    goto :goto_26
.end method

.method public encryptStorage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptStorage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 561
    sget-boolean v6, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v6, :cond_1d

    .line 562
    const/16 v2, 0xc8

    .line 601
    :goto_1c
    return v2

    .line 565
    :cond_1d
    if-nez p2, :cond_27

    .line 566
    const-string v6, "missing password..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 567
    const/16 v2, 0xcb

    goto :goto_1c

    .line 571
    :cond_27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 572
    .local v1, "requester":I
    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v6

    if-nez v6, :cond_39

    .line 573
    const-string v6, "Invalid requester"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 574
    const/16 v2, 0xcc

    goto :goto_1c

    .line 577
    :cond_39
    const/16 v2, 0xc9

    .line 578
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 580
    .local v4, "token":J
    new-instance v0, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 581
    .local v0, "dew":Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, "state":Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 584
    const/4 v2, 0x0

    .line 585
    const-string v6, "SD card mounted, need unmount..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 586
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 587
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 588
    const/16 v2, 0xd

    .line 600
    :goto_69
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    .line 589
    :cond_6d
    const-string v6, "checking"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 590
    const-string v6, "SD card ready, need encrypt cycle..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 591
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 592
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 593
    const/16 v2, 0xd

    goto :goto_69

    .line 596
    :cond_8c
    const-string v6, "SD card not mounted, so not applying policies this time"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 597
    const/16 v2, 0xca

    goto :goto_69
.end method

.method public enforceEnterpriseMountUnmountEcryptfsPermission()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/android/server/DirEncryptService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.ENTERPRISE_MOUNT_UNMOUNT_ENCRYPT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 752
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getAdditionalSpaceRequired()I
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getAdditionalSpaceRequired()I

    move-result v0

    return v0
.end method

.method public getCurrentStatus()I
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getLastError()I

    move-result v0

    return v0
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 6

    .prologue
    .line 770
    const/4 v0, 0x0

    .line 772
    .local v0, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    sget-boolean v4, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v4, :cond_7

    move-object v1, v0

    .line 785
    .end local v0    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v1, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :goto_6
    return-object v1

    .line 775
    .end local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v0    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 777
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 778
    const-string v4, "EncPrefs found"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 779
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 784
    :goto_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, v0

    .line 785
    .end local v0    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    goto :goto_6

    .line 781
    .end local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v0    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_23
    const-string v4, "EncPrefs not found"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public isPathMounted(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;)I
    .registers 17
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->enforceEnterpriseMountUnmountEcryptfsPermission()I

    .line 743
    const-string v0, "Service: isPathMounted"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 744
    iget-object v12, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/16 v13, 0x9

    new-instance v0, Lcom/android/server/EcryptfsMountParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p1

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/android/server/EcryptfsMountParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;Ljava/lang/String;I)V

    invoke-virtual {v12, v13, v0}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 747
    const/16 v0, 0xd

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .registers 5

    .prologue
    .line 435
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_6

    .line 436
    const/4 v0, 0x0

    .line 445
    :goto_5
    return v0

    .line 438
    :cond_6
    const/4 v0, 0x0

    .line 439
    .local v0, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 441
    .local v1, "token":J
    const-string v3, "isStorageCardEncryptionPoliciesApplied....."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 442
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    .line 444
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5
.end method

.method public mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I
    .registers 26
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "mountPath"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "mountAndEncrypt"    # Z
    .param p5, "excludeMediaTypes"    # I
    .param p6, "containerId"    # I
    .param p7, "state"    # I
    .param p8, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .prologue
    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DirEncryptService;->enforceEnterpriseMountUnmountEcryptfsPermission()I

    .line 623
    const-string v2, "Service: mountEcryptfsStorage with password"

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptService;->doCheckBeforeEncryption(Ljava/lang/String;)I

    move-result v14

    .line 625
    .local v14, "checkResult":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service: mountEcryptfsStorage with password doCheckBeforeEncryption checkResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 626
    const/16 v2, 0xd

    if-eq v14, v2, :cond_2b

    .line 632
    .end local v14    # "checkResult":I
    :goto_2a
    return v14

    .line 628
    .restart local v14    # "checkResult":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/16 v16, 0x6

    new-instance v2, Lcom/android/server/EcryptfsMountParams;

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v13}, Lcom/android/server/EcryptfsMountParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;Ljava/lang/String;I)V

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 632
    const/16 v14, 0xd

    goto :goto_2a
.end method

.method public onDaemonConnected()V
    .registers 2

    .prologue
    .line 145
    const-string v0, " onDaemonConnected ::"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 147
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEventcode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " raw: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cooked "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 153
    const/16 v1, 0x2ae

    if-ne p1, v1, :cond_4d

    .line 154
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Encrypting storage card failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_42
    :goto_42
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    new-instance v2, Lcom/android/server/DirEncryptService$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/DirEncryptService$1;-><init>(Lcom/android/server/DirEncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return v0

    .line 156
    :cond_4d
    const/16 v1, 0x2ab

    if-ne p1, v1, :cond_42

    .line 157
    const/4 v1, 0x3

    aget-object v7, p3, v1

    .line 158
    .local v7, "status":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 160
    .local v6, "reqEnc":I
    const-string/jumbo v1, "success"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 161
    if-ne v6, v0, :cond_7a

    .line 162
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Encrypting storage card succeeded"

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 165
    :cond_7a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Decrypting storage card succeeded"

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 169
    :cond_8e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Encrypting storage card failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 310
    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .registers 3
    .param p1, "in"    # Z

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->setNeedToCreateKey(Z)V

    .line 790
    return-void
.end method

.method public setNullSDCardPassword()I
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 531
    const/4 v1, 0x0

    .line 532
    .local v1, "instMountService":Landroid/os/storage/IMountService;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 534
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_b

    .line 549
    :goto_a
    return v3

    .line 537
    :cond_b
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 539
    if-eqz v1, :cond_22

    .line 540
    :try_start_11
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iget-object v4, v4, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->setNullSDCardPassword(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_1a

    move-result v3

    goto :goto_a

    .line 542
    :catch_1a
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DirEncryptService"

    const-string v5, "Error while setting null password for sdcard."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    const-string v4, "Can\'t set nullpassword!"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public setPassword(Ljava/lang/String;)I
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 449
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_7

    .line 450
    const/16 v3, 0xc8

    .line 465
    :goto_6
    return v3

    .line 453
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 454
    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 456
    .local v1, "token":J
    const-string v3, "setPassword....."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 459
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 464
    :goto_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    const/16 v3, 0xd

    goto :goto_6

    .line 461
    :cond_2a
    const-string v3, "setPassword error: invalid uid"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .registers 20
    .param p1, "encType"    # I
    .param p2, "fullEnc"    # I
    .param p3, "excludeMediaFiles"    # I

    .prologue
    .line 317
    const/16 v13, 0xc8

    .line 318
    .local v13, "result":I
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_36

    .line 320
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_21

    .line 321
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Encrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_1f
    move v3, v13

    .line 431
    :goto_20
    return v3

    .line 324
    :cond_21
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 331
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStorageCardEncryption: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    .line 333
    const/4 v3, 0x2

    move/from16 v0, p1

    if-eq v0, v3, :cond_98

    const/4 v3, 0x3

    move/from16 v0, p1

    if-eq v0, v3, :cond_98

    .line 335
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v3, v13

    .line 338
    goto :goto_20

    .line 340
    :cond_98
    const/4 v3, 0x4

    move/from16 v0, p2

    if-eq v0, v3, :cond_d3

    const/4 v3, 0x5

    move/from16 v0, p2

    if-eq v0, v3, :cond_d3

    .line 342
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_be

    .line 343
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Encrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_bb
    move v3, v13

    .line 350
    goto/16 :goto_20

    .line 346
    :cond_be
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    .line 352
    :cond_d3
    const/4 v3, 0x4

    move/from16 v0, p2

    if-ne v0, v3, :cond_f4

    const/4 v3, 0x2

    move/from16 v0, p1

    if-eq v0, v3, :cond_f4

    .line 354
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v3, v13

    .line 357
    goto/16 :goto_20

    .line 359
    :cond_f4
    const/4 v3, 0x6

    move/from16 v0, p3

    if-eq v0, v3, :cond_12f

    const/4 v3, 0x7

    move/from16 v0, p3

    if-eq v0, v3, :cond_12f

    .line 361
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_11a

    .line 362
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Encrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_117
    move v3, v13

    .line 369
    goto/16 :goto_20

    .line 365
    :cond_11a
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_117

    .line 372
    :cond_12f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 376
    :try_start_134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object v12

    .line 377
    .local v12, "requester":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 379
    .local v14, "token":J
    new-instance v10, Landroid/dirEncryption/SDCardEncryptionPolicies;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v10, v0, v1, v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 380
    .local v10, "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v11

    .line 382
    .local v11, "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 383
    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_16e

    .line 384
    const/4 v3, 0x2

    iput v3, v10, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 385
    const/4 v3, 0x4

    iput v3, v10, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 388
    :cond_16e
    invoke-virtual {v11, v10}, Landroid/dirEncryption/SDCardEncryptionPolicies;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e1

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v3

    if-eqz v3, :cond_18b

    .line 390
    const-string v3, "Cannot save the policy if SD card is being encrypted/decrypted"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    .line 391
    const/16 v3, 0xf

    monitor-exit v4

    goto/16 :goto_20

    .line 429
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v11    # "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v12    # "requester":Ljava/lang/String;
    .end local v14    # "token":J
    :catchall_188
    move-exception v3

    monitor-exit v4
    :try_end_18a
    .catchall {:try_start_134 .. :try_end_18a} :catchall_188

    throw v3

    .line 394
    .restart local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v10    # "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v11    # "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v12    # "requester":Ljava/lang/String;
    .restart local v14    # "token":J
    :cond_18b
    :try_start_18b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called by: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    .line 395
    const-string/jumbo v3, "user"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v3

    if-eqz v3, :cond_1c0

    .line 398
    const/16 v13, 0x8

    .line 400
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 428
    :goto_1b9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 429
    monitor-exit v4

    move v3, v13

    .line 431
    goto/16 :goto_20

    .line 402
    :cond_1c0
    const/16 v13, 0x9

    goto :goto_1b9

    .line 410
    :cond_1c3
    iget v3, v10, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1db

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 413
    const/16 v13, 0x8

    .line 415
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    goto :goto_1b9

    .line 417
    :cond_1d8
    const/16 v13, 0x9

    goto :goto_1b9

    .line 420
    :cond_1db
    const-string v3, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    goto :goto_1b9

    .line 425
    :cond_1e1
    const-string v3, "Policy has already been saved."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V
    :try_end_1e6
    .catchall {:try_start_18b .. :try_end_1e6} :catchall_188

    .line 426
    const/16 v13, 0xa

    goto :goto_1b9
.end method

.method public systemReady()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 191
    const-string v0, "DirEncryptService"

    const-string v1, "Calling systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-boolean v0, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v0, :cond_d

    .line 220
    :goto_c
    return-void

    .line 196
    :cond_d
    new-instance v6, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 198
    .local v6, "dew":Landroid/dirEncryption/DirEncryptionWrapper;
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 199
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 204
    :try_start_32
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "dir_enc_report"

    const/16 v3, 0x1f4

    const-string v4, "DirEncryptConnector"

    const/16 v5, 0xa0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 205
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "DirEncryptConnector"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 206
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 208
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DirEncryptService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 209
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 210
    new-instance v0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;-><init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 212
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_72} :catch_78

    .line 219
    .end local v8    # "thread":Ljava/lang/Thread;
    :goto_72
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->registerStorageEventListener()Z

    goto :goto_c

    .line 214
    :catch_78
    move-exception v7

    .line 215
    .local v7, "ex":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeDaemonConnector exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    goto :goto_72
.end method

.method public unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I
    .registers 19
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    .param p3, "uninstallOrStop"    # I
    .param p4, "containerId"    # I

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->enforceEnterpriseMountUnmountEcryptfsPermission()I

    .line 697
    const-string v0, "Service: unmountEcryptfsStorage"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 698
    iget-object v12, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v13, 0x7

    new-instance v0, Lcom/android/server/EcryptfsMountParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move/from16 v7, p4

    move-object/from16 v9, p2

    move/from16 v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/server/EcryptfsMountParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;Ljava/lang/String;I)V

    invoke-virtual {v12, v13, v0}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 702
    const/16 v0, 0xd

    return v0
.end method

.method public unmountSDCardByAdmin()V
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCardByAdmin()V

    .line 527
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 314
    return-void
.end method
