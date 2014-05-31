.class Lcom/android/server/am/AppPermissionManagedDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppPermissionManagedDialog.java"


# static fields
.field private static final CONTINUE:I = 0x0

.field private static final FORCE_QUIT:I = 0x1

.field private static final GETMSGBYAPP:I = 0x2

.field private static final LANCHSETTINGS:I = 0x3

.field private static final TYPE_APPSTART_WARNING:I = 0x0

.field private static final TYPE_PERMISSION_ERROR:I = 0x1


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCMAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogType:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageByApp:Ljava/lang/String;

.field private mPermission:Ljava/lang/String;

.field private mPermissions:[Ljava/lang/String;

.field private mProc:Lcom/android/server/am/ProcessRecord;

.field private mResource:Landroid/content/res/Resources;

.field private mResult:Lcom/android/server/am/AppErrorResult;

.field private mService:Landroid/app/ICMDialogMessageManager;

.field private mTitleByApp:Ljava/lang/String;

.field private newIntent:Landroid/content/Intent;

.field private serviceConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 57
    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 58
    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    .line 59
    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    .line 60
    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 61
    const-string v6, "Permission manager"

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 62
    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 63
    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 64
    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 67
    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 68
    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 71
    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    .line 72
    new-instance v6, Lcom/android/server/am/AppPermissionManagedDialog$1;

    invoke-direct {v6, p0}, Lcom/android/server/am/AppPermissionManagedDialog$1;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    .line 243
    new-instance v6, Lcom/android/server/am/AppPermissionManagedDialog$2;

    invoke-direct {v6, p0}, Lcom/android/server/am/AppPermissionManagedDialog$2;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    .line 154
    iput v9, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    .line 155
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 158
    iput-object p3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 159
    iput-object p2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 161
    const/4 v5, 0x0

    .line 163
    .local v5, "tmp_name":Ljava/lang/CharSequence;
    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ne v6, v9, :cond_ed

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "name":Ljava/lang/CharSequence;
    if-eqz v4, :cond_ed

    .line 165
    :try_start_51
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, p4, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PermissionInfo;->labelRes:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.capabilitymanager"

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 169
    .local v0, "CMInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_83} :catch_e2

    .line 192
    .end local v0    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    :goto_83
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x100

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const-string v7, "Error"

    invoke-virtual {v6, v7}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/AppPermissionManagedDialog;->setCancelable(Z)V

    .line 199
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "isChinaNal":Ljava/lang/String;
    if-eqz v3, :cond_12f

    const-string v6, "ChinaNalSecurity"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12f

    .line 202
    const/4 v6, -0x2

    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const/high16 v8, 0x1040000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/am/AppPermissionManagedDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 205
    iget-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v7, 0x1040ab9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v10, v6, v7}, Lcom/android/server/am/AppPermissionManagedDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 215
    :goto_d2
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessage()V

    .line 217
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.security.capabilitymanager.action.GET_DIALOGMESSAGE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "bindIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v6, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 219
    return-void

    .line 170
    .end local v1    # "bindIntent":Landroid/content/Intent;
    .end local v3    # "isChinaNal":Ljava/lang/String;
    :catch_e2
    move-exception v2

    .line 171
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 172
    const-string v6, "Permission manager"

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 173
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_83

    .line 176
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "name":Ljava/lang/CharSequence;
    :cond_ed
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 178
    .restart local v4    # "name":Ljava/lang/CharSequence;
    :try_start_ef
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, p4, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PermissionInfo;->labelRes:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.capabilitymanager"

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 182
    .restart local v0    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_121
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ef .. :try_end_121} :catch_123

    goto/16 :goto_83

    .line 184
    .end local v0    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    :catch_123
    move-exception v2

    .line 185
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 186
    const-string v6, "Permission manager"

    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 187
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_83

    .line 210
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "isChinaNal":Ljava/lang/String;
    :cond_12f
    iget-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v7, 0x1040707

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v10, v6, v7}, Lcom/android/server/am/AppPermissionManagedDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto :goto_d2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 57
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 58
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    .line 59
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    .line 60
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 61
    const-string v4, "Permission manager"

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 62
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 63
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 64
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 67
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 68
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 71
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    .line 72
    new-instance v4, Lcom/android/server/am/AppPermissionManagedDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/AppPermissionManagedDialog$1;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    .line 243
    new-instance v4, Lcom/android/server/am/AppPermissionManagedDialog$2;

    invoke-direct {v4, p0}, Lcom/android/server/am/AppPermissionManagedDialog$2;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    .line 107
    iput v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    .line 108
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 111
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 112
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    const-string v5, "sec_wdlg_newIntent_touch"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    :try_start_46
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPermissionAlertDialogEnableType()I

    move-result v4

    if-ne v4, v8, :cond_59

    .line 117
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p2}, Landroid/content/pm/IPackageManager;->updateManagedPermissionOfPackage(I[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_59} :catch_cd

    .line 122
    :cond_59
    :goto_59
    iput-object p4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 125
    :try_start_5b
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 126
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 128
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.capabilitymanager"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 129
    .local v0, "CMInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_95
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_95} :catch_d2

    .line 136
    .end local v0    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :goto_95
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string v5, "Warning"

    invoke-virtual {v4, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0, v7}, Lcom/android/server/am/AppPermissionManagedDialog;->setCancelable(Z)V

    .line 140
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/AppPermissionManagedDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 144
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessage()V

    .line 146
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.security.capabilitymanager.action.GET_DIALOGMESSAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "bindIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2, v4, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 148
    return-void

    .line 119
    .end local v2    # "bindIntent":Landroid/content/Intent;
    :catch_cd
    move-exception v3

    .line 120
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_59

    .line 131
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_d2
    move-exception v3

    .line 132
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 133
    const-string v4, "Permission manager"

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    goto :goto_95
.end method

.method static synthetic access$000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/app/ICMDialogMessageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/AppPermissionManagedDialog;Landroid/app/ICMDialogMessageManager;)Landroid/app/ICMDialogMessageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;
    .param p1, "x1"    # Landroid/app/ICMDialogMessageManager;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/AppPermissionManagedDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/AppPermissionManagedDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessageByApp()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/am/AppPermissionManagedDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/am/AppPermissionManagedDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppPermissionManagedDialog;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setTitleAndMessage()V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 223
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    :cond_12
    :goto_12
    return-void

    .line 226
    :cond_13
    iget v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    if-nez v0, :cond_47

    .line 227
    const-string v0, "Warning"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can be terminated suddenly. Because some of permission are managed by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nIf you want more detiled information, please go to the"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 229
    :cond_47
    iget v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 230
    const-string v0, "Error"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission error. Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is managed by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". If you want to be using this permission, please enable permission in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". The application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is terminated."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_12
.end method

.method private setTitleAndMessageByApp()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 238
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 241
    :cond_12
    return-void
.end method
