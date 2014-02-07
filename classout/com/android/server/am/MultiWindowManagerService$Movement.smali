.class Lcom/android/server/am/MultiWindowManagerService$Movement;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Movement"
.end annotation


# instance fields
.field public movementX:F

.field public movementY:F

.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiWindowManagerService;FF)V
    .registers 5
    .param p2, "movementX"    # F
    .param p3, "movementY"    # F

    .prologue
    const/4 v0, 0x0

    .line 646
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$Movement;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    .line 644
    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    .line 647
    iput p2, p0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    .line 648
    iput p3, p0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    .line 649
    return-void
.end method
