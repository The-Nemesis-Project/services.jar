.class public Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskOrderInfo"
.end annotation


# instance fields
.field public stackId:I

.field public taskId:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 13540
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13541
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;->taskId:I

    .line 13542
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;->stackId:I

    .line 13543
    return-void
.end method
