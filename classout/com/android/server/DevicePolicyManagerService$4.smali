.class Lcom/android/server/DevicePolicyManagerService$4;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 3

    .prologue
    .line 2935
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$4;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2939
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$4;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 2940
    .local v1, "pm":Landroid/os/PersonaManager;
    if-eqz v1, :cond_44

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 2941
    const-string v2, "DevicePolicyManagerService"

    const-string/jumbo v3, "wipeDeviceOrUserLocked removing knox "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_42

    .line 2943
    :try_start_1e
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->removeContainer(I)I
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_23} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_42

    .line 2957
    .end local v1    # "pm":Landroid/os/PersonaManager;
    :goto_23
    return-void

    .line 2944
    .restart local v1    # "pm":Landroid/os/PersonaManager;
    :catch_24
    move-exception v0

    .line 2945
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_25
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException occured, cannot remove knox: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2953
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "pm":Landroid/os/PersonaManager;
    :catch_42
    move-exception v2

    goto :goto_23

    .line 2948
    .restart local v1    # "pm":Landroid/os/PersonaManager;
    :cond_44
    const-string v2, "DevicePolicyManagerService"

    const-string/jumbo v3, "wipeDeviceOrUserLocked removing user"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 2950
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$4;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_66} :catch_42

    goto :goto_23
.end method
