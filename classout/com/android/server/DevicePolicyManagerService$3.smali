.class Lcom/android/server/DevicePolicyManagerService$3;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->wipeDataLockedFor3LM(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;)V
    .registers 2

    .prologue
    .line 2856
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$3;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2859
    :try_start_0
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "RecoverySystem.rebootWipeUserData() start"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$3;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V

    .line 2861
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "RecoverySystem.rebootWipeUserData() end"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    .line 2865
    :goto_15
    return-void

    .line 2862
    :catch_16
    move-exception v0

    .line 2863
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "Failed requesting data wipe"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method
