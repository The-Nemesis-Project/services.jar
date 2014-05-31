.class final Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;
.super Ljava/lang/Object;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/palmMotion/PalmMotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GestureSurfaceTouch"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "baseContext"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method


# virtual methods
.method public onInitSweep(I)Z
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public onPalm(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-nez v1, :cond_13

    .line 130
    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    .line 131
    :cond_13
    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v1, :cond_2a

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_2a
    :goto_2a
    const/4 v1, 0x0

    return v1

    .line 136
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2a
.end method

.method public onSweepDown(I)Z
    .registers 5
    .param p1, "direction"    # I

    .prologue
    .line 109
    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-nez v1, :cond_13

    .line 110
    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    .line 111
    :cond_13
    const/4 v1, 0x1

    if-ne p1, v1, :cond_28

    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v1, :cond_28

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWEEP_RIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_26
    :goto_26
    const/4 v1, 0x0

    return v1

    .line 114
    :cond_28
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3c

    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v1, :cond_3c

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWEEP_LEFT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_26

    .line 117
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_3c
    const/4 v1, 0x3

    if-ne p1, v1, :cond_26

    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v1, :cond_26

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWEEP_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_26
.end method
