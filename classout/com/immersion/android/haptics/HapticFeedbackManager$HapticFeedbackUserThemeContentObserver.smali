.class public Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/android/haptics/HapticFeedbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HapticFeedbackUserThemeContentObserver"
.end annotation


# instance fields
.field protected mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

.field final synthetic this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;


# direct methods
.method public constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V
    .registers 5
    .param p2, "owner"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 643
    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$000(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/os/Handler;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$000(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_11
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 644
    iput-object p2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 645
    return-void

    .line 643
    :cond_1a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_11
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 650
    :try_start_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 652
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 653
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. onChange() --> Active theme was changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_30
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z
    invoke-static {v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$200(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 658
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 663
    :cond_3d
    :goto_3d
    return-void

    .line 660
    :catch_3e
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in onChange()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d
.end method
