.class Lcom/android/server/palmMotion/PalmMotionService$1;
.super Landroid/database/ContentObserver;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/palmMotion/PalmMotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/palmMotion/PalmMotionService;


# direct methods
.method constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    .line 721
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    invoke-static {v0}, Lcom/android/server/palmMotion/PalmMotionService;->access$1100(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/palmMotion/PalmMotionService;->access$300(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_motion_engine"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    .line 722
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    invoke-static {v0}, Lcom/android/server/palmMotion/PalmMotionService;->access$1100(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/palmMotion/PalmMotionService;->access$300(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_touch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 728
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    invoke-static {v0}, Lcom/android/server/palmMotion/PalmMotionService;->access$1100(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/palmMotion/PalmMotionService;->access$300(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_swipe"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    .line 729
    return-void
.end method
