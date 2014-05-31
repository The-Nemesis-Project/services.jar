.class public Lcom/immersion/android/HapticFeedbackManagerProxy;
.super Ljava/lang/Object;
.source "HapticFeedbackManagerProxy.java"


# static fields
.field private static final INITIALIZATION_DELAY_MS:I = 0x32

.field public static final TAG:Ljava/lang/String; = "HapticFeedbackManager"

.field private static volatile sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;


# instance fields
.field private mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

.field private volatile mInitState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    .line 85
    return-void
.end method

.method static synthetic access$000()Lcom/immersion/android/HapticFeedbackManagerProxy;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/immersion/android/HapticFeedbackManagerProxy;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3
    .param p0, "x0"    # Lcom/immersion/android/HapticFeedbackManagerProxy;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Looper;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/HapticFeedbackManagerProxy;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/immersion/android/HapticFeedbackManagerProxy;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    move-object v4, p0

    .line 48
    .local v4, "theContext":Landroid/content/Context;
    sget-object v5, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    if-eqz v5, :cond_9

    .line 49
    sget-object v2, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    .line 80
    :goto_8
    return-object v2

    .line 51
    :cond_9
    const-class v6, Lcom/immersion/android/HapticFeedbackManagerProxy;

    monitor-enter v6

    .line 52
    :try_start_c
    sget-object v5, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    if-eqz v5, :cond_17

    .line 53
    sget-object v2, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    .line 77
    :goto_12
    monitor-exit v6

    goto :goto_8

    :catchall_14
    move-exception v5

    :goto_15
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v5

    .line 55
    :cond_17
    :try_start_17
    new-instance v3, Lcom/immersion/android/HapticFeedbackManagerProxy;

    invoke-direct {v3}, Lcom/immersion/android/HapticFeedbackManagerProxy;-><init>()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_14

    .line 56
    .end local v2    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    .local v3, "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    :try_start_1c
    sput-object v3, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    .line 59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-eqz v5, :cond_3b

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 63
    .local v1, "looper":Landroid/os/Looper;
    :goto_28
    if-eqz v1, :cond_40

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    .local v0, "handler":Landroid/os/Handler;
    :goto_2f
    new-instance v5, Lcom/immersion/android/HapticFeedbackManagerProxy$1;

    invoke-direct {v5, v4, v1}, Lcom/immersion/android/HapticFeedbackManagerProxy$1;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    const-wide/16 v7, 0x32

    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object v2, v3

    .end local v3    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    .restart local v2    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    goto :goto_12

    .line 59
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v2    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    .restart local v3    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    :cond_3b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_28

    .line 63
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_46

    goto :goto_2f

    .line 77
    .end local v1    # "looper":Landroid/os/Looper;
    :catchall_46
    move-exception v5

    move-object v2, v3

    .end local v3    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    .restart local v2    # "retVal":Lcom/immersion/android/HapticFeedbackManagerProxy;
    goto :goto_15
.end method

.method private initialize(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x1

    .line 88
    iput v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    .line 90
    :try_start_3
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackManager;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/immersion/android/haptics/HapticFeedbackManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_f

    .line 96
    const/4 v1, 0x2

    iput v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    .line 97
    :goto_e
    return-void

    .line 91
    :catch_f
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method


# virtual methods
.method public performHapticFeedback(IILandroid/view/View;)Z
    .registers 9
    .param p1, "effectId"    # I
    .param p2, "flags"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 104
    iget v3, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_18

    .line 105
    const-string v3, "HapticFeedbackManager"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 106
    const-string v3, "HapticFeedbackManager"

    const-string v4, "Trying to call performHapticFeedback(...) on non initialized proxy."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move v1, v2

    .line 122
    :goto_17
    return v1

    .line 111
    :cond_18
    const/4 v1, 0x0

    .line 113
    .local v1, "retVal":Z
    if-eqz p3, :cond_27

    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_27

    :try_start_1f
    invoke-virtual {p3}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v3

    if-nez v3, :cond_27

    .line 115
    const/4 v1, 0x0

    goto :goto_17

    .line 117
    :cond_27
    iget-object v3, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_2e

    const/4 v2, 0x1

    :cond_2e
    invoke-virtual {v3, p1, v2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(IZ)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_31} :catch_33

    move-result v1

    goto :goto_17

    .line 119
    :catch_33
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public performHapticFeedback(ILandroid/view/View;)Z
    .registers 4
    .param p1, "effectId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/immersion/android/HapticFeedbackManagerProxy;->performHapticFeedback(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method
