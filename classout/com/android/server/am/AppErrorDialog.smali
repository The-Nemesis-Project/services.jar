.class Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_18

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_DisableForceClosePopup"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_18

    .line 53
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/AppErrorDialog;->DISMISS_TIMEOUT:J

    .line 57
    :goto_17
    return-void

    .line 55
    :cond_18
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/AppErrorDialog;->DISMISS_TIMEOUT:J

    goto :goto_17
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v6, Lcom/android/server/am/AppErrorDialog$2;

    invoke-direct {v6, p0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v6, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 62
    const-string v1, "-k -t -z -d -o /data/log/dumpstate_app_error"

    .line 81
    .local v1, "dumpCmd":Ljava/lang/String;
    const-string v6, "-k -t -z -d -o /data/log/dumpstate_app_error"

    invoke-static {v6}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 86
    .local v4, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 87
    iput-object p4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 88
    iput-object p3, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 90
    iget-object v6, p4, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-ne v6, v10, :cond_e7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "name":Ljava/lang/CharSequence;
    if-eqz v3, :cond_e7

    .line 92
    const v6, 0x1040618

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    :goto_4a
    invoke-virtual {p0, v9}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 104
    const/4 v6, -0x1

    const v7, 0x104061f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 108
    iget-object v6, p4, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v6, :cond_8a

    .line 110
    const/4 v5, 0x0

    .line 111
    .local v5, "rp":Landroid/app/enterprise/RestrictionPolicy;
    const-string v6, "enterprise_policy"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 113
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_71

    .line 114
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    .line 116
    :cond_71
    if-eqz v5, :cond_8a

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowed()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 118
    const/4 v6, -0x2

    const v7, 0x1040620

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 126
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v5    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_8a
    const v6, 0x1040617

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x40000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 129
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 131
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    iget-boolean v6, p4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v6, :cond_d9

    .line 133
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7da

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 137
    :cond_d9
    iget-object v6, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    sget-wide v8, Lcom/android/server/am/AppErrorDialog;->DISMISS_TIMEOUT:J

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 140
    return-void

    .line 96
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "name":Ljava/lang/CharSequence;
    :cond_e7
    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 97
    .restart local v3    # "name":Ljava/lang/CharSequence;
    const v6, 0x1040619

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_4a
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method


# virtual methods
.method getProcessName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method