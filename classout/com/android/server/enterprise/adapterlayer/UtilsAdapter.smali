.class public Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;
.super Ljava/lang/Object;
.source "UtilsAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
    .registers 3
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "fields"    # [Ljava/lang/String;
    .param p2, "outSizes"    # [J

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 48
    return-void
.end method

.method public static updateAccountManagerCache()V
    .registers 4

    .prologue
    .line 40
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    .line 41
    .local v0, "ams":Lcom/android/server/accounts/AccountManagerService;
    if-eqz v0, :cond_f

    .line 42
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    .line 44
    :cond_f
    return-void
.end method
